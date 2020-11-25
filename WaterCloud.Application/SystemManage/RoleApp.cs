﻿/*******************************************************************************
 * Copyright © 2020 WaterCloud.Framework 版权所有
 * Author: WaterCloud
 * Description: WaterCloud快速开发平台
 * Website：
*********************************************************************************/
using WaterCloud.Code;
using WaterCloud.Entity.SystemManage;
using WaterCloud.Domain.IRepository.SystemManage;
using WaterCloud.Repository.SystemManage;
using System.Collections.Generic;
using System.Linq;
using System;

namespace WaterCloud.Application.SystemManage
{
    public class RoleApp
    {
        private IUserRepository userservice = new UserRepository();
        private IRoleRepository service = new RoleRepository();
        private ModuleApp moduleApp = new ModuleApp();
        private ModuleButtonApp moduleButtonApp = new ModuleButtonApp();
        /// <summary>
        /// 缓存操作类
        /// </summary>
        private ICache redisCache = CacheFactory.CaChe();
        private string cacheKey = "watercloud_roledata_";
        private string authorizecacheKey = "watercloud_authorizeurldata_";// +权限

        public List<RoleEntity> GetList( string keyword = "")
        {
            var cachedata = service.CheckCacheList(cacheKey + "list", CacheId.role);
            if (!string.IsNullOrEmpty(keyword))
            {
                cachedata = cachedata.Where(t => t.F_FullName.Contains(keyword) || t.F_EnCode.Contains(keyword)).ToList();
            }
            return cachedata.Where(t => t.F_Category == 1).ToList();
        }
        public List<RoleEntity> GetList(Pagination pagination, string keyword = "")
        {
            var expression = ExtLinq.True<RoleEntity>();
            if (!string.IsNullOrEmpty(keyword))
            {
                expression = expression.And(t => t.F_FullName.Contains(keyword));
                expression = expression.Or(t => t.F_EnCode.Contains(keyword));
            }
            expression = expression.And(t => t.F_Category == 1);
            return service.FindList(expression, pagination);
        }
        public RoleEntity GetForm(string keyValue)
        {
            var cachedata = service.CheckCache(cacheKey, keyValue, CacheId.role);
            return cachedata;
        }

        public void DeleteForm(string keyValue)
        {
            if (userservice.IQueryable(a => a.F_RoleId == keyValue).Count() > 0 )
            {
                throw new Exception("角色使用中，无法删除");
            }
            service.DeleteForm(keyValue);
            redisCache.Remove(cacheKey + keyValue, CacheId.role);
            redisCache.Remove(cacheKey + "list", CacheId.role);
            redisCache.Remove(authorizecacheKey + "list", CacheId.authorize);
            redisCache.Remove(authorizecacheKey + "authorize_list", CacheId.authorize);
        }
        public void SubmitForm(RoleEntity roleEntity, string[] permissionIds, string keyValue)
        {
            if (!string.IsNullOrEmpty(keyValue))
            {
                roleEntity.F_Id = keyValue;

            }
            else
            {
                roleEntity.Create();

            }
            var moduledata = moduleApp.GetList();
            var buttondata = moduleButtonApp.GetList();
            List<RoleAuthorizeEntity> roleAuthorizeEntitys = new List<RoleAuthorizeEntity>();
            foreach (var itemId in permissionIds)
            {
                RoleAuthorizeEntity roleAuthorizeEntity = new RoleAuthorizeEntity();
                roleAuthorizeEntity.F_Id = Utils.GuId();
                roleAuthorizeEntity.F_ObjectType = 1;
                roleAuthorizeEntity.F_ObjectId = roleEntity.F_Id;
                roleAuthorizeEntity.F_ItemId = itemId;
                if (moduledata.Find(t => t.F_Id == itemId) != null)
                {
                    roleAuthorizeEntity.F_ItemType = 1;
                }
                if (buttondata.Find(t => t.F_Id == itemId) != null)
                {
                    roleAuthorizeEntity.F_ItemType = 2;
                }
                roleAuthorizeEntitys.Add(roleAuthorizeEntity);
            }
            service.SubmitForm(roleEntity, roleAuthorizeEntitys, keyValue);
            redisCache.Remove(cacheKey + keyValue, CacheId.role);
            redisCache.Remove(cacheKey + "list", CacheId.role);
            redisCache.Remove(authorizecacheKey + "list", CacheId.authorize);
            redisCache.Remove(authorizecacheKey + "authorize_list", CacheId.authorize);
        }
    }
}
