USE [master]
GO
/****** Object:  Database [WaterCloudNetDb]    Script Date: 08/12/2020 11:36:21 ******/
CREATE DATABASE [WaterCloudNetDb] ON  PRIMARY 
( NAME = N'WaterCloudNetDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\WaterCloudNetDb.mdf' , SIZE = 12288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WaterCloudNetDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\WaterCloudNetDb_log.ldf' , SIZE = 3136KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WaterCloudNetDb] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WaterCloudNetDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WaterCloudNetDb] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET ANSI_NULLS OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET ANSI_PADDING OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET ARITHABORT OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [WaterCloudNetDb] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [WaterCloudNetDb] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [WaterCloudNetDb] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET  DISABLE_BROKER
GO
ALTER DATABASE [WaterCloudNetDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [WaterCloudNetDb] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [WaterCloudNetDb] SET  READ_WRITE
GO
ALTER DATABASE [WaterCloudNetDb] SET RECOVERY FULL
GO
ALTER DATABASE [WaterCloudNetDb] SET  MULTI_USER
GO
ALTER DATABASE [WaterCloudNetDb] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [WaterCloudNetDb] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'WaterCloudNetDb', N'ON'
GO
USE [WaterCloudNetDb]
GO
/****** Object:  Default [dbo].[sqlguid]    Script Date: 08/12/2020 11:36:21 ******/
/****** Object:  Default [dbo].[sqlguid]    Script Date: 2018-04-14 15:19:55 ******/
CREATE DEFAULT [dbo].[sqlguid] 
AS
newid()
GO
/****** Object:  UserDefinedDataType [dbo].[PrimaryKey]    Script Date: 08/12/2020 11:36:21 ******/
CREATE TYPE [dbo].[PrimaryKey] FROM [varchar](50) NULL
GO
/****** Object:  Table [dbo].[sys_userlogon]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_userlogon](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_UserId] [nvarchar](50) NULL,
	[F_UserPassword] [nvarchar](50) NULL,
	[F_UserSecretkey] [nvarchar](50) NULL,
	[F_AllowStartTime] [datetime2](7) NULL,
	[F_AllowEndTime] [datetime2](7) NULL,
	[F_LockStartDate] [datetime2](7) NULL,
	[F_LockEndDate] [datetime2](7) NULL,
	[F_FirstVisitTime] [datetime2](7) NULL,
	[F_PreviousVisitTime] [datetime2](7) NULL,
	[F_LastVisitTime] [datetime2](7) NULL,
	[F_ChangePasswordDate] [datetime2](7) NULL,
	[F_MultiUserLogin] [tinyint] NULL,
	[F_LogOnCount] [int] NULL,
	[F_UserOnLine] [tinyint] NULL,
	[F_Question] [nvarchar](50) NULL,
	[F_AnswerQuestion] [nvarchar](500) NULL,
	[F_CheckIPAddress] [tinyint] NULL,
	[F_Language] [nvarchar](50) NULL,
	[F_Theme] [nvarchar](50) NULL,
	[F_LoginSession] [nvarchar](100) NULL,
	[F_ErrorNum] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_user]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_user](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_Account] [nvarchar](50) NULL,
	[F_RealName] [nvarchar](50) NULL,
	[F_NickName] [nvarchar](50) NULL,
	[F_HeadIcon] [nvarchar](50) NULL,
	[F_Gender] [tinyint] NULL,
	[F_Birthday] [datetime2](7) NULL,
	[F_MobilePhone] [nvarchar](20) NULL,
	[F_Email] [nvarchar](50) NULL,
	[F_WeChat] [nvarchar](50) NULL,
	[F_ManagerId] [nvarchar](50) NULL,
	[F_SecurityLevel] [int] NULL,
	[F_Signature] [nvarchar](500) NULL,
	[F_OrganizeId] [nvarchar](50) NULL,
	[F_DepartmentId] [nvarchar](500) NULL,
	[F_RoleId] [nvarchar](500) NULL,
	[F_DutyId] [nvarchar](500) NULL,
	[F_IsAdmin] [tinyint] NULL,
	[F_IsBoss] [tinyint] NULL,
	[F_IsLeaderInDepts] [tinyint] NULL,
	[F_IsSenior] [tinyint] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [tinyint] NULL,
	[F_EnabledMark] [tinyint] NULL,
	[F_Description] [nvarchar](500) NULL,
	[F_CreatorTime] [datetime2](7) NULL,
	[F_CreatorUserId] [nvarchar](50) NULL,
	[F_LastModifyTime] [datetime2](7) NULL,
	[F_LastModifyUserId] [nvarchar](50) NULL,
	[F_DeleteTime] [datetime2](7) NULL,
	[F_DeleteUserId] [nvarchar](500) NULL,
	[F_DingTalkUserId] [nvarchar](50) NULL,
	[F_DingTalkUserName] [nvarchar](50) NULL,
	[F_DingTalkAvatar] [nvarchar](100) NULL,
	[F_WxOpenId] [nvarchar](50) NULL,
	[F_WxNickName] [nvarchar](50) NULL,
	[F_HeadImgUrl] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Sys_User] ON [dbo].[sys_user] 
(
	[F_Account] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'唯一键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user', @level2type=N'INDEX',@level2name=N'IX_Sys_User'
GO
/****** Object:  Table [dbo].[sys_systemset]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_systemset](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_Logo] [nvarchar](max) NULL,
	[F_LogoCode] [nvarchar](50) NULL,
	[F_ProjectName] [nvarchar](50) NULL,
	[F_CompanyName] [nvarchar](50) NULL,
	[F_AdminAccount] [nvarchar](50) NULL,
	[F_AdminPassword] [nvarchar](50) NULL,
	[F_DeleteMark] [tinyint] NULL,
	[F_EnabledMark] [tinyint] NULL,
	[F_Description] [nvarchar](500) NULL,
	[F_CreatorTime] [datetime2](7) NULL,
	[F_CreatorUserId] [nvarchar](50) NULL,
	[F_LastModifyTime] [datetime2](7) NULL,
	[F_LastModifyUserId] [nvarchar](50) NULL,
	[F_DeleteTime] [datetime2](7) NULL,
	[F_DeleteUserId] [nvarchar](500) NULL,
	[F_MobilePhone] [nvarchar](20) NULL,
	[F_PrincipalMan] [nvarchar](50) NULL,
	[F_EndTime] [datetime2](7) NULL,
	[F_DbString] [nvarchar](max) NULL,
	[F_DBProvider] [nvarchar](50) NULL,
	[F_HostUrl] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_serverstate]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_serverstate](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_WebSite] [nvarchar](200) NULL,
	[F_ARM] [nvarchar](50) NULL,
	[F_CPU] [nvarchar](50) NULL,
	[F_IIS] [nvarchar](50) NULL,
	[F_Date] [date] NULL,
	[F_Cout] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Sys_ServerState] ON [dbo].[sys_serverstate] 
(
	[F_WebSite] ASC,
	[F_Date] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'唯一键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_serverstate', @level2type=N'INDEX',@level2name=N'IX_Sys_ServerState'
GO
/****** Object:  Table [dbo].[sys_roleauthorize]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_roleauthorize](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_ItemType] [int] NULL,
	[F_ItemId] [nvarchar](50) NULL,
	[F_ObjectType] [int] NULL,
	[F_ObjectId] [nvarchar](50) NULL,
	[F_SortCode] [int] NULL,
	[F_CreatorTime] [datetime2](7) NULL,
	[F_CreatorUserId] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_role]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_role](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_OrganizeId] [nvarchar](50) NULL,
	[F_Category] [int] NULL,
	[F_EnCode] [nvarchar](50) NULL,
	[F_FullName] [nvarchar](50) NULL,
	[F_Type] [nvarchar](50) NULL,
	[F_AllowEdit] [tinyint] NULL,
	[F_AllowDelete] [tinyint] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [tinyint] NULL,
	[F_EnabledMark] [tinyint] NULL,
	[F_Description] [nvarchar](500) NULL,
	[F_CreatorTime] [datetime2](7) NULL,
	[F_CreatorUserId] [nvarchar](50) NULL,
	[F_LastModifyTime] [datetime2](7) NULL,
	[F_LastModifyUserId] [nvarchar](50) NULL,
	[F_DeleteTime] [datetime2](7) NULL,
	[F_DeleteUserId] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Sys_Role] ON [dbo].[sys_role] 
(
	[F_EnCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'唯一键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_role', @level2type=N'INDEX',@level2name=N'IX_Sys_Role'
GO
/****** Object:  Table [dbo].[sys_quickmodule]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_quickmodule](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_ModuleId] [nvarchar](50) NULL,
	[F_DeleteMark] [tinyint] NULL,
	[F_EnabledMark] [tinyint] NULL,
	[F_Description] [nvarchar](500) NULL,
	[F_CreatorTime] [datetime2](7) NULL,
	[F_CreatorUserId] [nvarchar](50) NULL,
	[F_LastModifyTime] [datetime2](7) NULL,
	[F_LastModifyUserId] [nvarchar](50) NULL,
	[F_DeleteTime] [datetime2](7) NULL,
	[F_DeleteUserId] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Sys_QuickModule] ON [dbo].[sys_quickmodule] 
(
	[F_ModuleId] ASC,
	[F_CreatorUserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'唯一键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_quickmodule', @level2type=N'INDEX',@level2name=N'IX_Sys_QuickModule'
GO
/****** Object:  Table [dbo].[sys_organize]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_organize](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_ParentId] [nvarchar](50) NULL,
	[F_Layers] [int] NULL,
	[F_EnCode] [nvarchar](50) NULL,
	[F_FullName] [nvarchar](50) NULL,
	[F_ShortName] [nvarchar](50) NULL,
	[F_CategoryId] [nvarchar](50) NULL,
	[F_ManagerId] [nvarchar](50) NULL,
	[F_TelePhone] [nvarchar](20) NULL,
	[F_MobilePhone] [nvarchar](20) NULL,
	[F_WeChat] [nvarchar](50) NULL,
	[F_Fax] [nvarchar](20) NULL,
	[F_Email] [nvarchar](50) NULL,
	[F_AreaId] [nvarchar](50) NULL,
	[F_Address] [nvarchar](500) NULL,
	[F_AllowEdit] [tinyint] NULL,
	[F_AllowDelete] [tinyint] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [tinyint] NULL,
	[F_EnabledMark] [tinyint] NULL,
	[F_Description] [nvarchar](500) NULL,
	[F_CreatorTime] [datetime2](7) NULL,
	[F_CreatorUserId] [nvarchar](50) NULL,
	[F_LastModifyTime] [datetime2](7) NULL,
	[F_LastModifyUserId] [nvarchar](50) NULL,
	[F_DeleteTime] [datetime2](7) NULL,
	[F_DeleteUserId] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Sys_Organize] ON [dbo].[sys_organize] 
(
	[F_EnCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'唯一键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_organize', @level2type=N'INDEX',@level2name=N'IX_Sys_Organize'
GO
/****** Object:  Table [dbo].[sys_openjob]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_openjob](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_FileName] [nvarchar](100) NULL,
	[F_JobName] [nvarchar](50) NULL,
	[F_JobGroup] [nvarchar](50) NULL,
	[F_StarRunTime] [datetime2](7) NULL,
	[F_EndRunTime] [datetime2](7) NULL,
	[F_CronExpress] [nvarchar](50) NULL,
	[F_DeleteMark] [tinyint] NULL,
	[F_EnabledMark] [tinyint] NULL,
	[F_Description] [nvarchar](500) NULL,
	[F_CreatorTime] [datetime2](7) NULL,
	[F_CreatorUserId] [nvarchar](50) NULL,
	[F_LastModifyTime] [datetime2](7) NULL,
	[F_LastModifyUserId] [nvarchar](50) NULL,
	[F_DeleteTime] [datetime2](7) NULL,
	[F_DeleteUserId] [nvarchar](50) NULL,
	[F_LastRunTime] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后一次执行时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_openjob', @level2type=N'COLUMN',@level2name=N'F_LastRunTime'
GO
/****** Object:  Table [dbo].[sys_notice]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_notice](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_Title] [nvarchar](50) NULL,
	[F_Content] [nvarchar](max) NULL,
	[F_DeleteMark] [tinyint] NULL,
	[F_EnabledMark] [tinyint] NULL,
	[F_Description] [nvarchar](500) NULL,
	[F_CreatorTime] [datetime2](7) NULL,
	[F_CreatorUserId] [nvarchar](50) NULL,
	[F_CreatorUserName] [nvarchar](50) NULL,
	[F_LastModifyTime] [datetime2](7) NULL,
	[F_LastModifyUserId] [nvarchar](50) NULL,
	[F_DeleteTime] [datetime2](7) NULL,
	[F_DeleteUserId] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Sys_Notice] ON [dbo].[sys_notice] 
(
	[F_Title] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'唯一键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_notice', @level2type=N'INDEX',@level2name=N'IX_Sys_Notice'
GO
/****** Object:  Table [dbo].[sys_modulefields]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_modulefields](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_ModuleId] [nvarchar](50) NULL,
	[F_EnCode] [nvarchar](50) NULL,
	[F_FullName] [nvarchar](50) NULL,
	[F_DeleteMark] [tinyint] NULL,
	[F_EnabledMark] [tinyint] NULL,
	[F_Description] [nvarchar](500) NULL,
	[F_CreatorTime] [datetime2](7) NULL,
	[F_CreatorUserId] [nvarchar](50) NULL,
	[F_LastModifyTime] [datetime2](7) NULL,
	[F_LastModifyUserId] [nvarchar](50) NULL,
	[F_DeleteTime] [datetime2](7) NULL,
	[F_DeleteUserId] [nvarchar](50) NULL,
	[F_IsPublic] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Sys_ModuleFields] ON [dbo].[sys_modulefields] 
(
	[F_ModuleId] ASC,
	[F_EnCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'唯一键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_modulefields', @level2type=N'INDEX',@level2name=N'IX_Sys_ModuleFields'
GO
/****** Object:  Table [dbo].[sys_modulebutton]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_modulebutton](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_ModuleId] [nvarchar](50) NULL,
	[F_ParentId] [nvarchar](50) NULL,
	[F_Layers] [int] NULL,
	[F_EnCode] [nvarchar](50) NULL,
	[F_FullName] [nvarchar](50) NULL,
	[F_Icon] [nvarchar](50) NULL,
	[F_Location] [int] NULL,
	[F_JsEvent] [nvarchar](50) NULL,
	[F_UrlAddress] [nvarchar](500) NULL,
	[F_Split] [tinyint] NULL,
	[F_IsPublic] [tinyint] NULL,
	[F_AllowEdit] [tinyint] NULL,
	[F_AllowDelete] [tinyint] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [tinyint] NULL,
	[F_EnabledMark] [tinyint] NULL,
	[F_Description] [nvarchar](500) NULL,
	[F_CreatorTime] [datetime2](7) NULL,
	[F_CreatorUserId] [nvarchar](50) NULL,
	[F_LastModifyTime] [datetime2](7) NULL,
	[F_LastModifyUserId] [nvarchar](50) NULL,
	[F_DeleteTime] [datetime2](7) NULL,
	[F_DeleteUserId] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Sys_ModuleButton] ON [dbo].[sys_modulebutton] 
(
	[F_ModuleId] ASC,
	[F_Layers] ASC,
	[F_EnCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'唯一键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_modulebutton', @level2type=N'INDEX',@level2name=N'IX_Sys_ModuleButton'
GO
/****** Object:  Table [dbo].[sys_module]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_module](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_ParentId] [nvarchar](50) NULL,
	[F_Layers] [int] NULL,
	[F_EnCode] [nvarchar](50) NULL,
	[F_FullName] [nvarchar](50) NULL,
	[F_Icon] [nvarchar](50) NULL,
	[F_UrlAddress] [nvarchar](500) NULL,
	[F_Target] [nvarchar](50) NULL,
	[F_IsMenu] [tinyint] NULL,
	[F_IsExpand] [tinyint] NULL,
	[F_IsFields] [tinyint] NULL,
	[F_IsPublic] [tinyint] NULL,
	[F_AllowEdit] [tinyint] NULL,
	[F_AllowDelete] [tinyint] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [tinyint] NULL,
	[F_EnabledMark] [tinyint] NULL,
	[F_Description] [nvarchar](500) NULL,
	[F_CreatorTime] [datetime2](7) NULL,
	[F_CreatorUserId] [nvarchar](50) NULL,
	[F_LastModifyTime] [datetime2](7) NULL,
	[F_LastModifyUserId] [nvarchar](50) NULL,
	[F_DeleteTime] [datetime2](7) NULL,
	[F_DeleteUserId] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Sys_Module] ON [dbo].[sys_module] 
(
	[F_FullName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'唯一键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_module', @level2type=N'INDEX',@level2name=N'IX_Sys_Module'
GO
/****** Object:  Table [dbo].[sys_log]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_log](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_Date] [datetime2](7) NULL,
	[F_Account] [nvarchar](50) NULL,
	[F_NickName] [nvarchar](50) NULL,
	[F_Type] [nvarchar](50) NULL,
	[F_IPAddress] [nvarchar](50) NULL,
	[F_IPAddressName] [nvarchar](50) NULL,
	[F_ModuleId] [nvarchar](50) NULL,
	[F_ModuleName] [nvarchar](50) NULL,
	[F_Result] [tinyint] NULL,
	[F_Description] [nvarchar](500) NULL,
	[F_CreatorTime] [datetime2](7) NULL,
	[F_CreatorUserId] [nvarchar](50) NULL,
	[F_KeyValue] [nvarchar](50) NULL,
	[F_CompanyId] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_itemsdetail]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_itemsdetail](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_ItemId] [nvarchar](50) NULL,
	[F_ParentId] [nvarchar](50) NULL,
	[F_ItemCode] [nvarchar](50) NULL,
	[F_ItemName] [nvarchar](50) NULL,
	[F_SimpleSpelling] [nvarchar](500) NULL,
	[F_IsDefault] [tinyint] NULL,
	[F_Layers] [int] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [tinyint] NULL,
	[F_EnabledMark] [tinyint] NULL,
	[F_Description] [nvarchar](500) NULL,
	[F_CreatorTime] [datetime2](7) NULL,
	[F_CreatorUserId] [nvarchar](50) NULL,
	[F_LastModifyTime] [datetime2](7) NULL,
	[F_LastModifyUserId] [nvarchar](50) NULL,
	[F_DeleteTime] [datetime2](7) NULL,
	[F_DeleteUserId] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Sys_ItemsDetail] ON [dbo].[sys_itemsdetail] 
(
	[F_ItemId] ASC,
	[F_ItemCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'唯一键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_itemsdetail', @level2type=N'INDEX',@level2name=N'IX_Sys_ItemsDetail'
GO
/****** Object:  Table [dbo].[sys_items]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_items](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_ParentId] [nvarchar](50) NULL,
	[F_EnCode] [nvarchar](50) NULL,
	[F_FullName] [nvarchar](50) NULL,
	[F_IsTree] [tinyint] NULL,
	[F_Layers] [int] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [tinyint] NULL,
	[F_EnabledMark] [tinyint] NULL,
	[F_Description] [nvarchar](500) NULL,
	[F_CreatorTime] [datetime2](7) NULL,
	[F_CreatorUserId] [nvarchar](50) NULL,
	[F_LastModifyTime] [datetime2](7) NULL,
	[F_LastModifyUserId] [nvarchar](50) NULL,
	[F_DeleteTime] [datetime2](7) NULL,
	[F_DeleteUserId] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Sys_Items] ON [dbo].[sys_items] 
(
	[F_EnCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'唯一键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_items', @level2type=N'INDEX',@level2name=N'IX_Sys_Items'
GO
/****** Object:  Table [dbo].[sys_form]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_form](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_Name] [nvarchar](200) NULL,
	[F_FrmType] [int] NULL,
	[F_WebId] [nvarchar](50) NULL,
	[F_Fields] [int] NULL,
	[F_ContentData] [nvarchar](max) NULL,
	[F_ContentParse] [nvarchar](max) NULL,
	[F_Content] [nvarchar](max) NULL,
	[F_SortCode] [int] NULL,
	[F_EnabledMark] [tinyint] NULL,
	[F_DeleteMark] [tinyint] NULL,
	[F_CreatorTime] [datetime2](7) NULL,
	[F_CreatorUserId] [nvarchar](50) NULL,
	[F_LastModifyTime] [datetime2](7) NULL,
	[F_LastModifyUserId] [nvarchar](50) NULL,
	[F_DeleteTime] [datetime2](7) NULL,
	[F_DeleteUserId] [nvarchar](50) NULL,
	[F_Description] [nvarchar](max) NULL,
	[F_OrganizeId] [nvarchar](50) NULL,
	[F_DbName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_SYS_FORM] ON [dbo].[sys_form] 
(
	[F_Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单模板Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_form', @level2type=N'COLUMN',@level2name=N'F_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_form', @level2type=N'COLUMN',@level2name=N'F_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单类型，0：默认动态表单；1：Web自定义表单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_form', @level2type=N'COLUMN',@level2name=N'F_FrmType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统页面标识，当表单类型为用Web自定义的表单时，需要标识加载哪个页面' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_form', @level2type=N'COLUMN',@level2name=N'F_WebId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段个数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_form', @level2type=N'COLUMN',@level2name=N'F_Fields'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单中的控件属性描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_form', @level2type=N'COLUMN',@level2name=N'F_ContentData'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单控件位置模板' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_form', @level2type=N'COLUMN',@level2name=N'F_ContentParse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单原html模板未经处理的' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_form', @level2type=N'COLUMN',@level2name=N'F_Content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_form', @level2type=N'COLUMN',@level2name=N'F_SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_form', @level2type=N'COLUMN',@level2name=N'F_EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'逻辑删除标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_form', @level2type=N'COLUMN',@level2name=N'F_DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_form', @level2type=N'COLUMN',@level2name=N'F_CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_form', @level2type=N'COLUMN',@level2name=N'F_CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_form', @level2type=N'COLUMN',@level2name=N'F_LastModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_form', @level2type=N'COLUMN',@level2name=N'F_LastModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_form', @level2type=N'COLUMN',@level2name=N'F_DeleteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_form', @level2type=N'COLUMN',@level2name=N'F_DeleteUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_form', @level2type=N'COLUMN',@level2name=N'F_Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属组织' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_form', @level2type=N'COLUMN',@level2name=N'F_OrganizeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据库名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_form', @level2type=N'COLUMN',@level2name=N'F_DbName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单模板表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_form'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'唯一' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_form', @level2type=N'INDEX',@level2name=N'IX_SYS_FORM'
GO
/****** Object:  Table [dbo].[sys_flowscheme]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_flowscheme](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_SchemeCode] [nvarchar](50) NULL,
	[F_SchemeName] [nvarchar](200) NULL,
	[F_SchemeType] [nvarchar](50) NULL,
	[F_SchemeVersion] [nvarchar](50) NULL,
	[F_SchemeCanUser] [nvarchar](max) NULL,
	[F_SchemeContent] [nvarchar](max) NULL,
	[F_FrmId] [nvarchar](50) NULL,
	[F_FrmType] [int] NOT NULL,
	[F_AuthorizeType] [int] NOT NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [tinyint] NULL,
	[F_EnabledMark] [tinyint] NULL,
	[F_Description] [nvarchar](200) NULL,
	[F_CreatorTime] [datetime2](7) NULL,
	[F_CreatorUserId] [nvarchar](50) NULL,
	[F_CreatorUserName] [nvarchar](50) NULL,
	[F_LastModifyTime] [datetime2](7) NULL,
	[F_LastModifyUserId] [nvarchar](50) NULL,
	[F_LastModifyUserName] [nvarchar](50) NULL,
	[F_OrganizeId] [nvarchar](50) NULL,
	[F_DeleteTime] [datetime2](7) NULL,
	[F_DeleteUserId] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_flowscheme', @level2type=N'COLUMN',@level2name=N'F_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_flowscheme', @level2type=N'COLUMN',@level2name=N'F_SchemeCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_flowscheme', @level2type=N'COLUMN',@level2name=N'F_SchemeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_flowscheme', @level2type=N'COLUMN',@level2name=N'F_SchemeType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程内容版本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_flowscheme', @level2type=N'COLUMN',@level2name=N'F_SchemeVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板使用者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_flowscheme', @level2type=N'COLUMN',@level2name=N'F_SchemeCanUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_flowscheme', @level2type=N'COLUMN',@level2name=N'F_SchemeContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_flowscheme', @level2type=N'COLUMN',@level2name=N'F_FrmId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_flowscheme', @level2type=N'COLUMN',@level2name=N'F_FrmType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板权限类型：0完全公开,1指定部门/人员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_flowscheme', @level2type=N'COLUMN',@level2name=N'F_AuthorizeType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_flowscheme', @level2type=N'COLUMN',@level2name=N'F_SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标记' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_flowscheme', @level2type=N'COLUMN',@level2name=N'F_DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_flowscheme', @level2type=N'COLUMN',@level2name=N'F_EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_flowscheme', @level2type=N'COLUMN',@level2name=N'F_Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_flowscheme', @level2type=N'COLUMN',@level2name=N'F_CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_flowscheme', @level2type=N'COLUMN',@level2name=N'F_CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_flowscheme', @level2type=N'COLUMN',@level2name=N'F_CreatorUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_flowscheme', @level2type=N'COLUMN',@level2name=N'F_LastModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_flowscheme', @level2type=N'COLUMN',@level2name=N'F_LastModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_flowscheme', @level2type=N'COLUMN',@level2name=N'F_LastModifyUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_flowscheme', @level2type=N'COLUMN',@level2name=N'F_OrganizeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_flowscheme', @level2type=N'COLUMN',@level2name=N'F_DeleteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_flowscheme', @level2type=N'COLUMN',@level2name=N'F_DeleteUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作流模板信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_flowscheme'
GO
/****** Object:  Table [dbo].[sys_filterip]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_filterip](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_Type] [tinyint] NULL,
	[F_StartIP] [nvarchar](50) NULL,
	[F_EndIP] [nvarchar](50) NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [tinyint] NULL,
	[F_EnabledMark] [tinyint] NULL,
	[F_Description] [nvarchar](500) NULL,
	[F_CreatorTime] [datetime2](7) NULL,
	[F_CreatorUserId] [nvarchar](50) NULL,
	[F_LastModifyTime] [datetime2](7) NULL,
	[F_LastModifyUserId] [nvarchar](50) NULL,
	[F_DeleteTime] [datetime2](7) NULL,
	[F_DeleteUserId] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_dbbackup]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_dbbackup](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_BackupType] [nvarchar](50) NULL,
	[F_DbName] [nvarchar](50) NULL,
	[F_FileName] [nvarchar](50) NULL,
	[F_FileSize] [nvarchar](50) NULL,
	[F_FilePath] [nvarchar](500) NULL,
	[F_BackupTime] [datetime2](7) NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [tinyint] NULL,
	[F_EnabledMark] [tinyint] NULL,
	[F_Description] [nvarchar](500) NULL,
	[F_CreatorTime] [datetime2](7) NULL,
	[F_CreatorUserId] [nvarchar](50) NULL,
	[F_LastModifyTime] [datetime2](7) NULL,
	[F_LastModifyUserId] [nvarchar](50) NULL,
	[F_DeleteTime] [datetime2](7) NULL,
	[F_DeleteUserId] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_dataprivilegerule]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_dataprivilegerule](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_ModuleId] [nvarchar](50) NULL,
	[F_ModuleCode] [nvarchar](50) NULL,
	[F_PrivilegeRules] [nvarchar](max) NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [tinyint] NULL,
	[F_EnabledMark] [tinyint] NULL,
	[F_Description] [nvarchar](500) NULL,
	[F_CreatorTime] [datetime2](7) NULL,
	[F_CreatorUserId] [nvarchar](50) NULL,
	[F_LastModifyTime] [datetime2](7) NULL,
	[F_LastModifyUserId] [nvarchar](50) NULL,
	[F_DeleteTime] [datetime2](7) NULL,
	[F_DeleteUserId] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [XK_DataPrivilegeRule_1] ON [dbo].[sys_dataprivilegerule] 
(
	[F_ModuleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'唯一键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dataprivilegerule', @level2type=N'INDEX',@level2name=N'XK_DataPrivilegeRule_1'
GO
/****** Object:  Table [dbo].[sys_area]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_area](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_ParentId] [nvarchar](50) NULL,
	[F_Layers] [int] NULL,
	[F_EnCode] [nvarchar](50) NULL,
	[F_FullName] [nvarchar](50) NULL,
	[F_SimpleSpelling] [nvarchar](50) NULL,
	[F_SortCode] [bigint] NULL,
	[F_DeleteMark] [tinyint] NULL,
	[F_EnabledMark] [tinyint] NULL,
	[F_Description] [nvarchar](max) NULL,
	[F_CreatorTime] [datetime2](7) NULL,
	[F_CreatorUserId] [nvarchar](50) NULL,
	[F_LastModifyTime] [datetime2](7) NULL,
	[F_LastModifyUserId] [nvarchar](50) NULL,
	[F_DeleteTime] [datetime2](7) NULL,
	[F_DeleteUserId] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_area', @level2type=N'COLUMN',@level2name=N'F_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_area', @level2type=N'COLUMN',@level2name=N'F_ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'层次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_area', @level2type=N'COLUMN',@level2name=N'F_Layers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_area', @level2type=N'COLUMN',@level2name=N'F_EnCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_area', @level2type=N'COLUMN',@level2name=N'F_FullName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简拼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_area', @level2type=N'COLUMN',@level2name=N'F_SimpleSpelling'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_area', @level2type=N'COLUMN',@level2name=N'F_SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_area', @level2type=N'COLUMN',@level2name=N'F_DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_area', @level2type=N'COLUMN',@level2name=N'F_EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_area', @level2type=N'COLUMN',@level2name=N'F_Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_area', @level2type=N'COLUMN',@level2name=N'F_CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_area', @level2type=N'COLUMN',@level2name=N'F_CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_area', @level2type=N'COLUMN',@level2name=N'F_LastModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_area', @level2type=N'COLUMN',@level2name=N'F_LastModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_area', @level2type=N'COLUMN',@level2name=N'F_DeleteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_area', @level2type=N'COLUMN',@level2name=N'F_DeleteUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'行政区域表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_area'
GO
/****** Object:  Table [dbo].[oms_uploadfile]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oms_uploadfile](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_FilePath] [nvarchar](50) NULL,
	[F_FileName] [nvarchar](200) NOT NULL,
	[F_FileType] [nvarchar](200) NULL,
	[F_FileSize] [int] NULL,
	[F_FileExtension] [nvarchar](20) NULL,
	[F_FileBy] [nvarchar](50) NULL,
	[F_Description] [nvarchar](200) NULL,
	[F_OrganizeId] [nvarchar](50) NULL,
	[F_EnabledMark] [tinyint] NULL,
	[F_CreatorTime] [datetime2](7) NULL,
	[F_CreatorUserId] [nvarchar](50) NULL,
	[F_CreatorUserName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_OMS_UPLOADFile] ON [dbo].[oms_uploadfile] 
(
	[F_FileName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_uploadfile', @level2type=N'COLUMN',@level2name=N'F_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_uploadfile', @level2type=N'COLUMN',@level2name=N'F_FilePath'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_uploadfile', @level2type=N'COLUMN',@level2name=N'F_FileName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件类型（0 文件，1 图片）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_uploadfile', @level2type=N'COLUMN',@level2name=N'F_FileType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件大小' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_uploadfile', @level2type=N'COLUMN',@level2name=N'F_FileSize'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件扩展名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_uploadfile', @level2type=N'COLUMN',@level2name=N'F_FileExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件所属' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_uploadfile', @level2type=N'COLUMN',@level2name=N'F_FileBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_uploadfile', @level2type=N'COLUMN',@level2name=N'F_Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_uploadfile', @level2type=N'COLUMN',@level2name=N'F_OrganizeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_uploadfile', @level2type=N'COLUMN',@level2name=N'F_EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_uploadfile', @level2type=N'COLUMN',@level2name=N'F_CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_uploadfile', @level2type=N'COLUMN',@level2name=N'F_CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_uploadfile', @level2type=N'COLUMN',@level2name=N'F_CreatorUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'唯一键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_uploadfile', @level2type=N'INDEX',@level2name=N'IX_OMS_UPLOADFile'
GO
/****** Object:  Table [dbo].[oms_messagehistory]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oms_messagehistory](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_MessageId] [nvarchar](50) NULL,
	[F_CreatorTime] [datetime2](7) NULL,
	[F_CreatorUserId] [nvarchar](50) NULL,
	[F_CreatorUserName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_messagehistory', @level2type=N'COLUMN',@level2name=N'F_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信息Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_messagehistory', @level2type=N'COLUMN',@level2name=N'F_MessageId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_messagehistory', @level2type=N'COLUMN',@level2name=N'F_CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_messagehistory', @level2type=N'COLUMN',@level2name=N'F_CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_messagehistory', @level2type=N'COLUMN',@level2name=N'F_CreatorUserName'
GO
/****** Object:  Table [dbo].[oms_messagehis]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oms_messagehis](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_MessageId] [nvarchar](50) NULL,
	[F_CreatorTime] [datetime2](7) NULL,
	[F_CreatorUserId] [nvarchar](50) NULL,
	[F_CreatorUserName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_messagehis', @level2type=N'COLUMN',@level2name=N'F_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信息Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_messagehis', @level2type=N'COLUMN',@level2name=N'F_MessageId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_messagehis', @level2type=N'COLUMN',@level2name=N'F_CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_messagehis', @level2type=N'COLUMN',@level2name=N'F_CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_messagehis', @level2type=N'COLUMN',@level2name=N'F_CreatorUserName'
GO
/****** Object:  Table [dbo].[oms_message]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oms_message](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_MessageType] [int] NULL,
	[F_ToUserId] [nvarchar](50) NULL,
	[F_ToUserName] [nvarchar](50) NULL,
	[F_MessageInfo] [nvarchar](max) NULL,
	[F_EnabledMark] [tinyint] NULL,
	[F_CreatorTime] [datetime2](7) NULL,
	[F_CreatorUserId] [nvarchar](50) NULL,
	[F_CreatorUserName] [nvarchar](50) NULL,
	[F_HrefTarget] [nvarchar](50) NULL,
	[F_Href] [nvarchar](100) NULL,
	[F_KeyValue] [nvarchar](50) NULL,
	[F_ClickRead] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_message', @level2type=N'COLUMN',@level2name=N'F_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信息类型（通知、私信、处理）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_message', @level2type=N'COLUMN',@level2name=N'F_MessageType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收件人主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_message', @level2type=N'COLUMN',@level2name=N'F_ToUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收件人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_message', @level2type=N'COLUMN',@level2name=N'F_ToUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_message', @level2type=N'COLUMN',@level2name=N'F_MessageInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_message', @level2type=N'COLUMN',@level2name=N'F_EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_message', @level2type=N'COLUMN',@level2name=N'F_CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_message', @level2type=N'COLUMN',@level2name=N'F_CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_message', @level2type=N'COLUMN',@level2name=N'F_CreatorUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'跳转类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_message', @level2type=N'COLUMN',@level2name=N'F_HrefTarget'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'跳转地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_message', @level2type=N'COLUMN',@level2name=N'F_Href'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'待办关联键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_message', @level2type=N'COLUMN',@level2name=N'F_KeyValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'点击已读' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_message', @level2type=N'COLUMN',@level2name=N'F_ClickRead'
GO
/****** Object:  Table [dbo].[oms_formtest]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oms_formtest](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_UserName] [nvarchar](10) NOT NULL,
	[F_RequestType] [nvarchar](20) NOT NULL,
	[F_StartTime] [datetime2](7) NULL,
	[F_EndTime] [datetime2](7) NULL,
	[F_RequestComment] [nvarchar](max) NULL,
	[F_Attachment] [nvarchar](max) NULL,
	[F_CreatorTime] [datetime2](7) NOT NULL,
	[F_CreatorUserId] [nvarchar](50) NULL,
	[F_CreatorUserName] [nvarchar](50) NULL,
	[F_FlowInstanceId] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_formtest', @level2type=N'COLUMN',@level2name=N'F_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_formtest', @level2type=N'COLUMN',@level2name=N'F_UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假分类，病假，事假，公休等' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_formtest', @level2type=N'COLUMN',@level2name=N'F_RequestType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_formtest', @level2type=N'COLUMN',@level2name=N'F_StartTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_formtest', @level2type=N'COLUMN',@level2name=N'F_EndTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_formtest', @level2type=N'COLUMN',@level2name=N'F_RequestComment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件，用于提交病假证据等' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_formtest', @level2type=N'COLUMN',@level2name=N'F_Attachment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_formtest', @level2type=N'COLUMN',@level2name=N'F_CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_formtest', @level2type=N'COLUMN',@level2name=N'F_CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_formtest', @level2type=N'COLUMN',@level2name=N'F_CreatorUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属流程ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_formtest', @level2type=N'COLUMN',@level2name=N'F_FlowInstanceId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模拟一个自定页面的表单，该数据会关联到流程实例FrmData，可用于复杂页面的设计及后期的数据分析' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_formtest'
GO
/****** Object:  Table [dbo].[oms_flowinstancetransitionhistory]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oms_flowinstancetransitionhistory](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_InstanceId] [nvarchar](50) NOT NULL,
	[F_FromNodeId] [nvarchar](50) NULL,
	[F_FromNodeType] [int] NULL,
	[F_FromNodeName] [nvarchar](200) NULL,
	[F_ToNodeId] [nvarchar](50) NULL,
	[F_ToNodeType] [int] NULL,
	[F_ToNodeName] [nvarchar](200) NULL,
	[F_TransitionSate] [tinyint] NOT NULL,
	[F_IsFinish] [tinyint] NOT NULL,
	[F_CreatorTime] [datetime2](7) NOT NULL,
	[F_CreatorUserId] [nvarchar](50) NULL,
	[F_CreatorUserName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstancetransitionhistory', @level2type=N'COLUMN',@level2name=N'F_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实例Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstancetransitionhistory', @level2type=N'COLUMN',@level2name=N'F_InstanceId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始节点Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstancetransitionhistory', @level2type=N'COLUMN',@level2name=N'F_FromNodeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始节点类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstancetransitionhistory', @level2type=N'COLUMN',@level2name=N'F_FromNodeType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始节点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstancetransitionhistory', @level2type=N'COLUMN',@level2name=N'F_FromNodeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束节点Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstancetransitionhistory', @level2type=N'COLUMN',@level2name=N'F_ToNodeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束节点类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstancetransitionhistory', @level2type=N'COLUMN',@level2name=N'F_ToNodeType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束节点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstancetransitionhistory', @level2type=N'COLUMN',@level2name=N'F_ToNodeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转化状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstancetransitionhistory', @level2type=N'COLUMN',@level2name=N'F_TransitionSate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否结束' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstancetransitionhistory', @level2type=N'COLUMN',@level2name=N'F_IsFinish'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转化时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstancetransitionhistory', @level2type=N'COLUMN',@level2name=N'F_CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstancetransitionhistory', @level2type=N'COLUMN',@level2name=N'F_CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作人名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstancetransitionhistory', @level2type=N'COLUMN',@level2name=N'F_CreatorUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作流实例流转历史记录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstancetransitionhistory'
GO
/****** Object:  Table [dbo].[oms_flowinstanceoperationhistory]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oms_flowinstanceoperationhistory](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_InstanceId] [nvarchar](50) NOT NULL,
	[F_Content] [nvarchar](200) NULL,
	[F_CreatorTime] [datetime2](7) NOT NULL,
	[F_CreatorUserId] [nvarchar](50) NULL,
	[F_CreatorUserName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstanceoperationhistory', @level2type=N'COLUMN',@level2name=N'F_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实例进程Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstanceoperationhistory', @level2type=N'COLUMN',@level2name=N'F_InstanceId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstanceoperationhistory', @level2type=N'COLUMN',@level2name=N'F_Content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstanceoperationhistory', @level2type=N'COLUMN',@level2name=N'F_CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstanceoperationhistory', @level2type=N'COLUMN',@level2name=N'F_CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstanceoperationhistory', @level2type=N'COLUMN',@level2name=N'F_CreatorUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作流实例操作记录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstanceoperationhistory'
GO
/****** Object:  Table [dbo].[oms_flowinstanceinfo]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oms_flowinstanceinfo](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_InstanceId] [nvarchar](50) NOT NULL,
	[F_Content] [nvarchar](200) NULL,
	[F_CreatorTime] [datetime2](7) NOT NULL,
	[F_CreatorUserId] [nvarchar](50) NULL,
	[F_CreatorUserName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstanceinfo', @level2type=N'COLUMN',@level2name=N'F_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实例进程Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstanceinfo', @level2type=N'COLUMN',@level2name=N'F_InstanceId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstanceinfo', @level2type=N'COLUMN',@level2name=N'F_Content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstanceinfo', @level2type=N'COLUMN',@level2name=N'F_CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstanceinfo', @level2type=N'COLUMN',@level2name=N'F_CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstanceinfo', @level2type=N'COLUMN',@level2name=N'F_CreatorUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作流实例操作记录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstanceinfo'
GO
/****** Object:  Table [dbo].[oms_flowinstancehis]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oms_flowinstancehis](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_InstanceId] [nvarchar](50) NOT NULL,
	[F_FromNodeId] [nvarchar](50) NULL,
	[F_FromNodeType] [int] NULL,
	[F_FromNodeName] [nvarchar](200) NULL,
	[F_ToNodeId] [nvarchar](50) NULL,
	[F_ToNodeType] [int] NULL,
	[F_ToNodeName] [nvarchar](200) NULL,
	[F_TransitionSate] [tinyint] NOT NULL,
	[F_IsFinish] [tinyint] NOT NULL,
	[F_CreatorTime] [datetime2](7) NOT NULL,
	[F_CreatorUserId] [nvarchar](50) NULL,
	[F_CreatorUserName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstancehis', @level2type=N'COLUMN',@level2name=N'F_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实例Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstancehis', @level2type=N'COLUMN',@level2name=N'F_InstanceId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始节点Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstancehis', @level2type=N'COLUMN',@level2name=N'F_FromNodeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始节点类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstancehis', @level2type=N'COLUMN',@level2name=N'F_FromNodeType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始节点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstancehis', @level2type=N'COLUMN',@level2name=N'F_FromNodeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束节点Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstancehis', @level2type=N'COLUMN',@level2name=N'F_ToNodeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束节点类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstancehis', @level2type=N'COLUMN',@level2name=N'F_ToNodeType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束节点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstancehis', @level2type=N'COLUMN',@level2name=N'F_ToNodeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转化状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstancehis', @level2type=N'COLUMN',@level2name=N'F_TransitionSate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否结束' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstancehis', @level2type=N'COLUMN',@level2name=N'F_IsFinish'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转化时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstancehis', @level2type=N'COLUMN',@level2name=N'F_CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstancehis', @level2type=N'COLUMN',@level2name=N'F_CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作人名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstancehis', @level2type=N'COLUMN',@level2name=N'F_CreatorUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作流实例流转历史记录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstancehis'
GO
/****** Object:  Table [dbo].[oms_flowinstance]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oms_flowinstance](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_InstanceSchemeId] [nvarchar](50) NOT NULL,
	[F_Code] [nvarchar](200) NULL,
	[F_CustomName] [nvarchar](200) NULL,
	[F_ActivityId] [nvarchar](50) NULL,
	[F_ActivityType] [int] NULL,
	[F_ActivityName] [nvarchar](200) NULL,
	[F_PreviousId] [nvarchar](50) NULL,
	[F_SchemeContent] [nvarchar](max) NULL,
	[F_SchemeId] [nvarchar](50) NULL,
	[F_DbName] [nvarchar](50) NULL,
	[F_FrmData] [nvarchar](max) NULL,
	[F_FrmType] [int] NOT NULL,
	[F_FrmContentData] [nvarchar](max) NULL,
	[F_FrmContentParse] [nvarchar](max) NULL,
	[F_FrmId] [nvarchar](50) NULL,
	[F_SchemeType] [nvarchar](50) NULL,
	[F_FlowLevel] [int] NOT NULL,
	[F_Description] [nvarchar](200) NULL,
	[F_IsFinish] [int] NOT NULL,
	[F_MakerList] [nvarchar](max) NULL,
	[F_OrganizeId] [nvarchar](50) NULL,
	[F_EnabledMark] [tinyint] NULL,
	[F_CreatorTime] [datetime2](7) NULL,
	[F_CreatorUserId] [nvarchar](50) NULL,
	[F_CreatorUserName] [nvarchar](50) NULL,
	[F_FrmContent] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstance', @level2type=N'COLUMN',@level2name=N'F_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例模板Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstance', @level2type=N'COLUMN',@level2name=N'F_InstanceSchemeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实例编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstance', @level2type=N'COLUMN',@level2name=N'F_Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自定义名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstance', @level2type=N'COLUMN',@level2name=N'F_CustomName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前节点ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstance', @level2type=N'COLUMN',@level2name=N'F_ActivityId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前节点类型（0会签节点）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstance', @level2type=N'COLUMN',@level2name=N'F_ActivityType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前节点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstance', @level2type=N'COLUMN',@level2name=N'F_ActivityName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'前一个ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstance', @level2type=N'COLUMN',@level2name=N'F_PreviousId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstance', @level2type=N'COLUMN',@level2name=N'F_SchemeContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstance', @level2type=N'COLUMN',@level2name=N'F_SchemeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据库名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstance', @level2type=N'COLUMN',@level2name=N'F_DbName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单数据' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstance', @level2type=N'COLUMN',@level2name=N'F_FrmData'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstance', @level2type=N'COLUMN',@level2name=N'F_FrmType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstance', @level2type=N'COLUMN',@level2name=N'F_FrmContentData'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单参数（冗余）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstance', @level2type=N'COLUMN',@level2name=N'F_FrmContentParse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstance', @level2type=N'COLUMN',@level2name=N'F_FrmId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstance', @level2type=N'COLUMN',@level2name=N'F_SchemeType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'等级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstance', @level2type=N'COLUMN',@level2name=N'F_FlowLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实例备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstance', @level2type=N'COLUMN',@level2name=N'F_Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否完成' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstance', @level2type=N'COLUMN',@level2name=N'F_IsFinish'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstance', @level2type=N'COLUMN',@level2name=N'F_MakerList'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstance', @level2type=N'COLUMN',@level2name=N'F_OrganizeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstance', @level2type=N'COLUMN',@level2name=N'F_EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstance', @level2type=N'COLUMN',@level2name=N'F_CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstance', @level2type=N'COLUMN',@level2name=N'F_CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstance', @level2type=N'COLUMN',@level2name=N'F_CreatorUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单元素json' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstance', @level2type=N'COLUMN',@level2name=N'F_FrmContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作流流程实例表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'oms_flowinstance'
GO
/****** Object:  Table [dbo].[cms_articlenews]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cms_articlenews](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_CategoryId] [nvarchar](50) NOT NULL,
	[F_Title] [nvarchar](200) NULL,
	[F_LinkUrl] [nvarchar](255) NULL,
	[F_ImgUrl] [nvarchar](255) NULL,
	[F_SeoTitle] [nvarchar](255) NULL,
	[F_SeoKeywords] [nvarchar](255) NULL,
	[F_SeoDescription] [nvarchar](255) NULL,
	[F_Tags] [nvarchar](max) NULL,
	[F_Zhaiyao] [nvarchar](255) NULL,
	[F_Description] [nvarchar](max) NULL,
	[F_SortCode] [int] NULL,
	[F_IsTop] [tinyint] NULL,
	[F_IsHot] [tinyint] NULL,
	[F_IsRed] [tinyint] NULL,
	[F_Click] [int] NULL,
	[F_Source] [nvarchar](50) NULL,
	[F_Author] [nvarchar](50) NULL,
	[F_EnabledMark] [tinyint] NULL,
	[F_DeleteMark] [tinyint] NULL,
	[F_CreatorTime] [datetime2](7) NULL,
	[F_CreatorUserId] [nvarchar](50) NULL,
	[F_LastModifyTime] [datetime2](7) NULL,
	[F_LastModifyUserId] [nvarchar](50) NULL,
	[F_DeleteTime] [datetime2](7) NULL,
	[F_DeleteUserId] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlenews', @level2type=N'COLUMN',@level2name=N'F_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlenews', @level2type=N'COLUMN',@level2name=N'F_CategoryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlenews', @level2type=N'COLUMN',@level2name=N'F_Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlenews', @level2type=N'COLUMN',@level2name=N'F_LinkUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlenews', @level2type=N'COLUMN',@level2name=N'F_ImgUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlenews', @level2type=N'COLUMN',@level2name=N'F_SeoTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO关键字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlenews', @level2type=N'COLUMN',@level2name=N'F_SeoKeywords'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlenews', @level2type=N'COLUMN',@level2name=N'F_SeoDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标签' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlenews', @level2type=N'COLUMN',@level2name=N'F_Tags'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'摘要' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlenews', @level2type=N'COLUMN',@level2name=N'F_Zhaiyao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlenews', @level2type=N'COLUMN',@level2name=N'F_Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlenews', @level2type=N'COLUMN',@level2name=N'F_SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否置顶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlenews', @level2type=N'COLUMN',@level2name=N'F_IsTop'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否热门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlenews', @level2type=N'COLUMN',@level2name=N'F_IsHot'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'点击次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlenews', @level2type=N'COLUMN',@level2name=N'F_Click'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlenews', @level2type=N'COLUMN',@level2name=N'F_Source'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlenews', @level2type=N'COLUMN',@level2name=N'F_Author'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlenews', @level2type=N'COLUMN',@level2name=N'F_EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'逻辑删除标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlenews', @level2type=N'COLUMN',@level2name=N'F_DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlenews', @level2type=N'COLUMN',@level2name=N'F_CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlenews', @level2type=N'COLUMN',@level2name=N'F_CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlenews', @level2type=N'COLUMN',@level2name=N'F_LastModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlenews', @level2type=N'COLUMN',@level2name=N'F_LastModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlenews', @level2type=N'COLUMN',@level2name=N'F_DeleteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlenews', @level2type=N'COLUMN',@level2name=N'F_DeleteUserId'
GO
/****** Object:  Table [dbo].[cms_articlecategory]    Script Date: 08/12/2020 11:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cms_articlecategory](
	[F_Id] [nvarchar](50) NOT NULL,
	[F_FullName] [nvarchar](100) NULL,
	[F_ParentId] [nvarchar](50) NULL,
	[F_SortCode] [int] NOT NULL,
	[F_Description] [nvarchar](max) NULL,
	[F_LinkUrl] [nvarchar](255) NULL,
	[F_ImgUrl] [nvarchar](255) NULL,
	[F_SeoTitle] [nvarchar](255) NULL,
	[F_SeoKeywords] [nvarchar](255) NULL,
	[F_SeoDescription] [nvarchar](255) NULL,
	[F_IsHot] [tinyint] NULL,
	[F_EnabledMark] [tinyint] NULL,
	[F_DeleteMark] [tinyint] NULL,
	[F_CreatorTime] [datetime2](7) NULL,
	[F_CreatorUserId] [nvarchar](50) NULL,
	[F_LastModifyTime] [datetime2](7) NULL,
	[F_LastModifyUserId] [nvarchar](50) NULL,
	[F_DeleteTime] [datetime2](7) NULL,
	[F_DeleteUserId] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlecategory', @level2type=N'COLUMN',@level2name=N'F_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlecategory', @level2type=N'COLUMN',@level2name=N'F_FullName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlecategory', @level2type=N'COLUMN',@level2name=N'F_ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlecategory', @level2type=N'COLUMN',@level2name=N'F_SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlecategory', @level2type=N'COLUMN',@level2name=N'F_Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlecategory', @level2type=N'COLUMN',@level2name=N'F_LinkUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlecategory', @level2type=N'COLUMN',@level2name=N'F_ImgUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlecategory', @level2type=N'COLUMN',@level2name=N'F_SeoTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO关键字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlecategory', @level2type=N'COLUMN',@level2name=N'F_SeoKeywords'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlecategory', @level2type=N'COLUMN',@level2name=N'F_SeoDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否热门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlecategory', @level2type=N'COLUMN',@level2name=N'F_IsHot'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlecategory', @level2type=N'COLUMN',@level2name=N'F_EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cms_articlecategory', @level2type=N'COLUMN',@level2name=N'F_DeleteMark'
GO
