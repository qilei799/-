﻿/*******************************************************************************
 * Copyright © 2020 WaterCloud.Framework 版权所有
 * Author: WaterCloud
 * Description: WaterCloud快速开发平台
 * Website：
*********************************************************************************/
using WaterCloud.Service.SystemSecurity;
using WaterCloud.Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace WaterCloud.Web.Areas.SystemSecurity.Controllers
{
    [Area("SystemSecurity")]
    public class LogController : ControllerBase
    {
        private readonly LogService _logService;
        public LogController(LogService logService)
        {
            _logService = logService;
        }

        [HttpGet]
        public ActionResult RemoveLog()
        {
            return View();
        }
        [HttpGet]
        [HandlerAjaxOnly]
        public async Task<ActionResult> GetGridJson(Pagination pagination, string keyword,int timetype=2)
        {
            pagination.order = "desc";
            pagination.sort = "F_CreatorTime";
            var data =await _logService.GetLookList(pagination, timetype, keyword);
            return Success(pagination.records, data);
        }
        [HttpPost]
        [HandlerAjaxOnly]
        [HandlerAuthorize]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> SubmitRemoveLog(string keepTime)
        {
            await _logService.RemoveLog(keepTime);
            return Success("清空成功。");
        }
    }
}
