﻿/*******************************************************************************
 * Copyright © 2020 WaterCloud.Framework 版权所有
 * Author: WaterCloud
 * Description: WaterCloud快速开发平台
 * Website：
*********************************************************************************/
using WaterCloud.DataBase;
using WaterCloud.Domain.SystemManage;
using System.Collections.Generic;
using System;
using System.Threading.Tasks;

namespace WaterCloud.Repository.SystemManage
{
    public class ModuleRepository : RepositoryBase<ModuleEntity>, IModuleRepository
    {
        private string ConnectStr;
        private string providerName;
        public ModuleRepository()
        {
        }
        public ModuleRepository(string ConnectStr, string providerName)
            : base(ConnectStr, providerName)
        {
            this.ConnectStr = ConnectStr;
            this.providerName = providerName;
        }

        public async Task CreateModuleCode(ModuleEntity entity, List<ModuleButtonEntity> buttonlist, List<ModuleFieldsEntity> fieldsList)
        {
            using (var db = new RepositoryBase(ConnectStr, providerName).BeginTrans())
            {
                await db.Insert(entity);
                await db.Insert(buttonlist);
                if (fieldsList.Count>0)
                {
                    await db.Insert(fieldsList);
                }
                db.Commit();
            }
        }

        public async Task DeleteForm(string keyValue)
        {
            using (var db = new RepositoryBase(ConnectStr, providerName).BeginTrans())
            {
                await db.Delete<ModuleEntity>(a=>a.F_Id== keyValue);
                await db.Delete<ModuleButtonEntity>(a=>a.F_ModuleId== keyValue);
                db.Commit();
            }
        }

        public async Task<List<ModuleEntity>> GetListByRole(string roleid)
        {
            using (var db = new RepositoryBase(ConnectStr, providerName))
            {
                var moduleList = db.IQueryable<RoleAuthorizeEntity>(a => a.F_ObjectId == roleid && a.F_ItemType == 1).Select(a => a.F_ItemId).ToList();
                var query = db.IQueryable<ModuleEntity>().Where(a => moduleList.Contains(a.F_Id) && a.F_EnabledMark == true);
                var result = query.OrderBy(a => a.F_SortCode).ToList();
                return result;
            }
        }
    }
}
