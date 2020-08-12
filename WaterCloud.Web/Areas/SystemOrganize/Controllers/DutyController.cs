﻿/*******************************************************************************
 * Copyright © 2020 WaterCloud.Framework 版权所有
 * Author: WaterCloud
 * Description: WaterCloud快速开发平台
 * Website：
*********************************************************************************/
using WaterCloud.Service.SystemOrganize;
using WaterCloud.Code;
using WaterCloud.Domain.SystemOrganize;
using System.Linq;
using WaterCloud.Domain.SystemSecurity;
using WaterCloud.Service;
using WaterCloud.Service.SystemSecurity;
using System;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;
using Serenity;
using System.IO;
using Newtonsoft.Json;
using System.Net.Http.Headers;
using NPOI.HSSF.UserModel;
using NPOI.SS.UserModel;
using System.Collections.Generic;

namespace WaterCloud.Web.Areas.SystemOrganize.Controllers
{
    [Area("SystemOrganize")]
    public class DutyController : ControllerBase
    {
        private string className = System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.FullName.Split('.')[5];
        public DutyService _service { get; set; }
        public LogService _logService { get; set; }
        public SystemSetService _setService { get; set; }
        public virtual ActionResult Import()
        {
            return View();
        }
        [HttpGet]
        [HandlerAjaxOnly]
        public async Task<ActionResult> GetGridJson(Pagination pagination, string keyword)
        {
            pagination.order = "asc";
            pagination.sort = "F_EnCode asc";
            var data =await _service.GetLookList(pagination,keyword);
            return Success(pagination.records, data);
        }
        [HttpGet]
        [HandlerAjaxOnly]
        public async Task<ActionResult> GetListJson(string keyword)
        {
            var data =await _service.GetList(keyword);
            return Content(data.ToJson());
        }
        [HttpGet]
        [HandlerAjaxOnly]
        public async Task<ActionResult> GetFormJson(string keyValue)
        {
            var data =await _service.GetLookForm(keyValue);
            return Content(data.ToJson());
        }
        [HttpPost]
        [HandlerAjaxOnly]
        public async Task<ActionResult> CheckFile()
        {
            try
            {
                //获取文件参数，创建临时文件，使用完成就删除
                var files = HttpContext.Request.Form.Files;
                long size = files.Sum(f => f.Length);
                if (size > 104857600)
                {
                    throw new Exception("文件大小必须小于100M");
                }
                var file = files.FirstOrDefault();
                var fileName = ContentDispositionHeaderValue.Parse(file.ContentDisposition).FileName.Trim('"');
                if (string.IsNullOrEmpty(fileName))
                {
                    throw new Exception("文件不存在");
                }
                if (!FileHelper.IsExcel(fileName))
                {
                    throw new Exception("请上传Excel");
                }
                string filePath = GlobalContext.HostingEnvironment.WebRootPath + $@"/" + "file" + $@"/";
                fileName = DateTime.Now.ToString("yyyyMMdd_HHmmss") + fileName.Substring(fileName.LastIndexOf("."));
                string fileFullName = filePath + fileName;
                if (!Directory.Exists(filePath))
                {
                    Directory.CreateDirectory(filePath);
                }
                using (FileStream fs = System.IO.File.Create(fileFullName))
                {
                    file.CopyTo(fs);
                    fs.Flush();
                }
                var data = await _service.CheckFile(fileFullName);
                return Content(new { code = 0, msg = "操作成功", data = data }.ToJson());
            }
            catch (Exception ex)
            {
                return Content(new { code = 400, msg = "操作失败," + ex.Message }.ToJson());
            }
        }
        [HttpPost]
        [HandlerAjaxOnly]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> SubmitForm(RoleEntity roleEntity, string keyValue)
        {
            LogEntity logEntity;
            if (string.IsNullOrEmpty(keyValue))
            {
                roleEntity.F_DeleteMark = false;
                roleEntity.F_AllowEdit = false;
                roleEntity.F_AllowDelete = false;
                logEntity = await _logService.CreateLog(className, DbLogType.Create.ToString());
                logEntity.F_Description += DbLogType.Create.ToDescription();
            }
            else
            {
                logEntity = await _logService.CreateLog(className, DbLogType.Update.ToString());
                logEntity.F_Description += DbLogType.Update.ToDescription();
                logEntity.F_KeyValue = keyValue;
            }
            try
            {
                logEntity.F_Account = _service.currentuser.UserCode;
                logEntity.F_NickName = _service.currentuser.UserName;
                await _service.SubmitForm(roleEntity, keyValue);
                logEntity.F_Description += "操作成功";
                await _logService.WriteDbLog(logEntity);
                return Success("操作成功。");
            }
            catch (Exception ex)
            {
                logEntity.F_Result = false;
                logEntity.F_Description += "操作失败，" + ex.Message;
                await _logService.WriteDbLog(logEntity);
                return Error(ex.Message);
            }
        }
        [HttpPost]
        [HandlerAjaxOnly]
        [ServiceFilter(typeof(HandlerAuthorizeAttribute))]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteForm(string keyValue)
        {
            LogEntity logEntity = await _logService.CreateLog(className, DbLogType.Delete.ToString()); 
            logEntity.F_Description += DbLogType.Delete.ToDescription();
            try
            {
                logEntity.F_Account = _service.currentuser.UserCode;
                logEntity.F_NickName = _service.currentuser.UserName;
                await _service.DeleteForm(keyValue);
                logEntity.F_Description += "操作成功";
                await _logService.WriteDbLog(logEntity);
                return Success("操作成功。");
            }
            catch (Exception ex)
            {
                logEntity.F_Result = false;
                logEntity.F_Description += "操作失败，" + ex.Message;
                await _logService.WriteDbLog(logEntity);
                return Error(ex.Message);
            }
        }
        [HttpPost]
        [HandlerAjaxOnly]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> ImportForm(string listData)
        {
            LogEntity logEntity;
            logEntity = await _logService.CreateLog(className, DbLogType.Create.ToString());
            logEntity.F_Description += DbLogType.Create.ToDescription();
            var filterList = JsonConvert.DeserializeObject<List<RoleEntity>>(listData);
            if (filterList == null || filterList.Count == 0)
            {
                return Error("导入数据不存在!");
            }
            if (filterList.Where(a => a.F_EnabledMark == false).Count() > 0)
            {
                return Error("导入数据存在错误!");
            }
            try
            {
                logEntity.F_Account = _service.currentuser.UserCode;
                logEntity.F_NickName = _service.currentuser.UserName;
                await _service.ImportForm(filterList);
                logEntity.F_Description += "操作成功";
                await _logService.WriteDbLog(logEntity);
                return Success("操作成功。");
            }
            catch (Exception ex)
            {
                logEntity.F_Result = false;
                logEntity.F_Description += "操作失败，" + ex.Message;
                await _logService.WriteDbLog(logEntity);
                return Error(ex.Message);
            }
        }
        [HttpGet]
        public async Task<FileResult> Download()
        {
            string fileName = "岗位导入模板.xlsx";
            string fileValue = "model";
            string filePath = GlobalContext.HostingEnvironment.WebRootPath + $@"/" + fileValue + $@"/" + fileName;
            if (!FileHelper.IsExistFile(filePath))
            {
                throw new Exception("文件不存在");
            }
            ///定义并实例化一个内存流，以存放图片的字节数组。
            MemoryStream ms = new MemoryStream();
            ///图片读入FileStream
            FileStream f = new FileStream(filePath, FileMode.Open);
            ///把FileStream写入MemoryStream
            ms.SetLength(f.Length);
            f.Read(ms.GetBuffer(), 0, (int)f.Length);
            ms.Flush();
            f.Close();
            var contentType = MimeMapping.GetMimeMapping(fileName);
            return File(ms, contentType, fileName);
        }
        [HttpGet]
        public async Task<FileResult> Export(string keyword = "")
        {
            var list = await _service.GetList(keyword);
            #region NPOI
            HSSFWorkbook book = new HSSFWorkbook();
            //添加一个sheet
            ISheet sheet1 = book.CreateSheet("Sheet1");

            //给sheet1添加第一行的头部标题

            IRow row1 = sheet1.CreateRow(0);
            row1.CreateCell(0).SetCellValue("序号");
            row1.CreateCell(1).SetCellValue("岗位编号");
            row1.CreateCell(2).SetCellValue("岗位名称");
            row1.CreateCell(3).SetCellValue("归属公司");
            row1.CreateCell(4).SetCellValue("有效状态");
            row1.CreateCell(5).SetCellValue("创建时间");
            row1.CreateCell(6).SetCellValue("备注");
            //将数据逐步写入sheet1各个行
            for (int i = 0; i < list.Count; i++)
            {
                IRow rowtemp = sheet1.CreateRow(i + 1);
                rowtemp.CreateCell(0).SetCellValue((i + 1).ToString());
                rowtemp.CreateCell(1).SetCellValue(list[i].F_EnCode != null ? list[i].F_EnCode.ToString() : "");
                rowtemp.CreateCell(2).SetCellValue(list[i].F_FullName != null ? list[i].F_FullName.ToString() : "");
                var set=await _setService.GetForm(_service.currentuser.CompanyId);
                rowtemp.CreateCell(3).SetCellValue(set != null ? set.F_CompanyName : "");
                rowtemp.CreateCell(4).SetCellValue(list[i].F_EnabledMark == true ? "有效" : "无效");
                rowtemp.CreateCell(5).SetCellValue(list[i].F_CreatorTime != null ? list[i].F_CreatorTime.ToString() : "");
                rowtemp.CreateCell(6).SetCellValue(list[i].F_Description != null ? list[i].F_Description.ToString() : "");
            }
            System.IO.MemoryStream ms = new System.IO.MemoryStream();
            book.Write(ms);
            ms.Seek(0, SeekOrigin.Begin);
            string filename = "岗位信息" + DateTime.Now.ToString("yyyyMMdd_HHmmss") + ".xls";
            var contentType = MimeMapping.GetMimeMapping(filename);
            #endregion

            return File(ms, contentType, filename);
        }
    }
}
