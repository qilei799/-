﻿using Quartz;
using Quartz.Spi;
using System;
using System.Collections.Generic;
using System.Text;

namespace WaterCloud.Service.AutoJob
{
    /// <summary>
    /// 依赖注入必须，代替原本的SimpleJobFactory
    /// </summary>
    public class IOCJobFactory : IJobFactory
    {
        private readonly IServiceProvider _serviceProvider;
        public IOCJobFactory(IServiceProvider serviceProvider)
        {
            _serviceProvider = serviceProvider;
        }
        public IJob NewJob(TriggerFiredBundle bundle, IScheduler scheduler)
        {
            return _serviceProvider.GetService(bundle.JobDetail.JobType) as IJob;

        }

        public void ReturnJob(IJob job)
        {
            var disposable = job as IDisposable;
            disposable?.Dispose();

        }
    }
}
