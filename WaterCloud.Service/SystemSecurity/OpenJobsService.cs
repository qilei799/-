/*******************************************************************************
 * Copyright © 2020 WaterCloud.Framework 版权所有
 * Author: WaterCloud
 * Description: WaterCloud快速开发平台
 * Website：
*********************************************************************************/
using WaterCloud.Code;
using WaterCloud.Domain.SystemSecurity;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using WaterCloud.Service.SystemManage;
using System.Linq;
using Quartz;
using WaterCloud.Service.AutoJob;
using Chloe;
using Quartz.Spi;
using WaterCloud.DataBase;

namespace WaterCloud.Service.SystemSecurity
{
    public class OpenJobsService : IDenpendency
    {
        private IRepositoryBase<OpenJobEntity> repository;
        private IRepositoryBase uniwork;
        private IScheduler _scheduler;
        /// <summary>
        /// 缓存操作类
        /// </summary>

        private string cacheKey = "watercloud_openjob_";// IP过滤
        //获取类名
        private string className = System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.FullName.Split('.')[3];
        public OpenJobsService(IDbContext context,ISchedulerFactory schedulerFactory, IJobFactory iocJobfactory)
        {
            repository = new RepositoryBase<OpenJobEntity>(context);
            uniwork = new RepositoryBase(context);
            _scheduler =schedulerFactory.GetScheduler().Result;
            _scheduler.JobFactory = iocJobfactory;
        }
        /// <summary>
        /// 加载列表
        /// </summary>
        public async Task<List<OpenJobEntity>> GetLookList(Pagination pagination, string keyword = "")
        {
            //获取数据权限
            var list = repository.IQueryable() ;
            if (!string.IsNullOrEmpty(keyword))
            {
                list = list.Where(u => u.F_JobName.Contains(keyword) || u.F_Description.Contains(keyword));
            }
            list = list.Where(u => u.F_DeleteMark == false);
            return await repository.OrderList(list, pagination);
        }
        public async Task<List<OpenJobEntity>> GetList(string keyword = "")
        {
            var cachedata = await repository.CheckCacheList(cacheKey+"list");
            if (!string.IsNullOrEmpty(keyword))
            {
                cachedata = cachedata.Where(t => t.F_JobName.Contains(keyword)).ToList();
            }
            return cachedata.Where(a => a.F_DeleteMark == false).ToList();
        }
        public async Task<OpenJobEntity> GetForm(string keyValue)
        {
            var cachedata = await repository.CheckCache(cacheKey, keyValue);
            return cachedata;
        }
        public async Task<OpenJobEntity> GetLookForm(string keyValue)
        {
            var cachedata = await repository.CheckCache(cacheKey, keyValue);
            return cachedata;
        }
        public async Task SubmitForm(OpenJobEntity entity, string keyValue)
        {
            if (!string.IsNullOrEmpty(keyValue))
            {
                entity.Modify(keyValue);
                await repository.Update(entity);
                await CacheHelper.Remove(cacheKey + keyValue);
                await CacheHelper.Remove(cacheKey + "list");
            }
            else
            {
                entity.Create();
                await repository.Insert(entity);
            }
            await CacheHelper.Remove(cacheKey + "list");
        }
        public async Task DeleteForm(string keyValue)
        {
            await repository.Delete(t => t.F_Id == keyValue);
            await CacheHelper.Remove(cacheKey + keyValue);
            await CacheHelper.Remove(cacheKey + "list");
        }

        public async Task UpdataLastRuntime(string keyValue)
        {
            await repository.Update(t => t.F_Id == keyValue,a=>new OpenJobEntity { 
               F_LastRunTime=DateTime.Now           
            });
            await CacheHelper.Remove(cacheKey + keyValue);
            await CacheHelper.Remove(cacheKey + "list");
        }
        #region 定时任务运行相关操作

        /// <summary>
        /// 返回系统的job接口
        /// </summary>
        /// <returns></returns>
        public List<string> QueryLocalHandlers()
        {
            var types = AppDomain.CurrentDomain.GetAssemblies()
                .SelectMany(a => a.GetTypes().Where(t => t.GetInterfaces()
                    .Contains(typeof(IJobTask))))
                .ToArray();
            return types.Select(u => u.FullName).ToList();
        }

        public async Task ChangeJobStatus(string keyValue, int status)
        {
            var job = await repository.FindEntity(u => u.F_Id == keyValue);
            if (job == null)
            {
                throw new Exception("任务不存在");
            }
            if (status == 0) //停止
            {
                TriggerKey triggerKey = new TriggerKey(job.F_JobName, job.F_JobGroup);
                // 停止触发器
                await _scheduler.PauseTrigger(triggerKey);
                // 移除触发器
                await _scheduler.UnscheduleJob(triggerKey);
                // 删除任务
                await _scheduler.DeleteJob(new JobKey(job.F_JobName, job.F_JobGroup));
                job.F_EnabledMark = false;
                job.F_EndRunTime = DateTime.Now;
            }
            else  //启动
            {
                DateTimeOffset starRunTime = DateBuilder.NextGivenSecondDate(job.F_StarRunTime, 1);
                DateTimeOffset endRunTime = DateBuilder.NextGivenSecondDate(DateTime.MaxValue.AddDays(-1), 1);
                IJobDetail jobdetail = JobBuilder.Create<JobExecute>().WithIdentity(job.F_JobName, job.F_JobGroup).Build();
                jobdetail.JobDataMap.Add("F_Id", job.F_Id);
                ITrigger trigger = TriggerBuilder.Create()
                                                 .StartAt(starRunTime)
                                                 .EndAt(endRunTime)
                                                 .WithIdentity(job.F_JobName, job.F_JobGroup)
                                                 .WithCronSchedule(job.F_CronExpress)
                                                 .Build();
                await _scheduler.ScheduleJob(jobdetail, trigger);
                job.F_EnabledMark = true;
                job.F_StarRunTime = DateTime.Now;
            }
            job.Modify(job.F_Id);
            await repository.Update(job);
            await CacheHelper.Remove(cacheKey + keyValue);
            await CacheHelper.Remove(cacheKey + "list");
        }
        #endregion
    }
}
