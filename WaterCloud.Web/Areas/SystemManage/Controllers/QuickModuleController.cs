﻿/*******************************************************************************
 * Copyright © 2020 WaterCloud.Framework 版权所有
 * Author: WaterCloud
 * Description: WaterCloud快速开发平台
 * Website：
*********************************************************************************/
using WaterCloud.Service.SystemManage;
using WaterCloud.Code;
using WaterCloud.Domain.SystemManage;
using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Serenity;
using System.Threading.Tasks;

namespace WaterCloud.Web.Areas.SystemManage.Controllers
{
    [Area("SystemManage")]
    public class QuickModuleController : Controller
    {
        private readonly QuickModuleService _moduleService;
        public QuickModuleController(QuickModuleService moduleService)
        {
            _moduleService = moduleService;
        }
        [HttpGet]
        public virtual ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        [HandlerAjaxOnly]
        public async Task<ActionResult> GetTransferJson()
        {
            var userId = OperatorProvider.Provider.GetCurrent().UserId;
            var data =await _moduleService.GetTransferList(userId);
            return Content(data.ToJson());
        }
        [HttpPost]
        [HandlerAjaxOnly]
        public async Task<ActionResult> SubmitForm(string permissionIds)
        {
            await _moduleService.SubmitForm(permissionIds.Split(','));
            return Content(new AjaxResult { state = ResultType.success.ToString(), message = "操作成功" }.ToJson());
        }
    }
}
