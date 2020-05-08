USE [master]
GO
/****** Object:  Database [WaterCloudNetDb]    Script Date: 05/08/2020 17:00:52 ******/
CREATE DATABASE [WaterCloudNetDb] ON  PRIMARY 
( NAME = N'WaterCloudNetDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\WaterCloudNetDb.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WaterCloudNetDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\WaterCloudNetDb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
/****** Object:  Default [dbo].[sqlguid]    Script Date: 05/08/2020 17:00:52 ******/
/****** Object:  Default [dbo].[sqlguid]    Script Date: 2018-04-14 15:19:55 ******/
CREATE DEFAULT [dbo].[sqlguid] 
AS
newid()
GO
/****** Object:  UserDefinedDataType [dbo].[PrimaryKey]    Script Date: 05/08/2020 17:00:52 ******/
CREATE TYPE [dbo].[PrimaryKey] FROM [varchar](50) NULL
GO
/****** Object:  Table [dbo].[Test]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Test](
	[Id] [varchar](50) NOT NULL,
	[data_1] [varchar](255) NULL,
	[data_2] [varchar](255) NULL,
	[data_3] [varchar](255) NULL,
	[checkboxs_0] [int] NOT NULL,
	[data_7] [varchar](255) NULL,
	[data_8] [varchar](255) NULL,
	[data_9] [text] NULL,
	[data_10] [text] NULL,
	[data_11] [varchar](255) NULL,
 CONSTRAINT [PK_Test] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_UserLogOn]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_UserLogOn](
	[F_Id] [varchar](50) NOT NULL,
	[F_UserId] [varchar](50) NULL,
	[F_UserPassword] [varchar](50) NULL,
	[F_UserSecretkey] [varchar](50) NULL,
	[F_AllowStartTime] [datetime] NULL,
	[F_AllowEndTime] [datetime] NULL,
	[F_LockStartDate] [datetime] NULL,
	[F_LockEndDate] [datetime] NULL,
	[F_FirstVisitTime] [datetime] NULL,
	[F_PreviousVisitTime] [datetime] NULL,
	[F_LastVisitTime] [datetime] NULL,
	[F_ChangePasswordDate] [datetime] NULL,
	[F_MultiUserLogin] [bit] NULL,
	[F_LogOnCount] [int] NULL,
	[F_UserOnLine] [bit] NULL,
	[F_Question] [varchar](50) NULL,
	[F_AnswerQuestion] [varchar](500) NULL,
	[F_CheckIPAddress] [bit] NULL,
	[F_Language] [varchar](50) NULL,
	[F_Theme] [varchar](50) NULL,
	[F_LoginSession] [varchar](100) NULL,
	[F_ErrorNum] [int] NULL,
 CONSTRAINT [PK_Sys_UserLogOn] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Sys_UserLogOn] ([F_Id], [F_UserId], [F_UserPassword], [F_UserSecretkey], [F_AllowStartTime], [F_AllowEndTime], [F_LockStartDate], [F_LockEndDate], [F_FirstVisitTime], [F_PreviousVisitTime], [F_LastVisitTime], [F_ChangePasswordDate], [F_MultiUserLogin], [F_LogOnCount], [F_UserOnLine], [F_Question], [F_AnswerQuestion], [F_CheckIPAddress], [F_Language], [F_Theme], [F_LoginSession], [F_ErrorNum]) VALUES (N'6052f242-15ae-4b77-ad95-929f8a6f244c', N'6052f242-15ae-4b77-ad95-929f8a6f244c', N'824bca0bd7e1a70511e0ebe9eb0489b8', N'7e5a1f45d00feffe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Sys_UserLogOn] ([F_Id], [F_UserId], [F_UserPassword], [F_UserSecretkey], [F_AllowStartTime], [F_AllowEndTime], [F_LockStartDate], [F_LockEndDate], [F_FirstVisitTime], [F_PreviousVisitTime], [F_LastVisitTime], [F_ChangePasswordDate], [F_MultiUserLogin], [F_LogOnCount], [F_UserOnLine], [F_Question], [F_AnswerQuestion], [F_CheckIPAddress], [F_Language], [F_Theme], [F_LoginSession], [F_ErrorNum]) VALUES (N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'd8f5b789e4bf6f81edb08834660ffe8b', N'8210ef253bbf2d37', NULL, NULL, NULL, NULL, NULL, CAST(0x0000AB9E00C3ED6C AS DateTime), CAST(0x0000ABA000C6FB89 AS DateTime), NULL, 0, 333, 0, NULL, NULL, 0, NULL, NULL, N'qeymotspmtdd3dr0mg1ukwyy', 0)
INSERT [dbo].[Sys_UserLogOn] ([F_Id], [F_UserId], [F_UserPassword], [F_UserSecretkey], [F_AllowStartTime], [F_AllowEndTime], [F_LockStartDate], [F_LockEndDate], [F_FirstVisitTime], [F_PreviousVisitTime], [F_LastVisitTime], [F_ChangePasswordDate], [F_MultiUserLogin], [F_LogOnCount], [F_UserOnLine], [F_Question], [F_AnswerQuestion], [F_CheckIPAddress], [F_Language], [F_Theme], [F_LoginSession], [F_ErrorNum]) VALUES (N'', N'', N'0fc8fc444215fa5698280501d09396cd', N'c212273e935c93a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Sys_UserLogOn] ([F_Id], [F_UserId], [F_UserPassword], [F_UserSecretkey], [F_AllowStartTime], [F_AllowEndTime], [F_LockStartDate], [F_LockEndDate], [F_FirstVisitTime], [F_PreviousVisitTime], [F_LastVisitTime], [F_ChangePasswordDate], [F_MultiUserLogin], [F_LogOnCount], [F_UserOnLine], [F_Question], [F_AnswerQuestion], [F_CheckIPAddress], [F_Language], [F_Theme], [F_LoginSession], [F_ErrorNum]) VALUES (N'e87f0324-6c66-4352-a15f-8fb2685d840f', N'e87f0324-6c66-4352-a15f-8fb2685d840f', N'978b86bfba3e03de73bf34074c862fa3', N'105a92cd48e2328f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
/****** Object:  Table [dbo].[Sys_User]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_User](
	[F_Id] [varchar](50) NOT NULL,
	[F_Account] [varchar](50) NULL,
	[F_RealName] [varchar](50) NULL,
	[F_NickName] [varchar](50) NULL,
	[F_HeadIcon] [varchar](50) NULL,
	[F_Gender] [bit] NULL,
	[F_Birthday] [datetime] NULL,
	[F_MobilePhone] [varchar](20) NULL,
	[F_Email] [varchar](50) NULL,
	[F_WeChat] [varchar](50) NULL,
	[F_ManagerId] [varchar](50) NULL,
	[F_SecurityLevel] [int] NULL,
	[F_Signature] [varchar](500) NULL,
	[F_OrganizeId] [varchar](50) NULL,
	[F_DepartmentId] [varchar](500) NULL,
	[F_RoleId] [varchar](500) NULL,
	[F_DutyId] [varchar](500) NULL,
	[F_IsAdmin] [bit] NULL,
	[F_IsBoss] [bit] NULL,
	[F_IsLeaderInDepts] [bit] NULL,
	[F_IsSenior] [bit] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](500) NULL,
	[F_DingTalkUserId] [varchar](50) NULL,
	[F_DingTalkUserName] [varchar](50) NULL,
	[F_DingTalkAvatar] [varchar](100) NULL,
	[F_WxOpenId] [varchar](50) NULL,
	[F_WxNickName] [varchar](50) NULL,
	[F_HeadImgUrl] [varchar](100) NULL,
 CONSTRAINT [PK_Sys_User] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Sys_User] UNIQUE NONCLUSTERED 
(
	[F_Account] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Sys_User] ([F_Id], [F_Account], [F_RealName], [F_NickName], [F_HeadIcon], [F_Gender], [F_Birthday], [F_MobilePhone], [F_Email], [F_WeChat], [F_ManagerId], [F_SecurityLevel], [F_Signature], [F_OrganizeId], [F_DepartmentId], [F_RoleId], [F_DutyId], [F_IsAdmin], [F_IsBoss], [F_IsLeaderInDepts], [F_IsSenior], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_DingTalkUserId], [F_DingTalkUserName], [F_DingTalkAvatar], [F_WxOpenId], [F_WxNickName], [F_HeadImgUrl]) VALUES (N'6052f242-15ae-4b77-ad95-929f8a6f244c', N'10010', N'哈哈哈', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'5AB270C0-5D33-4203-A54F-4552699FDA3C', N'554C61CE-6AE0-44EB-B33D-A462BE7EB3E1', N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', N'23ED024E-0AAA-4C8D-9216-D1AB93348D26', NULL, NULL, 0, 0, NULL, NULL, 1, NULL, CAST(0x0000AB9200A2B0D5 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AB9200AFC110 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_User] ([F_Id], [F_Account], [F_RealName], [F_NickName], [F_HeadIcon], [F_Gender], [F_Birthday], [F_MobilePhone], [F_Email], [F_WeChat], [F_ManagerId], [F_SecurityLevel], [F_Signature], [F_OrganizeId], [F_DepartmentId], [F_RoleId], [F_DutyId], [F_IsAdmin], [F_IsBoss], [F_IsLeaderInDepts], [F_IsSenior], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_DingTalkUserId], [F_DingTalkUserName], [F_DingTalkAvatar], [F_WxOpenId], [F_WxNickName], [F_HeadImgUrl]) VALUES (N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'admin', N'超级管理员', N'超级管理员', NULL, 1, CAST(0x0000AB8B00000000 AS DateTime), N'13600000000', N'3333', NULL, NULL, NULL, NULL, N'5AB270C0-5D33-4203-A54F-4552699FDA3C', N'554C61CE-6AE0-44EB-B33D-A462BE7EB3E1', NULL, NULL, 0, 0, 0, 0, NULL, 0, 1, N'系统内置账户', CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'闫志辉', NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_User] ([F_Id], [F_Account], [F_RealName], [F_NickName], [F_HeadIcon], [F_Gender], [F_Birthday], [F_MobilePhone], [F_Email], [F_WeChat], [F_ManagerId], [F_SecurityLevel], [F_Signature], [F_OrganizeId], [F_DepartmentId], [F_RoleId], [F_DutyId], [F_IsAdmin], [F_IsBoss], [F_IsLeaderInDepts], [F_IsSenior], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_DingTalkUserId], [F_DingTalkUserName], [F_DingTalkAvatar], [F_WxOpenId], [F_WxNickName], [F_HeadImgUrl]) VALUES (N'e87f0324-6c66-4352-a15f-8fb2685d840f', N'10011', N'啦啦啦', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'5AB270C0-5D33-4203-A54F-4552699FDA3C', N'5B417E2B-4B96-4F37-8BAA-10E5A812D05E', N'4B2140D3-E61D-488E-ADF6-FF0EBCBC5D2C', N'23ED024E-0AAA-4C8D-9216-D1AB93348D26', NULL, NULL, 0, 0, NULL, NULL, 1, NULL, CAST(0x0000AB9200ADBE2F AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AB9200AFCFEC AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[Sys_ServerState]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_ServerState](
	[F_Id] [varchar](50) NOT NULL,
	[F_WebSite] [varchar](200) NOT NULL,
	[F_ARM] [varchar](50) NOT NULL,
	[F_CPU] [varchar](50) NOT NULL,
	[F_IIS] [varchar](50) NOT NULL,
	[F_Date] [date] NOT NULL,
	[F_Cout] [int] NOT NULL,
 CONSTRAINT [PK_Sys_ServerState] PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Sys_ServerState] UNIQUE NONCLUSTERED 
(
	[F_WebSite] ASC,
	[F_Date] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Sys_ServerState] ([F_Id], [F_WebSite], [F_ARM], [F_CPU], [F_IIS], [F_Date], [F_Cout]) VALUES (N'05a6146e-48d5-448e-96ae-005d7914c196', N'D:\WebSite22', N'19', N'3.44', N'0', CAST(0x09410B00 AS Date), 2880)
INSERT [dbo].[Sys_ServerState] ([F_Id], [F_WebSite], [F_ARM], [F_CPU], [F_IIS], [F_Date], [F_Cout]) VALUES (N'07c7d9de-d1a3-434a-86a6-f3fe4d0d28f6', N'WaterCloud.Web', N'77.45', N'11.66', N'0', CAST(0xF8400B00 AS Date), 87)
INSERT [dbo].[Sys_ServerState] ([F_Id], [F_WebSite], [F_ARM], [F_CPU], [F_IIS], [F_Date], [F_Cout]) VALUES (N'1ab7e5bc-1d24-41a3-aa6c-f870da90d4be', N'WaterCloud.Web', N'83.81', N'14', N'0', CAST(0xFB400B00 AS Date), 2)
INSERT [dbo].[Sys_ServerState] ([F_Id], [F_WebSite], [F_ARM], [F_CPU], [F_IIS], [F_Date], [F_Cout]) VALUES (N'3a823abe-dc4e-4899-a157-c434e2120953', N'WaterCloud.Web', N'93.49', N'16.25', N'7', CAST(0xF4400B00 AS Date), 1)
INSERT [dbo].[Sys_ServerState] ([F_Id], [F_WebSite], [F_ARM], [F_CPU], [F_IIS], [F_Date], [F_Cout]) VALUES (N'3a823abe-dc4e-4899-a157-c434e2120954', N'WaterCloud.Web', N'93.49', N'16.25', N'4', CAST(0xF5400B00 AS Date), 1)
INSERT [dbo].[Sys_ServerState] ([F_Id], [F_WebSite], [F_ARM], [F_CPU], [F_IIS], [F_Date], [F_Cout]) VALUES (N'3a823abe-dc4e-4899-a157-c434e2120955', N'WaterCloud.Web', N'93.49', N'16.25', N'5', CAST(0xF6400B00 AS Date), 1)
INSERT [dbo].[Sys_ServerState] ([F_Id], [F_WebSite], [F_ARM], [F_CPU], [F_IIS], [F_Date], [F_Cout]) VALUES (N'3a823abe-dc4e-4899-a157-c434e2120956', N'WaterCloud.Web', N'88.88', N'17.28', N'0', CAST(0xF7400B00 AS Date), 41)
INSERT [dbo].[Sys_ServerState] ([F_Id], [F_WebSite], [F_ARM], [F_CPU], [F_IIS], [F_Date], [F_Cout]) VALUES (N'6a8b2eb7-300b-4d3b-af48-135ceb6e8953', N'D:\WebSite22', N'19.72', N'3.61', N'0', CAST(0x0C410B00 AS Date), 1083)
INSERT [dbo].[Sys_ServerState] ([F_Id], [F_WebSite], [F_ARM], [F_CPU], [F_IIS], [F_Date], [F_Cout]) VALUES (N'6c4a2f1e-b4bd-410a-a094-a8063da05f55', N'C:\资料\WaterCloud_Core\WaterCloud.Web', N'82.34', N'21.44', N'0', CAST(0x10410B00 AS Date), 9)
INSERT [dbo].[Sys_ServerState] ([F_Id], [F_WebSite], [F_ARM], [F_CPU], [F_IIS], [F_Date], [F_Cout]) VALUES (N'7eaed697-d694-46e9-a289-1923405648fd', N'C:\资料\WaterCloud_Core\WaterCloud.Web', N'90.03', N'42.69', N'0', CAST(0x08410B00 AS Date), 28)
INSERT [dbo].[Sys_ServerState] ([F_Id], [F_WebSite], [F_ARM], [F_CPU], [F_IIS], [F_Date], [F_Cout]) VALUES (N'9ab2bcc5-6c18-4373-9e47-9e94e1c8daa0', N'D:\WebSite22', N'19.01', N'1.03', N'0', CAST(0x0B410B00 AS Date), 2880)
INSERT [dbo].[Sys_ServerState] ([F_Id], [F_WebSite], [F_ARM], [F_CPU], [F_IIS], [F_Date], [F_Cout]) VALUES (N'c4090d70-84df-4142-a890-942a8083e360', N'D:\WebSite22', N'19', N'0.96', N'0', CAST(0x0A410B00 AS Date), 2880)
INSERT [dbo].[Sys_ServerState] ([F_Id], [F_WebSite], [F_ARM], [F_CPU], [F_IIS], [F_Date], [F_Cout]) VALUES (N'c5fad31a-0411-49b5-b4fc-ddc54fa5a7b7', N'WaterCloud.Web', N'82.75', N'23.8', N'0', CAST(0x06410B00 AS Date), 5)
INSERT [dbo].[Sys_ServerState] ([F_Id], [F_WebSite], [F_ARM], [F_CPU], [F_IIS], [F_Date], [F_Cout]) VALUES (N'e7182526-1d56-4508-a8d9-c108454cbea2', N'WaterCloud.Web', N'76.94', N'13.71', N'0', CAST(0xF9400B00 AS Date), 48)
INSERT [dbo].[Sys_ServerState] ([F_Id], [F_WebSite], [F_ARM], [F_CPU], [F_IIS], [F_Date], [F_Cout]) VALUES (N'fa725595-f843-4b5f-bd76-77920324795f', N'D:\WebSite22', N'19.26', N'12.82', N'0', CAST(0x08410B00 AS Date), 777)
/****** Object:  Table [dbo].[Sys_RoleAuthorize]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_RoleAuthorize](
	[F_Id] [varchar](50) NOT NULL,
	[F_ItemType] [int] NULL,
	[F_ItemId] [varchar](50) NULL,
	[F_ObjectType] [int] NULL,
	[F_ObjectId] [varchar](50) NULL,
	[F_SortCode] [int] NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
 CONSTRAINT [PK_Sys_RoleAuthorize] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'ccfcea25-cab8-42e7-aee3-61663d89ba93', 2, N'91be873e-ccb7-434f-9a3b-d312d6d5798a', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'cd061505-61fe-4a4e-a612-41952ba33e3b', 1, N'163DA347-887C-4C91-8298-EB00FFBFEC84', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'd4cd5d85-c730-4bd9-9d62-3233056fa7f3', 2, N'E29FCBA7-F848-4A8B-BC41-A3C668A9005D', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'da24baba-479c-4017-acee-569b1fa0ce1a', 1, N'54E9D12D-C039-4F01-A6FE-810A147D31D5', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'e7095efa-4793-44f0-8edb-57e21d4aeea2', 1, N'64A1C550-2C61-4A8C-833D-ACD0C012260F', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'ea573da4-7921-40db-bf8f-447ef980ee31', 1, N'85FAF4F4-9CBE-4904-94B3-2B930CA49F0C', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'eb7aabf3-801e-4751-85e9-8972faec4452', 1, N'AF34B824-439E-4365-99CC-C1D30514D869', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'ebff5f54-bbe5-482a-a763-d6fcce17b655', 2, N'5d708d9d-6ebe-40ea-8589-e3efce9e74ec', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'f5dc517b-f045-41ba-bae0-f7053a89c6c9', 2, N'f93763ff-51a1-478d-9585-3c86084c54f3', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'f929d1f3-2485-4d0b-8253-ff778dd30add', 2, N'cd65e50a-0bea-45a9-b82e-f2eacdbd209e', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'fcf8d653-fe9a-4e8f-81d5-f4af1119bbbf', 1, N'F2DAD50B-95DF-48F7-8638-BA503B539143', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'04d23b62-8401-4e50-8279-aaeb66377daa', 2, N'FD3D073C-4F88-467A-AE3B-CDD060952CE6', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'0f7b0b1b-d925-45d5-adf9-55044a7f4c19', 2, N'5d708d9d-6ebe-40ea-8589-e3efce9e74ec', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'1afefe4f-c76d-488b-b165-e797b017c216', 2, N'e75e4efc-d461-4334-a764-56992fec38e6', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'22ddf57d-739d-4da0-b2a7-752459f110a6', 2, N'8a9993af-69b2-4d8a-85b3-337745a1f428', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'244823d7-6b36-4cf9-b63d-c749e91061ae', 2, N'48afe7b3-e158-4256-b50c-cd0ee7c6dcc9', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'250a92b7-a549-4a35-b007-82f90dcf5622', 2, N'104bcc01-0cfd-433f-87f4-29a8a3efb313', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'2af34ef2-522e-4ea3-a8df-668b57e3b4e3', 1, N'337A4661-99A5-4E5E-B028-861CACAF9917', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'2e467fc2-2e71-45c7-ad7c-fad5eb956adf', 2, N'cd65e50a-0bea-45a9-b82e-f2eacdbd209e', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'32119cfa-864e-4bf9-945b-2d76dad0a31c', 2, N'f93763ff-51a1-478d-9585-3c86084c54f3', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'379e90a9-5628-47e0-8314-da3e0c550fb3', 2, N'88f7b3a8-fd6d-4f8e-a861-11405f434868', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'37b242db-cd74-400f-964b-96d72bd651c6', 2, N'1ee1c46b-e767-4532-8636-936ea4c12003', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'3ec593df-c492-4270-9aef-e75d521171da', 2, N'14617a4f-bfef-4bc2-b943-d18d3ff8d22f', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'41105b53-4315-442c-bb7f-9b9204355351', 2, N'4727adf7-5525-4c8c-9de5-39e49c268349', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'4ff4e45a-9ed6-4c79-be52-ae6d07d77b3a', 2, N'8c7013a9-3682-4367-8bc6-c77ca89f346b', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'52cce008-0755-4a75-9fdf-6425f74f62b0', 2, N'89d7a69d-b953-4ce2-9294-db4f50f2a157', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'53967381-3765-4bff-ad74-6aa1c9d03596', 2, N'D4FCAFED-7640-449E-80B7-622DDACD5012', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'64f6b88c-7510-4e83-956e-d2d6c163200a', 1, N'F298F868-B689-4982-8C8B-9268CBF0308D', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'68905347-8abf-4f99-bacd-8d3045b06e2b', 2, N'4b876abc-1b85-47b0-abc7-96e313b18ed8', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'6d4f5a20-98b2-40c5-8352-80b15af1b360', 2, N'239077ff-13e1-4720-84e1-67b6f0276979', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'700916e8-3488-45f2-b407-6f30df9b9123', 2, N'B6A9473D-DAA7-4574-9231-13D9E631D379', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'7535204c-60ce-4114-bb12-430a5975b363', 2, N'38e39592-6e86-42fb-8f72-adea0c82cbc1', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'77eafdea-c1e3-4e36-9d70-cdaa7b5200d4', 1, N'38CA5A66-C993-4410-AF95-50489B22939C', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'790dc854-bdbf-4ff0-8cea-2ffffcbe98ed', 2, N'E29FCBA7-F848-4A8B-BC41-A3C668A9005D', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'848319d7-89f3-4ef9-b9fc-fcd99eddf632', 2, N'4bb19533-8e81-419b-86a1-7ee56bf1dd45', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'94fa7a37-986f-4534-87bc-b66bcf7246d0', 1, N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'997a0c17-7de7-4eb3-9adb-c4900b310948', 2, N'74eecdfb-3bee-405d-be07-27a78219c179', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'a06b6fb1-f68a-4856-9e41-44ec8a642139', 2, N'85F5212F-E321-4124-B155-9374AA5D9C10', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'aa5d1775-d95b-4f07-8c2b-7a9820876dc0', 2, N'709a4a7b-4d98-462d-b47c-351ef11db06f', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'af617592-755c-4a6b-99ac-3d1ba457d760', 2, N'91be873e-ccb7-434f-9a3b-d312d6d5798a', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'c0a099cf-8ea2-4193-bd66-403f35ac3e42', 1, N'423A200B-FA5F-4B29-B7B7-A3F5474B725F', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'c5c51f2e-4f7d-4aa9-9b90-b0ad1679771d', 2, N'13c9a15f-c50d-4f09-8344-fd0050f70086', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'cbf03b03-096a-4eb3-9983-81637429e51b', 2, N'82f162cb-beb9-4a79-8924-cd1860e26e2e', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'd5f8dc31-4c8d-41a5-8154-9c855553793a', 2, N'ffffe7f8-900c-413a-9970-bee7d6599cce', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'd71845b3-c39b-4a99-a523-f7a93f3ac038', 2, N'abfdff21-8ebf-4024-8555-401b4df6acd9', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'e1a1c00f-e10e-4589-8144-797f38efcd80', 2, N'0d777b07-041a-4205-a393-d1a009aaafc7', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'b52fbff2-78d5-475d-84ca-6d9ed11d3cc6', NULL, NULL, 1, N'4B2140D3-E61D-488E-ADF6-FF0EBCBC5D2C', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'e61a0833-aa73-4e15-9c03-83b8089e6bd8', 2, N'9FD543DB-C5BB-4789-ACFF-C5865AFB032C', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'e6c1e0a7-aaaa-4adb-b95d-353134a484c6', 1, N'64A1C550-2C61-4A8C-833D-ACD0C012260F', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'eae52f23-db61-4997-82e0-437978517f6a', 1, N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'f5c3d009-3d00-4be1-822c-feba6c89ae0a', 1, N'462027E0-0848-41DD-BCC3-025DCAE65555', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'1fd4ae2a-24fd-49e3-8007-5cc987cd05c0', NULL, NULL, 1, N'42C44AC0-27FA-482D-B5E3-8F9B38B80A6A', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'df6839d3-60c4-447d-9d48-c75d26d77a7b', NULL, NULL, 1, N'7A9CF301-FCDF-4BC9-A52B-A7D4FAE2D344', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'2bf9d1bd-510f-463a-9555-4ab8357bfb08', NULL, NULL, 1, N'2691AB91-3010-465F-8D92-60A97425A45E', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'f8a6180a-ee18-41f4-b28e-d7e4c5a36045', NULL, NULL, 1, N'41652BB4-E2DC-420E-AA8A-8C92784B76E3', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'cf6bf931-ae94-4820-92de-4f80590c615d', NULL, NULL, 1, N'2DA8390B-61A4-4E6C-A6E7-8F6794C7EDCE', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'93e3474f-a8c9-4b0e-bf42-1571e9f4e6b8', NULL, NULL, 1, N'07A8E061-AE47-49C9-8310-F055F35FF44B', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'fbc0b434-f261-47eb-94c8-0c450dd56cc4', NULL, NULL, 1, N'AADB479E-9F87-49B1-AE2D-5DA6FECA3F8E', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'df6281cb-6ad9-4d4b-aff2-ba6f266c1dd3', NULL, NULL, 1, N'8683CB17-5F9D-4A99-A233-A18C4D1CF95B', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'06a71015-42f4-4f16-ad9e-88e0665f7504', NULL, NULL, 1, N'F68956A9-9C53-4C08-AFE8-8A4755FE2B8F', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'bb544273-6e31-4235-b507-3f0ffbfded28', NULL, NULL, 1, N'F9421969-D85C-4E4C-927F-CCFB18388A59', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'0000da5b-6305-4b23-b1db-1f55a66daca8', 2, N'FD3D073C-4F88-467A-AE3B-CDD060952CE6', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'06011f83-df9a-4d5d-bb6f-0b948574256c', 1, N'73FD1267-79BA-4E23-A152-744AF73117E9', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'12cc8ed7-d769-48cc-ab3c-866466462e70', 1, N'96EE855E-8CD2-47FC-A51D-127C131C9FB9', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'15b2279f-7082-421e-a6a3-9abd5bca8303', 1, N'337A4661-99A5-4E5E-B028-861CACAF9917', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'166e6255-d5cc-4718-b257-771398b4132b', 2, N'13c9a15f-c50d-4f09-8344-fd0050f70086', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'1822a1c4-5a49-4742-a937-b63e4f9bd826', 1, N'FE04386D-1307-4E34-8DFB-B56D9FEC78CE', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'1a81232c-037a-4af8-b2cf-55e19fce1582', 2, N'239077ff-13e1-4720-84e1-67b6f0276979', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'1dbe5bcb-3907-49d4-93d9-0d41cc539a1d', 1, N'423A200B-FA5F-4B29-B7B7-A3F5474B725F', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'1e2c7104-1731-4519-81ac-3594f78bf8dd', 1, N'9F56840F-DF92-4936-A48C-8F65A39291A2', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'2078f57a-454a-48c8-9fee-122df8f5786e', 1, N'7B959522-BE45-4747-B89D-592C7F3987A5', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'237da469-8831-45bf-bb78-0e7ca06f33d7', 1, N'38CA5A66-C993-4410-AF95-50489B22939C', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'243814e8-2279-4749-b84a-4e0c269d2910', 2, N'709a4a7b-4d98-462d-b47c-351ef11db06f', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'2c069a5e-8785-49b3-a6e7-355dbad2e89f', 1, N'39E97B05-7B6F-4069-9972-6F9643BC3042', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'3115d827-1419-48ab-88fa-c9b56be6df86', 1, N'822E2523-5105-4AE0-BF48-62459D3641F6', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'335e819a-866c-409d-8233-3449481b0460', 2, N'D4FCAFED-7640-449E-80B7-622DDACD5012', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'34b49233-b13b-4a6f-bc98-3000bf6b75ee', 1, N'91425AF9-F762-43AF-B784-107D23FFDC85', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'35753609-e0d7-4829-9685-6cafe02c7ca7', 1, N'462027E0-0848-41DD-BCC3-025DCAE65555', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'3f21e866-1f79-4cac-9f8e-91a0cb1014ce', 2, N'85F5212F-E321-4124-B155-9374AA5D9C10', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'43ad8ba2-3258-40ce-a121-a4c4c1af0871', 1, N'a3a4742d-ca39-42ec-b95a-8552a6fae579', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'474417c9-51de-40e9-b2dc-59d169f0bf12', 1, N'ABA7DA44-A291-4A25-9BDC-C310CF1C931C', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'4d0ba76b-dbb0-4e4f-b83e-92df13bf702a', 2, N'ffffe7f8-900c-413a-9970-bee7d6599cce', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'4d26e4ba-cf4f-4783-a4bd-84e1f2f9ecb3', 1, N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'5324f369-ce2d-47cc-a3c5-cf4f690a7914', 1, N'D2ECB516-4CB7-49B1-B536-504382115DD2', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'577c000a-2997-4915-aa24-412c4acfbb38', 1, N'6BBC3562-1051-4246-98B0-9F37CAC40DC8', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'5ae6902f-0520-4000-a495-6db64d3ff469', 1, N'C3D12056-D906-4D8B-8B9C-954942742BDE', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'6e725406-22c9-4c19-8f85-054f97ee20f4', 1, N'49F61713-C1E4-420E-BEEC-0B4DBC2D7DE8', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'6e83c40f-c7fc-4b96-86aa-b17485a2d8ca', 1, N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'766067c0-ebef-43f6-b49b-a7261634ff05', 2, N'88f7b3a8-fd6d-4f8e-a861-11405f434868', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'77699534-4f0b-44f0-a6d2-3953334be95a', 1, N'A33ADBFC-089B-4981-BFAB-08178052EE36', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'844841a3-a465-4bba-816e-920dbdca9715', 1, N'0EDF1DDB-CA17-4D08-AA25-914FE4E13324', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'8e81b948-313c-4d2c-b752-92a83197b7e6', 1, N'e72c75d0-3a69-41ad-b220-13c9a62ec788', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'90a522bb-5e94-48d7-be44-e4180ee7bc3d', 1, N'df9920e0-ba33-4e36-a911-ef08c6ea77ea', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'90a63c30-1c20-4f47-9cd8-d9bcc44e10d9', 1, N'F298F868-B689-4982-8C8B-9268CBF0308D', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'94a7787a-6659-49cc-a902-7ea63231c177', 2, N'4bb19533-8e81-419b-86a1-7ee56bf1dd45', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'9c9cfbd1-525a-4f02-a765-30a72c771e23', 2, N'B6A9473D-DAA7-4574-9231-13D9E631D379', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'9cc97a78-d8ca-45bd-aad5-efbeef4a4c8a', 2, N'8a9993af-69b2-4d8a-85b3-337745a1f428', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'9fef22f9-1962-4cd0-84a6-ba85b9ce29c1', 1, N'B3BF41E1-0299-4EFE-BA76-A7377AC81B38', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'a8b2ff07-7af6-4e6a-8b9a-5785a25afe8c', 1, N'1F14A1ED-B22E-4E4A-BF10-6CF018507E76', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'a8cf8cde-db46-4f5e-a3b2-883aef62ff7f', 1, N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'b10ca258-bd85-403c-aded-95b546fecaea', 1, N'ACDBD633-99A0-4BEF-B67C-3A5B41E7C1FD', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
GO
print 'Processed 100 total records'
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'c0257ed1-eae3-4260-9633-0f53b0e3d106', 2, N'9FD543DB-C5BB-4789-ACFF-C5865AFB032C', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'c2e04783-a45a-449d-9f7f-83d6a855ec22', 1, N'7858E329-16FC-49F4-93A1-11E2E7EF2998', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId]) VALUES (N'c2e7dba8-b103-4c63-a597-136110a89c7b', 2, N'e75e4efc-d461-4334-a764-56992fec38e6', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
/****** Object:  Table [dbo].[Sys_Role]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Role](
	[F_Id] [varchar](50) NOT NULL,
	[F_OrganizeId] [varchar](50) NULL,
	[F_Category] [int] NULL,
	[F_EnCode] [varchar](50) NULL,
	[F_FullName] [varchar](50) NULL,
	[F_Type] [varchar](50) NULL,
	[F_AllowEdit] [bit] NULL,
	[F_AllowDelete] [bit] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](500) NULL,
 CONSTRAINT [PK_Sys_Role] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Sys_Role] UNIQUE NONCLUSTERED 
(
	[F_EnCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, N'administrators', N'超级管理员', N'1', 1, 1, 1, 0, 1, NULL, CAST(0x0000A63F00000000 AS DateTime), NULL, CAST(0x0000A64D00011940 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'4B2140D3-E61D-488E-ADF6-FF0EBCBC5D2C', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, N'system', N'系统管理员', N'1', 0, 0, 2, 0, 1, NULL, CAST(0x0000A63F00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'42C44AC0-27FA-482D-B5E3-8F9B38B80A6A', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, N'configuration', N'系统配置员', N'2', 0, 0, 3, 0, 1, NULL, CAST(0x0000A63F00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'7A9CF301-FCDF-4BC9-A52B-A7D4FAE2D344', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, N'developer', N'系统开发人员', N'2', 0, 0, 4, 0, 1, NULL, CAST(0x0000A63F00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'2691AB91-3010-465F-8D92-60A97425A45E', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, N'innerStaff', N'内部员工', N'2', 0, 0, 5, 0, 1, NULL, CAST(0x0000A63F00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'41652BB4-E2DC-420E-AA8A-8C92784B76E3', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, N'archvist', N'档案管理员', N'2', 0, 0, 6, 0, 1, NULL, CAST(0x0000A63F00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'531F7D18-C49F-4F4F-A920-0074FCB52078', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, N'guest', N'访客人员', N'2', 0, 0, 7, 0, 1, NULL, CAST(0x0000A63F00000000 AS DateTime), NULL, CAST(0x0000A64D010322AC AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'2DA8390B-61A4-4E6C-A6E7-8F6794C7EDCE', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, N'tester', N'测试人员', N'2', 0, 0, 8, 0, 1, NULL, CAST(0x0000A63F00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'07A8E061-AE47-49C9-8310-F055F35FF44B', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, N'services', N'客服人员', N'2', 0, 0, 9, 0, 1, NULL, CAST(0x0000A63F00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'AADB479E-9F87-49B1-AE2D-5DA6FECA3F8E', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, N'implement', N'实施人员', N'2', 0, 0, 10, 0, 1, NULL, CAST(0x0000A63F00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'8683CB17-5F9D-4A99-A233-A18C4D1CF95B', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, N'businessPersonnel', N'业务人员', N'2', 0, 0, 12, 0, 1, NULL, CAST(0x0000A63F00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'F68956A9-9C53-4C08-AFE8-8A4755FE2B8F', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, N'inventory', N'库存管理员', N'2', 0, 0, 13, 0, 1, NULL, CAST(0x0000A63F00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'F9421969-D85C-4E4C-927F-CCFB18388A59', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, N'contracts', N'合同专员', N'2', 0, 0, 14, 0, 1, NULL, CAST(0x0000A63F00000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'23ED024E-0AAA-4C8D-9216-D1AB93348D26', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'employee', N'员工', NULL, 0, 0, 1, 0, 1, NULL, CAST(0x0000A64100000000 AS DateTime), NULL, CAST(0x0000A64700FC6480 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'D335A5B8-7DED-495C-B8FC-EE933FB30779', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'charge', N'主管', NULL, 0, 0, 2, 0, 1, NULL, CAST(0x0000A64100000000 AS DateTime), NULL, CAST(0x0000A64700FBF658 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'0052A230-EA7B-4F3A-A1C9-1611FF26481A', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'manager', N'经理', NULL, 0, 0, 3, 0, 1, NULL, CAST(0x0000A64100000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'CEEA79E8-2E19-4294-8447-13247053DE04', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'director', N'总监', NULL, 0, 0, 4, 0, 1, NULL, CAST(0x0000A64100000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'EA56E457-5024-49AF-9410-D5D71D24F14B', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'vicegeneral', N'副总经理', NULL, 0, 0, 5, 0, 1, NULL, CAST(0x0000A64100000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'796E9C6A-8432-4BA6-8CF6-EFFAB6F2098C', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'general', N'总经理', NULL, 0, 0, 6, 0, 1, NULL, CAST(0x0000A64100000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'91E09653-D3DE-416A-BF6C-E91E60B4B4CF', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'chairman', N'主任', NULL, 0, 0, 7, 0, 1, NULL, CAST(0x0000A64100000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'C609D4D6-81F7-4647-BF2F-81BD4CED2C19', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'fileattache', N'档案专员', NULL, 0, 0, 8, 0, 1, NULL, CAST(0x0000A64100000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'F03EA699-9A0A-4EE9-9D33-27B9A7DFF09B', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'engineer', N'高级工程师', NULL, 0, 0, 9, 0, 1, NULL, CAST(0x0000A64100000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'0CD2A952-2EE0-4CAF-9757-617D5075745B', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'president', N'董事长', NULL, 0, 0, 10, 0, 1, NULL, CAST(0x0000A64100000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'B2624F67-E092-461A-AAAD-13592A9429D9', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'10018', N'行政助理', NULL, 0, 0, 11, 0, 1, NULL, CAST(0x0000A64100000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'3263446A-D303-4C42-B436-6F46BF7CE86A', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'10019', N'总裁', NULL, 0, 0, 12, 0, 1, NULL, CAST(0x0000A64100000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'CB116AA3-88CC-4CF7-B0BC-7C55EC502183', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'10020', N'首席执行官', NULL, 0, 0, 13, 0, 1, NULL, CAST(0x0000A64100000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'7E2639BA-02B9-417A-9AAA-CF6DCF8487E0', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'10022', N'力资源专员', NULL, 0, 0, 14, 0, 1, NULL, CAST(0x0000A64100000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'2B3406F9-B7FF-4D23-BC61-D8EEB6C88D5B', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'10023', N'行业顾问', NULL, 0, 0, 15, 0, 1, NULL, CAST(0x0000A64100000000 AS DateTime), NULL, CAST(0x0000AB9200F33BE8 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'05691457-5284-4FEE-8D7E-C35141F3FF39', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'10024', N'总经理助理', NULL, 0, 0, 16, 0, 1, NULL, CAST(0x0000A64100000000 AS DateTime), NULL, CAST(0x0000AB9200E8A939 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'3A2FD4D7-E73C-44E4-8AED-B6EE5980779E', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'10025', N'大堂经理', NULL, 0, 0, 17, 0, 1, NULL, CAST(0x0000A64100000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'ef932ee5-82e5-4c54-8248-85536266321c', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'222222', N'2222222', NULL, 0, 0, 1, 0, 1, NULL, CAST(0x0000AB9800BE7341 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[Sys_QuickModule]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_QuickModule](
	[F_Id] [varchar](50) NOT NULL,
	[F_ModuleId] [varchar](50) NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](50) NULL,
 CONSTRAINT [PK_Sys_QuickModule] PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Sys_QuickModule] UNIQUE NONCLUSTERED 
(
	[F_ModuleId] ASC,
	[F_CreatorUserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Sys_QuickModule] ([F_Id], [F_ModuleId], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'13ec7aab-d25e-4ae9-aff4-a5a3d303ef9f', N'26452c9a-243d-4c81-97b9-a3ad581c3bf4', 0, 1, NULL, CAST(0x0000AB9D00EDEBF6 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_QuickModule] ([F_Id], [F_ModuleId], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'3b38d852-9a06-4d95-b6df-c431cb1e4ed7', N'64A1C550-2C61-4A8C-833D-ACD0C012260F', 0, 1, NULL, CAST(0x0000AB9D00EDEBF6 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_QuickModule] ([F_Id], [F_ModuleId], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'5b3c77aa-b2cb-4e04-a521-2856bc0360cf', N'e72c75d0-3a69-41ad-b220-13c9a62ec788', 0, 1, NULL, CAST(0x0000AB9D00EDEBF6 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_QuickModule] ([F_Id], [F_ModuleId], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'604df5c8-70ad-4f26-a247-934b313feeb4', N'49F61713-C1E4-420E-BEEC-0B4DBC2D7DE8', 0, 1, NULL, CAST(0x0000AB9D00EDEBF5 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_QuickModule] ([F_Id], [F_ModuleId], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'88498c45-6509-44d2-be4c-8d96064d8d03', N'F298F868-B689-4982-8C8B-9268CBF0308D', 0, 1, NULL, CAST(0x0000AB9D00EDEBF5 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_QuickModule] ([F_Id], [F_ModuleId], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'b855c5d2-9266-4c38-8c54-66ed783bdc70', N'38CA5A66-C993-4410-AF95-50489B22939C', 0, 1, NULL, CAST(0x0000AB9D00EDEBF6 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_QuickModule] ([F_Id], [F_ModuleId], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'e1a6916d-1136-4fae-bfd7-1976a7e9305d', N'a3a4742d-ca39-42ec-b95a-8552a6fae579', 0, 1, NULL, CAST(0x0000AB9D00EDEBF6 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_QuickModule] ([F_Id], [F_ModuleId], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'e32603f1-a0f9-40ee-8279-8b9510cd7ea6', N'96EE855E-8CD2-47FC-A51D-127C131C9FB9', 0, 1, NULL, CAST(0x0000AB9D00EDEBF5 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[Sys_Organize]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Organize](
	[F_Id] [varchar](50) NOT NULL,
	[F_ParentId] [varchar](50) NULL,
	[F_Layers] [int] NULL,
	[F_EnCode] [varchar](50) NULL,
	[F_FullName] [varchar](50) NULL,
	[F_ShortName] [varchar](50) NULL,
	[F_CategoryId] [varchar](50) NULL,
	[F_ManagerId] [varchar](50) NULL,
	[F_TelePhone] [varchar](20) NULL,
	[F_MobilePhone] [varchar](20) NULL,
	[F_WeChat] [varchar](50) NULL,
	[F_Fax] [varchar](20) NULL,
	[F_Email] [varchar](50) NULL,
	[F_AreaId] [varchar](50) NULL,
	[F_Address] [varchar](500) NULL,
	[F_AllowEdit] [bit] NULL,
	[F_AllowDelete] [bit] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](500) NULL,
 CONSTRAINT [PK_Sys_Organize] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Sys_Organize] UNIQUE NONCLUSTERED 
(
	[F_EnCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Sys_Organize] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_ShortName], [F_CategoryId], [F_ManagerId], [F_TelePhone], [F_MobilePhone], [F_WeChat], [F_Fax], [F_Email], [F_AreaId], [F_Address], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'5AB270C0-5D33-4203-A54F-4552699FDA3C', N'0', 1, N'Company', N'上海东鞋贸易有限公司', NULL, N'Company', N'郭总', NULL, NULL, NULL, NULL, NULL, NULL, N'上海市松江区', 0, 0, 1, 0, 1, NULL, CAST(0x0000A62100000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Organize] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_ShortName], [F_CategoryId], [F_ManagerId], [F_TelePhone], [F_MobilePhone], [F_WeChat], [F_Fax], [F_Email], [F_AreaId], [F_Address], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'80E10CD5-7591-40B8-A005-BCDE1B961E76', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'Administration', N'行政部', NULL, N'Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 2, 0, 1, NULL, CAST(0x0000A62100000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Organize] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_ShortName], [F_CategoryId], [F_ManagerId], [F_TelePhone], [F_MobilePhone], [F_WeChat], [F_Fax], [F_Email], [F_AreaId], [F_Address], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'5B417E2B-4B96-4F37-8BAA-10E5A812D05E', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'Market', N'市场部', NULL, N'Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 1, NULL, CAST(0x0000A62100000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Organize] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_ShortName], [F_CategoryId], [F_ManagerId], [F_TelePhone], [F_MobilePhone], [F_WeChat], [F_Fax], [F_Email], [F_AreaId], [F_Address], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'F02A66CA-3D8B-491B-8A17-C9ACA3E3B5DD', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'Financial', N'财务部', NULL, N'Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 1, NULL, CAST(0x0000A62100000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Organize] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_ShortName], [F_CategoryId], [F_ManagerId], [F_TelePhone], [F_MobilePhone], [F_WeChat], [F_Fax], [F_Email], [F_AreaId], [F_Address], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'554C61CE-6AE0-44EB-B33D-A462BE7EB3E1', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'Ministry', N'技术部', NULL, N'Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 5, 0, 1, NULL, CAST(0x0000A62100000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Organize] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_ShortName], [F_CategoryId], [F_ManagerId], [F_TelePhone], [F_MobilePhone], [F_WeChat], [F_Fax], [F_Email], [F_AreaId], [F_Address], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'BD830AEF-0A2E-4228-ACF8-8843C39D41D8', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'Purchase', N'采购部', NULL, N'Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 6, 0, 1, NULL, CAST(0x0000A62100000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Organize] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_ShortName], [F_CategoryId], [F_ManagerId], [F_TelePhone], [F_MobilePhone], [F_WeChat], [F_Fax], [F_Email], [F_AreaId], [F_Address], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'253EDA1F-F158-4F3F-A778-B7E538E052A2', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'Manufacturing', N'生产部', NULL, N'Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 1, NULL, CAST(0x0000A62100000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Organize] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_ShortName], [F_CategoryId], [F_ManagerId], [F_TelePhone], [F_MobilePhone], [F_WeChat], [F_Fax], [F_Email], [F_AreaId], [F_Address], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'DFA2FB91-C909-44A3-9282-BF946102E1C9', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'HumanResourse', N'人事部', NULL, N'Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 8, 0, 1, NULL, CAST(0x0000A62100000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[Sys_Notice]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Notice](
	[F_Id] [varchar](50) NOT NULL,
	[F_Title] [varchar](50) NULL,
	[F_Content] [text] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_CreatorUserName] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](500) NULL,
 CONSTRAINT [PK_Sys_Notice] PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Sys_Notice] UNIQUE NONCLUSTERED 
(
	[F_Title] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Sys_Notice] ([F_Id], [F_Title], [F_Content], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'719decb4-fd6d-40bb-b56c-d5228332cd8c', N'系统公告', N'测试测测测测踩踩踩踩踩踩踩踩踩踩踩踩踩踩踩1asdadasddasdasdasdasdsadasdadasdasdasdasdasdssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss', 0, 1, NULL, CAST(0x0000AB9D010D4BD4 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'超级管理员', CAST(0x0000AB9D0111E532 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
/****** Object:  Table [dbo].[Sys_ModuleFormInstance]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_ModuleFormInstance](
	[F_Id] [varchar](50) NOT NULL,
	[F_FormId] [varchar](50) NOT NULL,
	[F_ObjectId] [varchar](50) NULL,
	[F_InstanceJson] [varchar](max) NULL,
	[F_SortCode] [int] NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
 CONSTRAINT [PK_Sys_ModuleFormInstance] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_ModuleForm]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_ModuleForm](
	[F_Id] [varchar](50) NOT NULL,
	[F_ModuleId] [varchar](50) NULL,
	[F_EnCode] [varchar](50) NULL,
	[F_FullName] [varchar](50) NULL,
	[F_FormJson] [varchar](max) NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](500) NULL,
 CONSTRAINT [PK_Sys_ModuleForm] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_ModuleButton]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_ModuleButton](
	[F_Id] [varchar](50) NOT NULL,
	[F_ModuleId] [varchar](50) NULL,
	[F_ParentId] [varchar](50) NULL,
	[F_Layers] [int] NULL,
	[F_EnCode] [varchar](50) NULL,
	[F_FullName] [varchar](50) NULL,
	[F_Icon] [varchar](50) NULL,
	[F_Location] [int] NULL,
	[F_JsEvent] [varchar](50) NULL,
	[F_UrlAddress] [varchar](500) NULL,
	[F_Split] [bit] NULL,
	[F_IsPublic] [bit] NULL,
	[F_AllowEdit] [bit] NULL,
	[F_AllowDelete] [bit] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](50) NULL,
 CONSTRAINT [PK_Sys_ModuleButton] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'9FD543DB-C5BB-4789-ACFF-C5865AFB032C', N'64A1C550-2C61-4A8C-833D-ACD0C012260F', N'0', 1, N'NF-add', N'新增菜单', NULL, 1, N'add', N'/SystemManage/Module/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E01027D70 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'E29FCBA7-F848-4A8B-BC41-A3C668A9005D', N'64A1C550-2C61-4A8C-833D-ACD0C012260F', N'0', 1, N'NF-edit', N'修改菜单', NULL, 2, N'edit', N'/SystemManage/Module/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E01027668 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'85F5212F-E321-4124-B155-9374AA5D9C10', N'64A1C550-2C61-4A8C-833D-ACD0C012260F', N'0', 1, N'NF-delete', N'删除菜单', NULL, 2, N'delete', N'/SystemManage/Module/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E010285A4 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'D4FCAFED-7640-449E-80B7-622DDACD5012', N'64A1C550-2C61-4A8C-833D-ACD0C012260F', N'0', 1, N'NF-details', N'查看菜单', NULL, 2, N'details', N'/SystemManage/Module/Details', 1, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(0x0000ABAB008D469A AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'4bb19533-8e81-419b-86a1-7ee56bf1dd45', N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B', N'0', 1, N'NF-delete', N'删除机构', NULL, 2, N'delete', N'/SystemManage/Organize/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(0x0000AB9600ED0303 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'709a4a7b-4d98-462d-b47c-351ef11db06f', N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B', N'0', 1, N'NF-Details', N'查看机构', NULL, 2, N'details', N'/SystemManage/Organize/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(0x0000AB9600ED08E1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'91be873e-ccb7-434f-9a3b-d312d6d5798a', N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B', N'0', 1, N'NF-edit', N'修改机构', NULL, 2, N'edit', N'/SystemManage/Organize/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(0x0000AB9600ECFBEF AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'cd65e50a-0bea-45a9-b82e-f2eacdbd209e', N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B', N'0', 1, N'NF-add', N'新建机构', NULL, 1, N'add', N'/SystemManage/Organize/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(0x0000AB9600ECF2BF AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'239077ff-13e1-4720-84e1-67b6f0276979', N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', N'0', 1, N'NF-delete', N'删除角色', NULL, 2, N'delete', N'/SystemManage/Role/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'5d708d9d-6ebe-40ea-8589-e3efce9e74ec', N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', N'0', 1, N'NF-add', N'新建角色', NULL, 1, N'add', N'/SystemManage/Role/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'f93763ff-51a1-478d-9585-3c86084c54f3', N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', N'0', 1, N'NF-details', N'查看角色', NULL, 2, N'details', N'/SystemManage/Role/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(0x0000ABAB008CF15D AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'ffffe7f8-900c-413a-9970-bee7d6599cce', N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', N'0', 1, N'NF-edit', N'修改角色', NULL, 2, N'edit', N'/SystemManage/Role/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'13c9a15f-c50d-4f09-8344-fd0050f70086', N'F298F868-B689-4982-8C8B-9268CBF0308D', N'0', 1, N'NF-add', N'新建岗位', NULL, 1, N'add', N'/SystemManage/Duty/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'88f7b3a8-fd6d-4f8e-a861-11405f434868', N'F298F868-B689-4982-8C8B-9268CBF0308D', N'0', 1, N'NF-details', N'查看岗位', NULL, 2, N'details', N'/SystemManage/Duty/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(0x0000ABAB008D00EC AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'8a9993af-69b2-4d8a-85b3-337745a1f428', N'F298F868-B689-4982-8C8B-9268CBF0308D', N'0', 1, N'NF-delete', N'删除岗位', NULL, 2, N'delete', N'/SystemManage/Duty/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'e75e4efc-d461-4334-a764-56992fec38e6', N'F298F868-B689-4982-8C8B-9268CBF0308D', N'0', 1, N'NF-edit', N'修改岗位', NULL, 2, N'edit', N'/SystemManage/Duty/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'14617a4f-bfef-4bc2-b943-d18d3ff8d22f', N'38CA5A66-C993-4410-AF95-50489B22939C', N'0', 1, N'NF-delete', N'删除用户', NULL, 2, N'delete', N'/SystemManage/User/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E00EB2ABC AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'4727adf7-5525-4c8c-9de5-39e49c268349', N'38CA5A66-C993-4410-AF95-50489B22939C', N'0', 1, N'NF-edit', N'修改用户', NULL, 2, N'edit', N'/SystemManage/User/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E00EB1CAC AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'74eecdfb-3bee-405d-be07-27a78219c179', N'38CA5A66-C993-4410-AF95-50489B22939C', N'0', 1, N'NF-add', N'新建用户', NULL, 1, N'add', N'/SystemManage/User/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E00EB0668 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'abfdff21-8ebf-4024-8555-401b4df6acd9', N'38CA5A66-C993-4410-AF95-50489B22939C', N'0', 1, N'NF-details', N'查看用户', NULL, 2, N'details', N'/SystemManage/User/Details', 1, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(0x0000ABAB008D0D1A AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'38e39592-6e86-42fb-8f72-adea0c82cbc1', N'38CA5A66-C993-4410-AF95-50489B22939C', N'0', NULL, N'NF-revisepassword', N'密码重置', NULL, 2, N'revisepassword', N'/SystemManage/User/RevisePassword', 1, 0, 0, 0, 5, 0, 1, NULL, CAST(0x0000A64E00EBBE64 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AB9600EFDC94 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'15362a59-b242-494a-bc6e-413b4a63580e', N'38CA5A66-C993-4410-AF95-50489B22939C', N'0', NULL, N'NF-disabled', N'禁用', NULL, 2, N'disabled', N'/SystemManage/User/DisabledAccount', 0, 0, 0, 0, 6, 0, 1, NULL, CAST(0x0000A64E00FE4E58 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AB9600EFE33D AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'2a8f5342-5eb7-491c-a1a9-a2631d8eb5d6', N'38CA5A66-C993-4410-AF95-50489B22939C', N'0', NULL, N'NF-enabled', N'启用', NULL, 2, N'enabled', N'/SystemManage/User/EnabledAccount', 0, 0, 0, 0, 7, 0, 1, NULL, CAST(0x0000A64E00FEEB60 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AB9600EFE978 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'48afe7b3-e158-4256-b50c-cd0ee7c6dcc9', N'337A4661-99A5-4E5E-B028-861CACAF9917', N'0', 1, N'NF-add', N'新建区域', NULL, 1, N'add', N'/SystemManage/Area/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E010019B8 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'89d7a69d-b953-4ce2-9294-db4f50f2a157', N'337A4661-99A5-4E5E-B028-861CACAF9917', N'0', 1, N'NF-edit', N'修改区域', NULL, 2, N'edit', N'/SystemManage/Area/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E01002C78 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'8c7013a9-3682-4367-8bc6-c77ca89f346b', N'337A4661-99A5-4E5E-B028-861CACAF9917', N'0', 1, N'NF-delete', N'删除区域', NULL, 2, N'delete', N'/SystemManage/Area/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E0100395C AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'0d777b07-041a-4205-a393-d1a009aaafc7', N'423A200B-FA5F-4B29-B7B7-A3F5474B725F', N'0', 1, N'NF-edit', N'修改字典', NULL, 2, N'edit', N'/SystemManage/ItemsData/Form', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E01018C08 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'104bcc01-0cfd-433f-87f4-29a8a3efb313', N'423A200B-FA5F-4B29-B7B7-A3F5474B725F', N'0', 1, N'NF-add', N'新建字典', NULL, 1, N'add', N'/SystemManage/ItemsData/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E010183D4 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'1ee1c46b-e767-4532-8636-936ea4c12003', N'423A200B-FA5F-4B29-B7B7-A3F5474B725F', N'0', 1, N'NF-delete', N'删除字典', NULL, 2, N'delete', N'/SystemManage/ItemsData/DeleteForm', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E010198EC AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'82f162cb-beb9-4a79-8924-cd1860e26e2e', N'423A200B-FA5F-4B29-B7B7-A3F5474B725F', N'0', 1, N'NF-details', N'查看字典', NULL, 2, N'details', N'/SystemManage/ItemsData/Details', 0, 0, 0, 0, 5, 0, 1, NULL, NULL, NULL, CAST(0x0000ABAB008D3919 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'4b876abc-1b85-47b0-abc7-96e313b18ed8', N'423A200B-FA5F-4B29-B7B7-A3F5474B725F', N'0', NULL, N'NF-itemstype', N'分类管理', NULL, 1, N'itemstype', N'/SystemManage/ItemsType/Index', 0, 0, 0, 0, 2, 0, 1, NULL, CAST(0x0000A64E01012D1C AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AB9600F00ACF AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'0f0596f6-aa50-4df0-ad8e-af867cb4a9de', N'e72c75d0-3a69-41ad-b220-13c9a62ec788', N'0', 1, N'NF-delete', N'删除备份', NULL, 2, N'delete', N'/SystemSecurity/DbBackup/DeleteForm', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E01045104 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'41862743-f703-4b6d-be54-08d253eb0ebc', N'e72c75d0-3a69-41ad-b220-13c9a62ec788', N'0', 1, N'NF-add', N'新建备份', NULL, 1, N'add', N'/SystemSecurity/DbBackup/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E01031244 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'aed66cfb-d78e-43d4-9987-c714546be7eb', N'e72c75d0-3a69-41ad-b220-13c9a62ec788', N'0', 1, N'NF-download', N'下载备份', NULL, 2, N'download', N'/SystemSecurity/DbBackup/DownloadBackup', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(0x0000AB9600F027AC AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'329c0326-ce68-4a24-904d-aade67a90fc7', N'a3a4742d-ca39-42ec-b95a-8552a6fae579', N'0', 1, N'NF-details', N'查看策略', NULL, 2, N'details', N'/SystemSecurity/FilterIP/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(0x0000ABAB008D5949 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'8379135e-5b13-4236-bfb1-9289e6129034', N'a3a4742d-ca39-42ec-b95a-8552a6fae579', N'0', 1, N'NF-delete', N'删除策略', NULL, 2, N'delete', N'/SystemSecurity/FilterIP/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E01071BDC AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'aaf58c1b-4af2-4e5f-a3e4-c48e86378191', N'a3a4742d-ca39-42ec-b95a-8552a6fae579', N'0', 1, N'NF-edit', N'修改策略', NULL, 2, N'edit', N'/SystemSecurity/FilterIP/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E0107127C AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'd4074121-0d4f-465e-ad37-409bbe15bf8a', N'a3a4742d-ca39-42ec-b95a-8552a6fae579', N'0', 1, N'NF-add', N'新建策略', NULL, 1, N'add', N'/SystemSecurity/FilterIP/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E010707F0 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'3a35c662-a356-45e4-953d-00ebd981cad6', N'96EE855E-8CD2-47FC-A51D-127C131C9FB9', N'0', 1, N'NF-removelog', N'清空日志', NULL, 1, N'removeLog', N'/SystemSecurity/Log/RemoveLog', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(0x0000AB9600F04E7E AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'4c13c9c3-c1a4-4f7e-a061-2266b2c47c7a', N'3593c43a-e4bc-4b7f-9629-0449a3d1818e', N'0', NULL, N'NF-delete', N'删除', NULL, 2, N'delete', N'/DingTalkManage/Department/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, CAST(0x0000A93C01792A4C AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA3700AC4658 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'80afeabc-5502-47cc-a304-a1c736b150d2', N'3593c43a-e4bc-4b7f-9629-0449a3d1818e', N'0', NULL, N'NF-Details', N'查看', NULL, 2, N'details', N'/DingTalkManage/Department/Details', 0, 0, 0, 0, 4, 0, 1, NULL, CAST(0x0000A93C01796994 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA3700AC533C AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'd02984f1-2fea-4507-9442-72b1d81a490c', N'3593c43a-e4bc-4b7f-9629-0449a3d1818e', N'0', NULL, N'NF-edit', N'修改', NULL, 2, N'edit', N'/DingTalkManage/Department/Form', 0, 0, 0, 0, 2, 0, 1, NULL, CAST(0x0000A93C0178C584 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA3700AC3BCC AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'fea84a80-2f19-4118-a2aa-a269a66df346', N'3593c43a-e4bc-4b7f-9629-0449a3d1818e', N'0', NULL, N'NF-add', N'新增', NULL, 1, N'add', N'/DingTalkManage/Department/Form', 0, 0, 0, 0, 1, 0, 1, NULL, CAST(0x0000A93C01781B98 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA3700AC326C AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'a026f86d-d7ed-4cd3-8901-f6c7808026e6', N'9a727a52-43ed-425a-940c-a4b64749f745', N'0', NULL, N'NF-Details', N'查看', NULL, 2, N'details', N'/WeixinMPManage/WxUsers/Details', 0, 0, 0, 0, 4, 0, 1, NULL, CAST(0x0000A93C01796994 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA8000B3D648 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'b5168959-7655-4dce-956a-754e3ebbfb2e', N'9a727a52-43ed-425a-940c-a4b64749f745', N'0', NULL, N'NF-add', N'新增', NULL, 1, N'add', N'/WeixinManage/WxUsers/Form', 0, 0, 0, 0, 1, 0, 1, NULL, CAST(0x0000A93C01781B98 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA8000B3BDAC AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'2f21a804-cd90-4da3-98f3-f31cfe6031dc', N'5b263367-33a8-48e1-89ec-ba225f7d5e7a', N'0', NULL, N'NF-add', N'新增', NULL, 1, N'add', N'/WeixinManage/Users/Form', 0, 0, 0, 0, 1, 0, 1, NULL, CAST(0x0000A93C01781B98 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA3700ABDBB4 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'02f35b16-f299-4805-85cf-f4a76c1b1e8a', N'5b263367-33a8-48e1-89ec-ba225f7d5e7a', N'0', NULL, N'NF-edit', N'修改', NULL, 2, N'edit', N'/DingTalkManage/Users/Form', 0, 0, 0, 0, 2, 0, 1, NULL, CAST(0x0000A93C0178C584 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA3700ABE514 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'10148a76-3843-405c-b5af-b2b3d738a2b0', N'5b263367-33a8-48e1-89ec-ba225f7d5e7a', N'0', NULL, N'NF-delete', N'删除', NULL, 2, N'delete', N'/DingTalkManage/Users/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, CAST(0x0000A93C01792A4C AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA3700ABEFA0 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'f7c7c0ce-1916-449c-b239-a9a5db940c6a', N'5b263367-33a8-48e1-89ec-ba225f7d5e7a', N'0', NULL, N'NF-Details', N'查看', NULL, 2, N'details', N'/DingTalkManage/Users/Details', 0, 0, 0, 0, 4, 0, 1, NULL, CAST(0x0000A93C01796994 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA3700AC0BC0 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'6b639924-6594-4293-ae72-9e1f84bdcbfa', N'9a727a52-43ed-425a-940c-a4b64749f745', N'0', NULL, N'NF-edit', N'修改', NULL, 2, N'edit', N'/WeixinManage/WxUsers/Form', 0, 0, 0, 0, 2, 0, 1, NULL, CAST(0x0000A93C0178C584 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA8000B3C4B4 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'78d0d7df-7b33-4b05-be3f-899b79773643', N'9a727a52-43ed-425a-940c-a4b64749f745', N'0', NULL, N'NF-delete', N'删除', NULL, 2, N'delete', N'/WeixinManage/WxUsers/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, CAST(0x0000A93C01792A4C AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA8000B3CE14 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'27b50b8b-0552-4c1c-a0e9-54f3402aa8e2', N'e40a4371-6835-4f67-a349-c2b02ed6760e', N'0', NULL, N'NF-Details', N'查看', NULL, 2, N'details', N'/WeixinManage/Users/Details', 0, 0, 0, 0, 4, 0, 1, NULL, CAST(0x0000A93C01796994 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA3700AC0BC0 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'6cd3de7d-589b-457f-bfc8-ad3939649519', N'e40a4371-6835-4f67-a349-c2b02ed6760e', N'0', NULL, N'NF-edit', N'修改', NULL, 2, N'edit', N'/WeixinManage/Users/Form', 0, 0, 0, 0, 2, 0, 1, NULL, CAST(0x0000A93C0178C584 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA3700ABE514 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'711e01d6-c5c1-4238-ae23-78e21cf933f3', N'e40a4371-6835-4f67-a349-c2b02ed6760e', N'0', NULL, N'NF-delete', N'删除', NULL, 2, N'delete', N'/WeixinManage/Users/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, CAST(0x0000A93C01792A4C AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA3700ABEFA0 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'de0dd0b8-defe-4766-a8fe-93da339981e8', N'e40a4371-6835-4f67-a349-c2b02ed6760e', N'0', NULL, N'NF-add', N'新增', NULL, 1, N'add', N'/WeixinManage/Users/Form', 0, 0, 0, 0, 1, 0, 1, NULL, CAST(0x0000A93C01781B98 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA3700ABDBB4 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'037df8cd-ed27-4c6e-9a83-9153a7c2727a', N'0c253d7a-f1bf-45c0-9a59-0ad3396323e6', N'0', NULL, N'NF-delete', N'删除', NULL, 2, N'delete', N'/WeixinManage/WxTempMsg/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, CAST(0x0000A93C01792A4C AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA8000B3CE14 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'1d612157-fb91-447b-80ec-e96514c8e00b', N'0c253d7a-f1bf-45c0-9a59-0ad3396323e6', N'0', NULL, N'NF-add', N'新增', NULL, 1, N'add', N'/WeixinManageWxTempMsg/Form', 0, 0, 0, 0, 1, 0, 1, NULL, CAST(0x0000A93C01781B98 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA8000B3BDAC AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'8d7b059e-4105-4dde-944c-c2424f68b5c5', N'0c253d7a-f1bf-45c0-9a59-0ad3396323e6', N'0', NULL, N'NF-Details', N'查看', NULL, 2, N'details', N'/WeixinMPManage/WxTempMsg/Details', 0, 0, 0, 0, 4, 0, 1, NULL, CAST(0x0000A93C01796994 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA8000B3D648 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'b02a3807-0835-46c1-a965-af192dfb9823', N'0c253d7a-f1bf-45c0-9a59-0ad3396323e6', N'0', NULL, N'NF-edit', N'修改', NULL, 2, N'edit', N'/WeixinManage/WxTempMsg/Form', 0, 0, 0, 0, 2, 0, 1, NULL, CAST(0x0000A93C0178C584 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AA8000B3C4B4 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'a6d7557a-a5ff-42df-a7e6-b5311c2b908e', N'5b263367-33a8-48e1-89ec-ba225f7d5e7a', N'0', NULL, N'NF-update', N'更新', NULL, 1, N'update', N'/DingTalkManage/Users/UpdateDingTalkUser', 0, 0, 0, 0, 0, NULL, 1, NULL, CAST(0x0000AB8B010EA33A AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AB8B010F3976 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'5d952e29-963e-48fe-94e5-1795ebaad2d6', N'3593c43a-e4bc-4b7f-9629-0449a3d1818e', N'0', NULL, N'NF-update', N'更新', NULL, 1, N'update', N'/DingTalkManage/Department/UpdateDingTalkDepartment', 0, 0, 0, 0, 0, NULL, 1, NULL, CAST(0x0000AB8B010EA33A AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AB8B010EBC9C AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'3f69d32f-cb3b-4fa0-863b-98b9a090d7e9', N'7e4e4a48-4d51-4159-a113-2a211186f13a', N'0', 1, N'NF-add', N'新建公告', NULL, 1, N'add', N'/SystemManage/Notice/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(0x0000AB9D010C5C2A AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'9fc77888-bbca-4996-9240-a0f389819f6f', N'7e4e4a48-4d51-4159-a113-2a211186f13a', N'0', 1, N'NF-edit', N'修改公告', NULL, 2, N'edit', N'/SystemManage/Notice/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(0x0000AB9D010C6A2E AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'8f698747-a1c3-468d-9279-99990987e0f9', N'7e4e4a48-4d51-4159-a113-2a211186f13a', N'0', 1, N'NF-delete', N'删除公告', NULL, 2, N'delete', N'/SystemManage/Notice/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(0x0000AB9D010C76E9 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'7ee3ff62-ab18-4886-9451-89b1d152172e', N'7e4e4a48-4d51-4159-a113-2a211186f13a', N'0', 1, N'NF-details', N'查看公告', NULL, 2, N'details', N'/SystemManage/Notice/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(0x0000ABAB008CD40E AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'7e10a7ac-8b65-4c7c-8eee-92d69d7dcbd9', N'26452c9a-243d-4c81-97b9-a3ad581c3bf4', N'0', 1, N'NF-add', N'新建岗位', NULL, 1, N'add', N'/SystemManage/Organize/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(0x0000AB9800FE7F7A AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'0b1b307b-2aac-456b-acfb-484a05c71bd7', N'26452c9a-243d-4c81-97b9-a3ad581c3bf4', N'0', 1, N'NF-edit', N'修改岗位', NULL, 2, N'edit', N'/SystemManage/Organize/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(0x0000AB9800FE857E AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'f51da6f6-8511-49f3-982b-a30ed0946706', N'26452c9a-243d-4c81-97b9-a3ad581c3bf4', N'0', 1, N'NF-delete', N'删除岗位', NULL, 2, N'delete', N'/SystemManage/Organize/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(0x0000AB9800FE8A18 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'1b72be70-e44d-43d6-91d0-dc3ad628d22e', N'26452c9a-243d-4c81-97b9-a3ad581c3bf4', N'0', 1, N'NF-details', N'查看岗位', NULL, 2, N'details', N'/SystemManage/Organize/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(0x0000ABAB008CE3B6 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'0b2df171-c519-4284-96bf-783b98e18fd2', N'337A4661-99A5-4E5E-B028-861CACAF9917', N'0', 1, N'NF-details', N'查看区域', NULL, 2, N'details', N'/SystemManage/Area/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(0x0000ABAB008D2764 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'f1bc12de-68e6-48db-9602-174f0bdba86a', N'1b5a64a6-e7be-4a6b-9ba6-a191d841838f', N'0', 1, N'NF-add', N'新增按钮', NULL, 1, N'add', N'/SystemManage/ModuleButton/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(0x0000ABAB008ECCA7 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'609505f4-4a41-4ca5-91e8-d2bb94e63f33', N'1b5a64a6-e7be-4a6b-9ba6-a191d841838f', N'0', 1, N'NF-edit', N'修改按钮', NULL, 2, N'edit', N'/SystemManage/ModuleButton/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(0x0000ABAB008ED5C5 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'de747413-5127-42f0-8ef3-3b43ab31adf5', N'1b5a64a6-e7be-4a6b-9ba6-a191d841838f', N'0', 1, N'NF-delete', N'删除按钮', NULL, 2, N'delete', N'/SystemManage/ModuleButton/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(0x0000ABAB008EDD08 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'dc2e2733-63ed-416d-9862-91f37d7ea20b', N'1b5a64a6-e7be-4a6b-9ba6-a191d841838f', N'0', 1, N'NF-details', N'查看按钮', NULL, 2, N'details', N'/SystemManage/ModuleButton/Details', 1, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(0x0000ABAB008EE5B1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'FD3D073C-4F88-467A-AE3B-CDD060952CE6', N'64A1C550-2C61-4A8C-833D-ACD0C012260F', N'0', 1, N'NF-modulebutton', N'按钮管理', NULL, 2, N'modulebutton', N'/SystemManage/ModuleButton/Index', 0, 0, 0, 0, 5, 0, 1, NULL, NULL, NULL, CAST(0x0000AB9600F01787 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'91c61a51-ba22-4d98-b70b-8b2a9a6db011', N'a07e80e0-0edc-4e0d-ab00-293ef7c07d53', N'0', 1, N'NF-add', N'生成', NULL, 2, N'add', N'/SystemManage/CodeGenerator/Form', 0, 0, 0, 0, 1, 0, 1, NULL, CAST(0x0000ABB5011768C1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'2aed5753-9f6f-47d1-ba4e-d9ed33ae8a0d', N'a07e80e0-0edc-4e0d-ab00-293ef7c07d53', N'0', 1, N'NF-details', N'查看数据表', NULL, 2, N'details', N'/SystemManage/CodeGenerator/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(0x0000ABB501178EE5 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'32f3ce63-bb79-4e0b-a4ab-48b7f344dbdd', NULL, N'0', 1, N'NF-clonebutton', N'克隆按钮', NULL, 1, N'clonebutton', N'/SystemManage/ModuleButton/CloneButton', 0, 0, 0, 0, 5, 0, 1, NULL, CAST(0x0000ABAB008F78D8 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'957e0f9f-2bd0-45d9-921a-0b49191624be', N'1b5a64a6-e7be-4a6b-9ba6-a191d841838f', N'0', 1, N'NF-clonebutton', N'克隆按钮', NULL, 1, N'clonebutton', N'/SystemManage/ModuleButton/CloneButton', 0, 0, 0, 0, 5, 0, 1, NULL, CAST(0x0000ABAB009124DA AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000ABAB0091B150 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
/****** Object:  Table [dbo].[Sys_Module]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Module](
	[F_Id] [varchar](50) NOT NULL,
	[F_ParentId] [varchar](50) NULL,
	[F_Layers] [int] NULL,
	[F_EnCode] [varchar](50) NULL,
	[F_FullName] [varchar](50) NULL,
	[F_Icon] [varchar](50) NULL,
	[F_UrlAddress] [varchar](500) NULL,
	[F_Target] [varchar](50) NULL,
	[F_IsMenu] [bit] NULL,
	[F_IsExpand] [bit] NULL,
	[F_IsPublic] [bit] NULL,
	[F_AllowEdit] [bit] NULL,
	[F_AllowDelete] [bit] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](50) NULL,
 CONSTRAINT [PK_Sys_Module] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Sys_Module] UNIQUE NONCLUSTERED 
(
	[F_FullName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'e72c75d0-3a69-41ad-b220-13c9a62ec788', N'73FD1267-79BA-4E23-A152-744AF73117E9', 2, N'DbBackup', N'数据备份', N'fa fa-server', N'/SystemSecurity/DbBackup/Index', N'iframe', 1, 0, 0, 0, 0, 1, 0, 1, NULL, CAST(0x0000A646016BF444 AS DateTime), NULL, CAST(0x0000AB9E00BA70E1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'462027E0-0848-41DD-BCC3-025DCAE65555', N'0', 1, N'SystemManage', N'系统管理', N'fa fa-gears', NULL, N'expand', 1, 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(0x0000AB9800936BEE AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'73FD1267-79BA-4E23-A152-744AF73117E9', N'0', 1, N'SystemSecurity', N'系统安全', N'fa fa-desktop', NULL, N'expand', 0, 1, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(0x0000A64B01041540 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'1b5a64a6-e7be-4a6b-9ba6-a191d841838f', N'462027E0-0848-41DD-BCC3-025DCAE65555', 2, N'ModuleButton', N'菜单按钮', N'fa fa-arrows-alt', N'/SystemManage/ModuleButton/Index', N'iframe', 0, 0, 0, 0, 0, 9, 0, 1, NULL, CAST(0x0000ABAB008E1E51 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'7e4e4a48-4d51-4159-a113-2a211186f13a', N'462027E0-0848-41DD-BCC3-025DCAE65555', 2, N'Notice', N'系统公告', N'fa fa-book', N'/SystemManage/Notice/Index', N'iframe', 1, 0, 0, 0, 0, 0, 0, 1, NULL, CAST(0x0000AB9D0102098B AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AB9E00B88657 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'a3a4742d-ca39-42ec-b95a-8552a6fae579', N'73FD1267-79BA-4E23-A152-744AF73117E9', 2, N'FilterIP', N'访问控制', N'fa fa-filter', N'/SystemSecurity/FilterIP/Index', N'iframe', 1, 0, 0, 0, 0, 2, 0, 1, NULL, CAST(0x0000A646016C3E18 AS DateTime), NULL, CAST(0x0000AB9E00BA8197 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'64A1C550-2C61-4A8C-833D-ACD0C012260F', N'462027E0-0848-41DD-BCC3-025DCAE65555', 2, N'Module', N'系统菜单', N'fa fa-cogs', N'/SystemManage/Module/Index', N'iframe', 1, 0, 0, 0, 0, 7, 0, 1, N'测试', NULL, NULL, CAST(0x0000AB9E00BA533D AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'38CA5A66-C993-4410-AF95-50489B22939C', N'462027E0-0848-41DD-BCC3-025DCAE65555', 2, N'User', N'用户管理', N'fa fa-address-card-o', N'/SystemManage/User/Index', N'iframe', 1, 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(0x0000AB9E00B9CCC1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'26452c9a-243d-4c81-97b9-a3ad581c3bf4', N'462027E0-0848-41DD-BCC3-025DCAE65555', 2, N'Organize', N'机构管理', N'fa fa-sitemap', N'/SystemManage/Organize/Index', N'iframe', 1, 0, 0, 0, 0, 1, 0, 1, NULL, CAST(0x0000AB9800FDF035 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000AB9E00B94AF2 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', N'462027E0-0848-41DD-BCC3-025DCAE65555', 2, N'Role', N'角色管理', N'fa fa-user-circle', N'/SystemManage/Role/Index', N'iframe', 1, 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(0x0000AB9E00B9E3FA AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'337A4661-99A5-4E5E-B028-861CACAF9917', N'462027E0-0848-41DD-BCC3-025DCAE65555', 2, N'Area', N'区域管理', N'fa fa-area-chart', N'/SystemManage/Area/Index', N'iframe', 1, 0, 0, 0, 0, 5, 0, 1, NULL, NULL, NULL, CAST(0x0000AB9E00B9F0C9 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'423A200B-FA5F-4B29-B7B7-A3F5474B725F', N'462027E0-0848-41DD-BCC3-025DCAE65555', 2, N'ItemsData', N'数据字典', N'fa fa-align-justify', N'/SystemManage/ItemsData/Index', N'iframe', 1, 0, 0, 0, 0, 6, 0, 1, NULL, NULL, NULL, CAST(0x0000AB9E00BA025F AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'F298F868-B689-4982-8C8B-9268CBF0308D', N'462027E0-0848-41DD-BCC3-025DCAE65555', 2, N'Duty', N'岗位管理', N'fa fa-users', N'/SystemManage/Duty/Index', N'iframe', 1, 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(0x0000AB9E00B9D784 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'96EE855E-8CD2-47FC-A51D-127C131C9FB9', N'73FD1267-79BA-4E23-A152-744AF73117E9', 2, N'Log', N'系统日志', N'fa fa-clock-o', N'/SystemSecurity/Log/Index', N'iframe', 1, 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(0x0000AB9E00BA93DE AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'a07e80e0-0edc-4e0d-ab00-293ef7c07d53', N'462027E0-0848-41DD-BCC3-025DCAE65555', 2, N'CodeGenerator', N'代码生成', N'fa fa-code', N'/SystemManage/CodeGenerator/Index', N'iframe', 1, 0, 0, 0, 0, 10, 0, 1, NULL, CAST(0x0000ABB501170EF9 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000ABB501171E6A AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'49F61713-C1E4-420E-BEEC-0B4DBC2D7DE8', N'73FD1267-79BA-4E23-A152-744AF73117E9', 2, N'ServerMonitoring', N'服务器监控', N'fa fa-desktop', N'/SystemSecurity/ServerMonitoring/Index', N'iframe', 1, 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(0x0000AB9E00BAB5E8 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
/****** Object:  Table [dbo].[Sys_Log]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Log](
	[F_Id] [varchar](50) NOT NULL,
	[F_Date] [datetime] NULL,
	[F_Account] [varchar](50) NULL,
	[F_NickName] [varchar](50) NULL,
	[F_Type] [varchar](50) NULL,
	[F_IPAddress] [varchar](50) NULL,
	[F_IPAddressName] [varchar](50) NULL,
	[F_ModuleId] [varchar](50) NULL,
	[F_ModuleName] [varchar](50) NULL,
	[F_Result] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_KeyValue] [varchar](50) NULL,
 CONSTRAINT [PK_Sys_Log] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'5fa60c9d-f373-493e-8783-b0a8f8212edd', CAST(0x0000AB8F011FF7FD AS DateTime), N'超级管理员', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 0, N'登录失败，账户不存在，请重新输入', CAST(0x0000AB8F011FF84D AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'01e8249d-93b2-4095-8a15-c8b75140c46d', CAST(0x0000AB8F011FFFB1 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB8F011FFFC3 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'0b7be642-19de-469a-ba76-65eb8bd0cc2a', CAST(0x0000AB9000B18C2C AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9000B18CFA AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'6e4c6cee-90b3-4a02-84ed-fab621fa483e', CAST(0x0000AB9000B3C495 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9000B3C4AA AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'1df99687-b31a-4eec-a1cf-39e862a41c68', CAST(0x0000AB90010A78F0 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB90010A790B AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'21e77567-a318-4fc9-8bf7-3c31a242822f', CAST(0x0000AB90010F125B AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB90010F126C AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'c3b0f026-f6e5-4425-a5c2-54bf164b9857', CAST(0x0000AB90011202E2 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB90011202FF AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'b24c311f-b228-4b84-83b4-5fcb963c5d69', CAST(0x0000AB92008D6F5C AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB92008D6F71 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'4d0b4ad8-4dbd-4242-9f33-95fa40bb9602', CAST(0x0000AB9200AE6D16 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9200AE6D27 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'd41a6984-1637-4f5e-a8a1-b2ebb475da08', CAST(0x0000AB9200D1B479 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9200D1B497 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'6416d91f-a891-4e7a-9a81-eb5291ccc14f', CAST(0x0000AB920100DC37 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB920100DC47 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'27526c7d-49bb-48e7-9fec-ea82792cfe7d', CAST(0x0000AB9500D00428 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9500D00441 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'feac4eec-2b9c-431a-aaa4-8605861e1210', CAST(0x0000AB9500D03669 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9500D0367B AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'bd327bcb-b658-4f91-8d54-96224db88e2a', CAST(0x0000AB9500F589E1 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9500F589F4 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'9815286a-d5dc-43e8-acb6-d566f22c36ef', CAST(0x0000AB95011B01E3 AS DateTime), N'admin', N'admin', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 0, N'登录失败，验证码错误，请重新输入', CAST(0x0000AB95011B03F2 AS DateTime), NULL, NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'9fae5851-a66a-469a-9fc9-bec148d642a2', CAST(0x0000AB95011B094B AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB95011B0961 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'df721bcd-be0e-4ce4-9b43-a96c14a407f8', CAST(0x0000AB9600B1A579 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9600B1A58A AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'abef002e-49f8-445b-90b7-9c55ba44440c', CAST(0x0000AB9600C0FB43 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9600C0FB55 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'ecb4b5d0-bc6e-4abd-9da8-fdcb5a8c3e32', CAST(0x0000AB9600C31265 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9600C3127D AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'113111dd-a3ba-4c4f-bbe5-7d97e64da553', CAST(0x0000AB96010B48FF AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB96010B4915 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'fc9a89ff-cf7c-445c-9f63-f47a06362803', CAST(0x0000AB9601107256 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9601107270 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'3c55dbe0-c999-4409-a1f5-c2d99ecc91b8', CAST(0x0000AB980090063E AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9800900655 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'df468d3b-0b1a-486a-8e1b-bdc18ea98203', CAST(0x0000AB9800DED67B AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9800DED6B2 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'7eb98238-0446-4840-8a97-c5a778d4abf9', CAST(0x0000AB9800E563EF AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9800E5642C AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'dab6877b-2d33-4b92-a2a4-41a752f005cb', CAST(0x0000AB9800E5ABF0 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9800E5AC0B AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'bb5e2be7-b8e6-488a-ae62-5485eaba2a13', CAST(0x0000AB95009719D2 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB95009719ED AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'073a99a9-b963-4c5d-b4e0-402eac17a415', CAST(0x0000AB8F008DEFBC AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB8F008DEFD1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'0d51f6b1-726a-4177-ac72-e6b6d88fa3aa', CAST(0x0000AB8F008FE668 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB8F008FE679 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'0b13c6d7-a7a6-4588-af47-1613469f91d8', CAST(0x0000AB8F00917707 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB8F0091771B AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'954df282-d69a-4416-8822-2abcd82c55fd', CAST(0x0000AB8F00930FA5 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB8F00930FBB AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'0008ca41-91c1-43a7-abb3-f73036cd1240', CAST(0x0000AB8F00944597 AS DateTime), N'admin', N'admin', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 0, N'登录失败，验证码错误，请重新输入', CAST(0x0000AB8F009447D0 AS DateTime), NULL, NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'47a4a63d-bd62-4c5c-afe7-bca0e8d8dd6d', CAST(0x0000AB8F00944C29 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB8F00944C3E AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'5cd0ad01-2876-4215-893c-f6db96182155', CAST(0x0000AB8F00A51FCB AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB8F00A51FE3 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'ff611836-b152-45e2-a87d-122a462716ad', CAST(0x0000AB8F00A575C8 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB8F00A575DE AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'13073fae-4acb-4802-be68-3d3f3d90555d', CAST(0x0000AB8F00AB3652 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB8F00AB3662 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'df481606-d09a-479b-8cc1-d3c3cc872d46', CAST(0x0000AB8F00B08D66 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB8F00B08D7C AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'eeea30f6-78d6-47f0-8238-845a30aa7eeb', CAST(0x0000AB8F00B7BA52 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB8F00B7BA65 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'435bb6f5-85a3-408c-98a3-43c20236bd52', CAST(0x0000AB8F00BBE8D3 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB8F00BBE8E6 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'9f17c344-47b6-4ba3-a7b6-de7ab8df28a6', CAST(0x0000AB8F00BF5588 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB8F00BF55A0 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'c39b4be5-ea9f-4ebc-8f83-9ab1fb897264', CAST(0x0000AB8F00C01720 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB8F00C01732 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'9acb83ed-bbd8-47cf-9f5a-f4012010dacf', CAST(0x0000AB8F00C07518 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB8F00C07527 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'bb157d62-20ec-4229-a721-d64c0b21ac09', CAST(0x0000AB8F011A3AED AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB8F011A3B03 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'f5ecd624-0cb6-469c-b933-55dc790e2654', CAST(0x0000AB9000905ECD AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9000905EE3 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'68953f8b-af5f-4232-844c-53cbe6f4d02f', CAST(0x0000AB9000BA3587 AS DateTime), N'admin', N'超级管理员', N'Exit', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'安全退出系统', CAST(0x0000AB9000BA359D AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'e34807e8-61ac-48a9-8cf0-886951befa35', CAST(0x0000AB9000BA3B2D AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9000BA3B72 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'869972d2-e0b8-4700-a1ee-53310b625ed9', CAST(0x0000AB9000BF6495 AS DateTime), N'admin', N'超级管理员', N'Exit', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'安全退出系统', CAST(0x0000AB9000BF64AD AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'0ec14047-9693-4976-89af-fbfcf936f8e0', CAST(0x0000AB9000BF6903 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9000BF6916 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'b850065e-a59b-46b6-ba57-6597997bd70d', CAST(0x0000AB9000BFE5EB AS DateTime), N'admin', N'超级管理员', N'Exit', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'安全退出系统', CAST(0x0000AB9000BFE601 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'e76696a1-7c5c-4169-8586-836464def8e5', CAST(0x0000AB9000BFEB4A AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9000BFEB58 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'2fadae68-0f9a-4703-9fa3-73689d9c8da1', CAST(0x0000AB9000C0A4A4 AS DateTime), N'admin', N'超级管理员', N'Exit', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'安全退出系统', CAST(0x0000AB9000C0A4BB AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'e8318ce9-bbdd-4d5e-86ad-7d24ddb06f16', CAST(0x0000AB9000C0A937 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9000C0A948 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'11d3f55d-a86f-4fb5-b0a7-796d4de44740', CAST(0x0000AB9000C1A6CA AS DateTime), N'admin', N'超级管理员', N'Exit', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'安全退出系统', CAST(0x0000AB9000C1A6E5 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'db71945c-74c7-40e4-95e3-4761004164ad', CAST(0x0000AB9000C1AB99 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9000C1ABAA AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'b219a7fa-9e32-4cd2-8dd5-a9e87650adef', CAST(0x0000AB91008D637B AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB91008D6396 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'c1cdaeda-df91-473f-8864-386bb4efdbb2', CAST(0x0000AB91009B793B AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB91009B794E AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'f6bea2f4-b141-4b33-9edc-3e88f532796f', CAST(0x0000AB91009F8E22 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB91009F8E39 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'94236000-cfcb-48a8-a74f-c5ed56a3d476', CAST(0x0000AB9100E7C128 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9100E7C13F AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'f2b1a2ee-cf1b-4ee8-969c-5b43da73cab5', CAST(0x0000AB9100E853B5 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9100E853CC AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'e4ffd723-b87c-433c-a01a-9059a8ccbcec', CAST(0x0000AB9100E9E63D AS DateTime), N'admin', N'超级管理员', N'Exit', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'安全退出系统', CAST(0x0000AB9100E9E668 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'7c81be4c-e290-47be-8de8-3f6c6de3c09a', CAST(0x0000AB9100E9EC35 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9100E9EC45 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'8247800b-9212-4ede-8d3c-f00f6ea83b39', CAST(0x0000AB9100EA7BB5 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9100EA7BC5 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'3640159a-acf1-4bee-98d3-b20ab59f9542', CAST(0x0000AB9100F0C076 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9100F0C089 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'b5b687ac-5137-490b-9338-a0b3da851329', CAST(0x0000AB9100FE9815 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9100FE982A AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'986976fa-c91e-4c27-bd4f-fc960b24749a', CAST(0x0000AB91010A8E01 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB91010A8E15 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'a27d5787-f9b4-49f1-bffa-c75aa51a4112', CAST(0x0000AB910124D53F AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB910124D554 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'a421c349-bffb-4a66-aeca-5a3b13b0a9c2', CAST(0x0000AB9200E641D7 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9200E641EB AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'8cfbf978-a93f-487f-a8e3-a53c60c9b96d', CAST(0x0000AB92011F8559 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB92011F856D AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'e71ab447-e7c7-4c18-b990-e6fc84be6395', CAST(0x0000AB9000F6CF8F AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9000F6CFAA AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'7605b888-4357-4164-a04d-d3f2ed51ffb3', CAST(0x0000AB9000F7F19E AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9000F7F1AF AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'ba04ecef-cad1-47c2-9b3d-ca14a6c23faf', CAST(0x0000AB9001026AB3 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9001026AD0 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'94b7f323-736e-4e40-9026-ef4c3ebed8f0', CAST(0x0000AB91011CD475 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB91011CD486 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'39913c75-6114-4cf2-a567-974b4d0c0e70', CAST(0x0000AB92010F2CAD AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB92010F2CC6 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'c31416ef-4ab0-4210-8b25-b39986a49beb', CAST(0x0000AB92010FFE7A AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB92010FFE90 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'915877ae-24eb-4fdb-94ef-d5eec43ee2ed', CAST(0x0000AB9500D37966 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9500D3797A AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'5faa62aa-dab9-468a-ac69-119c48a13404', CAST(0x0000AB9500D5B658 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9500D5B66A AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'025ee2ac-49ab-4b79-a3e6-36b34a5c8c95', CAST(0x0000AB9500FF7E20 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9500FF7E35 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'a65309e4-ceb8-4760-b5ae-cdfc834c83cb', CAST(0x0000AB9600E025C2 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9600E025D5 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'e6a3ac05-a1c1-4e38-981e-7ab79f17ca4a', CAST(0x0000AB9800A9736C AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9800A9737F AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'b817ac0a-6709-42f8-9417-d8c26a5328e2', CAST(0x0000AB9800AB96C0 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9800AB96D2 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'9fa33a26-849e-4c10-980d-ab3b719ff81a', CAST(0x0000AB9800AC79C3 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9800AC79D4 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'022ca705-e0b2-4fe4-9a35-5c7e5252e79f', CAST(0x0000AB9800E46D33 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9800E46D65 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'2e34ef30-025e-4f20-8f26-11323fd5b1aa', CAST(0x0000AB9500B6DE80 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9500B6DE94 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'8331262c-bc35-43ac-885b-e209a7c20d3f', CAST(0x0000AB9500B752A9 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9500B752BC AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'29ea624b-0fe2-4459-8714-33ed636b2a6b', CAST(0x0000AB9500BA6DF9 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9500BA6E0E AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'39f67c9d-f815-4db4-824e-7a5d11ca86b8', CAST(0x0000AB9500BDD9AD AS DateTime), N'admin', N'admin', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 0, N'登录失败，验证码错误，请重新输入', CAST(0x0000AB9500BDD9F9 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'3188d38c-dc2a-41cb-879f-6d85187eb88b', CAST(0x0000AB9500BDDE15 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9500BDDE29 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'bba1eed1-7866-4eff-904c-61e898041833', CAST(0x0000AB96009FC8AD AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB96009FC8C0 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'c365fa9f-7f77-4132-b45b-280ebecf6d6c', CAST(0x0000AB9600A02EAE AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9600A02EC2 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'278dea4d-9bda-443e-afd2-f0d54a38359d', CAST(0x0000AB9601013755 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB960101376A AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'7ce822ff-a6f3-4a64-8e71-c825ed42e608', CAST(0x0000AB9800CE2F65 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9800CE2F77 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'e1133f21-ebf7-490b-b8da-3974f31d0a06', CAST(0x0000AB9800CEDA18 AS DateTime), N'admin', N'超级管理员', N'Exit', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'安全退出系统', CAST(0x0000AB9800CEDA31 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'6cc55f18-d956-47ca-b506-843264c600b3', CAST(0x0000AB9800CF1415 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9800CF1426 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'2a4d5bf1-1703-448e-8fc3-e4dbc662cef1', CAST(0x0000AB9800D41A90 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9800D41AA2 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'dcab7f68-e8ce-4999-8cbe-fa3d84e38cd0', CAST(0x0000AB9800D4DA9E AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9800D4DAB3 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'bd5eb675-0ebe-4c98-a2f5-4130c5663b6d', CAST(0x0000AB9800D5108B AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9800D5109D AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'7f9ef674-aa1d-4097-a3a0-825e85873c36', CAST(0x0000AB9800E1614F AS DateTime), N'admin', N'admin', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 0, N'登录失败，验证码错误，请重新输入', CAST(0x0000AB9800E163BC AS DateTime), NULL, NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'162a50a2-5187-4caf-932e-84456cc82206', CAST(0x0000AB9800E1698B AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9800E1699D AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'2b8784e3-4fe4-40cc-87d1-9de4eae89819', CAST(0x0000AB98010A559A AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB98010A55D1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'5e2d6883-19bf-4d82-8e34-a1d73d8c1ca7', CAST(0x0000AB98010A7817 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB98010A782A AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'aedbb97d-ce55-4c9e-956d-b21214f0808a', CAST(0x0000AB98010B4B8C AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB98010B4BA4 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'71f576a5-c5c7-43ce-8e9a-e272522f27da', CAST(0x0000AB9801155F43 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9801155F59 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'6d14aab4-e08c-48c5-9758-ffd69d324bdd', CAST(0x0000AB980115B8FD AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB980115B911 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'e7964a72-2176-4e7c-afdc-65946c18d967', CAST(0x0000AB980118E90A AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB980118E962 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'a28fae8b-092e-4ce5-b381-ea76fbc334ed', CAST(0x0000AB9801190E05 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9801190E1A AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'27f54c78-c246-441e-9939-45b630dc0e05', CAST(0x0000AB980119A866 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB980119A895 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'895c5942-23c0-4309-ae81-a960905e6a73', CAST(0x0000AB980119BFCC AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB980119BFDC AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'a88984cb-1cde-468a-8532-23f897064907', CAST(0x0000AB990093E79C AS DateTime), N'admin', N'admin', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 0, N'登录失败，验证码错误，请重新输入', CAST(0x0000AB990093E9C9 AS DateTime), NULL, NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'c9a1c31b-9148-4c94-8e66-fa1a5182fe4e', CAST(0x0000AB990093F036 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB990093F04B AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'664be0ae-2813-484a-b908-495e3e047bbe', CAST(0x0000AB99009422B0 AS DateTime), N'admin', N'超级管理员', N'Exit', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'安全退出系统', CAST(0x0000AB99009422C1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'319f8169-43da-4592-af0d-87b90de88684', CAST(0x0000AB9900B1E7DE AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9900B1E824 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'55b13226-190f-403e-9765-9200e3191ef2', CAST(0x0000AB9900B8F1FE AS DateTime), N'admin', N'超级管理员', N'Exit', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'安全退出系统', CAST(0x0000AB9900B8F219 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'0b51f375-a55a-42b4-813a-7969736b747d', CAST(0x0000AB9900B8FD87 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9900B8FD99 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'02afa498-e577-4d7d-a558-f14b56864a61', CAST(0x0000AB9900B930BA AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9900B930D0 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'3788148a-7749-4c98-a022-f5a290a44b35', CAST(0x0000AB9900DD2AA1 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9900DD2ADB AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'85376a30-3f14-4366-9610-5df2781c1106', CAST(0x0000AB9900DD44E7 AS DateTime), N'admin', N'超级管理员', N'Exit', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'安全退出系统', CAST(0x0000AB9900DD44FA AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'7c1e3d86-4bed-4c9d-ba61-d69ce154e1b9', CAST(0x0000AB9900DED85C AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9900DED8AD AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'c9f074a8-1701-4341-a398-562441764abb', CAST(0x0000AB9900DFC40F AS DateTime), N'admin', N'超级管理员', N'Exit', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'安全退出系统', CAST(0x0000AB9900DFC42C AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'914c0ec2-1f60-49ba-95b0-a606c5e3e375', CAST(0x0000AB9900E0AA93 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9900E0AAAF AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'4b43b47d-da8c-47be-b83b-efac08fc15e3', CAST(0x0000AB9900EAFD5C AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9900EAFD99 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'b4536701-8337-4255-824d-b619c95d0519', CAST(0x0000AB99010C2100 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB99010C2131 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'eb1fb072-c185-4197-b18d-83e9a6474a07', CAST(0x0000AB9C008BD7A6 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9C008BD80C AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'0d807f23-70a2-46c3-a45f-343c5766910d', CAST(0x0000AB9C00F8BD2F AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9C00F8BD66 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'c479be5b-7ce2-4374-bb06-b55c5a2340a2', CAST(0x0000AB9C00F99B13 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9C00F99B2C AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'e167bb9d-a488-4d52-b6ac-5a23c2f2d94f', CAST(0x0000AB98010C2CF4 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB98010C2D20 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'a0493229-b060-4c0b-a004-570b305bbe8b', CAST(0x0000AB98010D398C AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB98010D3A06 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'e304293a-51df-4815-8b64-5e37ad2c9c39', CAST(0x0000AB98010E0E97 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB98010E0EBC AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'a0316517-0bc4-4475-9576-24a198f28ad6', CAST(0x0000AB98010E67BF AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB98010E67EC AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'7c969b09-a6c4-4c50-a734-e8e280dba88b', CAST(0x0000AB98010F0AFB AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB98010F0B0E AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'9ec477c9-1dfd-475f-af42-dc50c32e37cf', CAST(0x0000AB98010F4EC6 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB98010F4EE3 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'4f09c140-d962-4543-a751-3499d8fdbf04', CAST(0x0000AB980112A60F AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB980112A63C AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'69194db5-18ad-4c04-84b7-97c5f1a6b08c', CAST(0x0000AB98011613C0 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB98011613F6 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'ec9e880f-1ca6-4f47-8a91-5ebe5c54b9df', CAST(0x0000AB9801168053 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9801168064 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'aa14c177-2a2a-4050-924f-e1ec4e9f6c1d', CAST(0x0000AB9801169B1C AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9801169B32 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'6d38b395-32ad-4fd2-ab5e-420c075f19b6', CAST(0x0000AB980117B801 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB980117B81B AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'2ee99f5e-eba4-4388-937f-3930bb42bc97', CAST(0x0000AB98011A83F6 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB98011A841F AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'9be24ce7-11af-4f0f-91ae-2b73e3be3a10', CAST(0x0000AB98011CFDDA AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB98011CFDFB AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'8e94f79b-c054-49cc-9542-417fc6444622', CAST(0x0000AB9C009ADC6B AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9C009ADC9B AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'069d059a-0e98-4adb-afd8-f5787b8c442d', CAST(0x0000AB9C00D88AF5 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9C00D88B45 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'9a28deda-aaa8-4cad-98a0-8bc61444ab00', CAST(0x0000AB9C011B9CD7 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9C011B9D22 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'cf83de83-7670-4b8a-a8ab-2bfa452802e4', CAST(0x0000AB9C011F6034 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9C011F6067 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'021da30b-d40d-4428-95d4-f6368b0af6d0', CAST(0x0000AB9D008AE8BE AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9D008AE91D AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'237a09b6-28bc-4b8a-840e-7ab54a3be53b', CAST(0x0000AB9E00A5F539 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9E00A5F595 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'feabed0a-5d1d-4fce-88ae-1e87f2300a05', CAST(0x0000AB9E00A60BF8 AS DateTime), N'admin', N'超级管理员', N'Exit', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'安全退出系统', CAST(0x0000AB9E00A60C0C AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'609e0259-00f8-4ea0-b02d-0e0f20ba8178', CAST(0x0000AB9E00A627DA AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9E00A6491A AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'6b01a12c-2945-4211-b6bc-0d30a500d1c7', CAST(0x0000ABA000C6FBCC AS DateTime), N'admin', N'超级管理员', N'Login', N'192.168.1.117', N'本地局域网', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000ABA000C6FBCD AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'85d080d5-8274-46ae-b1cf-8b70067254b3', CAST(0x0000ABA500E9E27C AS DateTime), N'admin', N'超级管理员', N'Login', N'192.168.1.117', N'本地局域网', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000ABA500E9E27D AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'dbab3a8f-a578-441c-be50-19fb99956948', CAST(0x0000ABAB008CC460 AS DateTime), N'admin', N'超级管理员', N'Update', N'127.0.0.1', N'本地局域网', NULL, N'系统管理', 1, N'按钮管理操作,修改操作成功', CAST(0x0000ABAB008CC461 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'D4FCAFED-7640-449E-80B7-622DDACD5012')
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'f047f653-25a9-465c-8b8f-97cf5066bae7', CAST(0x0000ABAB008CD41E AS DateTime), N'admin', N'超级管理员', N'Update', N'127.0.0.1', N'本地局域网', NULL, N'系统管理', 1, N'按钮管理操作,修改操作成功', CAST(0x0000ABAB008CD41F AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'7ee3ff62-ab18-4886-9451-89b1d152172e')
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'f8f1fa07-2042-4a91-aa89-de4ffc0907e3', CAST(0x0000ABAB008CE3C1 AS DateTime), N'admin', N'超级管理员', N'Update', N'127.0.0.1', N'本地局域网', NULL, N'系统管理', 1, N'按钮管理操作,修改操作成功', CAST(0x0000ABAB008CE3C2 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'1b72be70-e44d-43d6-91d0-dc3ad628d22e')
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'400a23b8-8779-457e-b548-f14ad67f5a50', CAST(0x0000ABAB008CF16B AS DateTime), N'admin', N'超级管理员', N'Update', N'127.0.0.1', N'本地局域网', NULL, N'系统管理', 1, N'按钮管理操作,修改操作成功', CAST(0x0000ABAB008CF16C AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'f93763ff-51a1-478d-9585-3c86084c54f3')
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'a9a3eeeb-64ed-4de1-a82d-64205f7e57d7', CAST(0x0000ABAB008D00F9 AS DateTime), N'admin', N'超级管理员', N'Update', N'127.0.0.1', N'本地局域网', NULL, N'系统管理', 1, N'按钮管理操作,修改操作成功', CAST(0x0000ABAB008D00F9 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'88f7b3a8-fd6d-4f8e-a861-11405f434868')
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'54275a80-dce2-4e34-b069-d5a2e69cded7', CAST(0x0000ABAB008D0D2B AS DateTime), N'admin', N'超级管理员', N'Update', N'127.0.0.1', N'本地局域网', NULL, N'系统管理', 1, N'按钮管理操作,修改操作成功', CAST(0x0000ABAB008D0D2B AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'abfdff21-8ebf-4024-8555-401b4df6acd9')
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'60752ac2-37c7-4a9d-8fd3-35b49de55c05', CAST(0x0000ABAB008D1BB5 AS DateTime), N'admin', N'超级管理员', N'Create', N'127.0.0.1', N'本地局域网', NULL, N'系统管理', 1, N'按钮管理操作,新增克隆成功', CAST(0x0000ABAB008D1BB6 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'02d6da03-f0e6-4f29-a409-42fe93b59e15', CAST(0x0000ABAB008D2770 AS DateTime), N'admin', N'超级管理员', N'Update', N'127.0.0.1', N'本地局域网', NULL, N'系统管理', 1, N'按钮管理操作,修改操作成功', CAST(0x0000ABAB008D2770 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'0b2df171-c519-4284-96bf-783b98e18fd2')
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'bb8bb811-f3ec-4000-b0c3-0bfae9275e8e', CAST(0x0000ABAB008D3926 AS DateTime), N'admin', N'超级管理员', N'Update', N'127.0.0.1', N'本地局域网', NULL, N'系统管理', 1, N'按钮管理操作,修改操作成功', CAST(0x0000ABAB008D3927 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'82f162cb-beb9-4a79-8924-cd1860e26e2e')
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'50178965-d637-43e2-b0e2-d0db2713c133', CAST(0x0000ABAB008D46A7 AS DateTime), N'admin', N'超级管理员', N'Update', N'127.0.0.1', N'本地局域网', NULL, N'系统管理', 1, N'按钮管理操作,修改操作成功', CAST(0x0000ABAB008D46A8 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'D4FCAFED-7640-449E-80B7-622DDACD5012')
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'c077c520-5775-4da6-a9a8-64d93889047c', CAST(0x0000ABAB008D5954 AS DateTime), N'admin', N'超级管理员', N'Update', N'127.0.0.1', N'本地局域网', NULL, N'系统管理', 1, N'按钮管理操作,修改操作成功', CAST(0x0000ABAB008D5954 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'329c0326-ce68-4a24-904d-aade67a90fc7')
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'43c91446-c66f-4252-963e-d35d323013ad', CAST(0x0000ABAB008E1E5B AS DateTime), N'admin', N'超级管理员', N'Create', N'127.0.0.1', N'本地局域网', NULL, N'系统管理', 1, N'系统菜单操作,新增操作成功', CAST(0x0000ABAB008E1E5C AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'a33e49ff-9877-4470-962f-33a85dd55a82', CAST(0x0000ABAB008E99E8 AS DateTime), N'admin', N'超级管理员', N'Login', N'192.168.1.117', N'本地局域网', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000ABAB008E99F4 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'b2cf63b0-c219-4c14-b97d-bdd6f01d1028', CAST(0x0000ABAB008EB557 AS DateTime), N'admin', N'超级管理员', N'Create', N'192.168.1.117', N'本地局域网', NULL, N'系统管理', 1, N'按钮管理操作,新增克隆成功', CAST(0x0000ABAB008EB55A AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'a9cf1ae9-a0bc-48d7-b837-4bd8e06ca5c9', CAST(0x0000ABAB008ECCB3 AS DateTime), N'admin', N'超级管理员', N'Update', N'192.168.1.117', N'本地局域网', NULL, N'系统管理', 1, N'按钮管理操作,修改操作成功', CAST(0x0000ABAB008ECCB4 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'f1bc12de-68e6-48db-9602-174f0bdba86a')
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'16edf52e-45f7-4fa6-a0c6-5859c781679e', CAST(0x0000ABAB008ED5D7 AS DateTime), N'admin', N'超级管理员', N'Update', N'192.168.1.117', N'本地局域网', NULL, N'系统管理', 1, N'按钮管理操作,修改操作成功', CAST(0x0000ABAB008ED5D9 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'609505f4-4a41-4ca5-91e8-d2bb94e63f33')
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'a73bdae5-c5be-4a61-a1de-c421aea13b98', CAST(0x0000AB9D00BD69D9 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9D00BD6A24 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'4424eb93-1360-4ae5-b921-f1352ddef26c', CAST(0x0000AB9D00DED9A6 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9D00DED9C9 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'87eeb6f4-bccc-42ad-b38b-0d2c591a8591', CAST(0x0000AB9D0101CE60 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9D0101CEA1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'272025e8-c872-44f6-b188-8df60bc6f3ef', CAST(0x0000ABAB008BD95D AS DateTime), N'admin', N'超级管理员', N'Login', N'127.0.0.1', N'本地局域网', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000ABAB008BD988 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'cf2244a8-644f-4018-a0a9-211939f17532', CAST(0x0000ABB501170F0A AS DateTime), N'admin', N'超级管理员', N'Create', N'192.168.99.1', N'本地局域网', NULL, N'系统管理', 1, N'系统菜单操作,新增操作成功', CAST(0x0000ABB501170F0A AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'7cbd0b3f-42a6-4942-a7a7-8055b14cd401', CAST(0x0000ABB501171E7F AS DateTime), N'admin', N'超级管理员', N'Update', N'192.168.99.1', N'本地局域网', NULL, N'系统管理', 1, N'系统菜单操作,修改操作成功', CAST(0x0000ABB501171E7F AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'a07e80e0-0edc-4e0d-ab00-293ef7c07d53')
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'2319f51f-36ff-42ce-a8dc-86036cb1e970', CAST(0x0000ABB5011768CA AS DateTime), N'admin', N'超级管理员', N'Create', N'192.168.99.1', N'本地局域网', NULL, N'系统管理', 1, N'菜单按钮操作,新增操作成功', CAST(0x0000ABB5011768CA AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'16d7d6ac-b328-456c-a480-e34ad9647fc8', CAST(0x0000ABB5011775BB AS DateTime), N'admin', N'超级管理员', N'Create', N'192.168.99.1', N'本地局域网', NULL, N'系统管理', 1, N'菜单按钮操作,新增克隆成功', CAST(0x0000ABB5011775BC AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'97ccbbc8-a4bb-4671-9e0a-12e9b8a44e0f', CAST(0x0000ABB501178EF5 AS DateTime), N'admin', N'超级管理员', N'Update', N'192.168.99.1', N'本地局域网', NULL, N'系统管理', 1, N'菜单按钮操作,修改操作成功', CAST(0x0000ABB501178EF6 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'2aed5753-9f6f-47d1-ba4e-d9ed33ae8a0d')
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'f613c054-19f9-4322-8e1c-c06002040c25', CAST(0x0000AB9D01198468 AS DateTime), N'admin', N'超级管理员', N'Exit', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'安全退出系统', CAST(0x0000AB9D01198490 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'a91f9e2d-e8b8-47b7-a80e-3f8f7b29659e', CAST(0x0000AB9D01199CC5 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9D01199CDC AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'17363109-4689-46ae-87bb-fda4cb2e5fd2', CAST(0x0000AB9D0119A916 AS DateTime), N'admin', N'超级管理员', N'Exit', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'安全退出系统', CAST(0x0000AB9D0119A92A AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'4fd54938-bc92-4430-a541-9a072816fecf', CAST(0x0000AB9D0119B0D0 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9D0119B0E1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'45ca6683-490d-494f-bf75-2bf555ecf0eb', CAST(0x0000AB9E00A254C0 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9E00A25512 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'ce3bf546-4aaa-420c-b6a9-f7179ba6b723', CAST(0x0000AB9E00C3EE13 AS DateTime), N'admin', N'超级管理员', N'Login', N'117.81.192.182', N'江苏省苏州市 电信', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000AB9E00C3EE67 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'642014a6-a962-49b6-8bf0-a2dce1a875bf', CAST(0x0000ABAB008EDD16 AS DateTime), N'admin', N'超级管理员', N'Update', N'192.168.1.117', N'本地局域网', NULL, N'系统管理', 1, N'按钮管理操作,修改操作成功', CAST(0x0000ABAB008EDD17 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'de747413-5127-42f0-8ef3-3b43ab31adf5')
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'99abd0ea-f916-4441-8fd3-1caca06fa11f', CAST(0x0000ABAB008EE5BC AS DateTime), N'admin', N'超级管理员', N'Update', N'192.168.1.117', N'本地局域网', NULL, N'系统管理', 1, N'按钮管理操作,修改操作成功', CAST(0x0000ABAB008EE5BD AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'dc2e2733-63ed-416d-9862-91f37d7ea20b')
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'ff8fe530-6b89-4281-a92f-d467b228443f', CAST(0x0000ABAB008F78E0 AS DateTime), N'admin', N'超级管理员', N'Create', N'192.168.1.117', N'本地局域网', NULL, N'系统管理', 1, N'按钮管理操作,新增操作成功', CAST(0x0000ABAB008F78E1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'9c8ac6b1-1df6-4937-b497-3c01970d1bbb', CAST(0x0000ABAB008FF05D AS DateTime), N'admin', N'超级管理员', N'Create', N'192.168.1.117', N'本地局域网', NULL, N'系统管理', 1, N'按钮管理操作,新增操作成功', CAST(0x0000ABAB008FF05F AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'dbcaadef-8191-44f2-a0f3-3b2f3eee474d', CAST(0x0000ABAB009124E2 AS DateTime), N'admin', N'超级管理员', N'Create', N'192.168.1.117', N'本地局域网', NULL, N'系统管理', 1, N'按钮管理操作,新增操作成功', CAST(0x0000ABAB009124E3 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'796fc1e2-cc31-4bf4-bd1f-521ef2792f9a', CAST(0x0000ABAB00912D2F AS DateTime), N'admin', N'超级管理员', N'Delete', N'192.168.1.117', N'本地局域网', NULL, N'系统管理', 1, N'按钮管理操作,删除操作成功', CAST(0x0000ABAB00912D2F AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL)
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'f40d17dd-a615-46b9-b3ae-629d400981cb', CAST(0x0000ABAB0091B15E AS DateTime), N'admin', N'超级管理员', N'Update', N'192.168.1.117', N'本地局域网', NULL, N'系统管理', 1, N'按钮管理操作,修改操作成功', CAST(0x0000ABAB0091B15E AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'957e0f9f-2bd0-45d9-921a-0b49191624be')
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_KeyValue]) VALUES (N'4c12dd9f-47e7-4ed0-8f25-5163a612449f', CAST(0x0000ABAD010BFF94 AS DateTime), N'admin', N'超级管理员', N'Login', N'192.168.99.1', N'本地局域网', NULL, N'系统登录', 1, N'登录成功', CAST(0x0000ABAD010BFF95 AS DateTime), NULL, NULL)
/****** Object:  Table [dbo].[Sys_ItemsDetail]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_ItemsDetail](
	[F_Id] [varchar](50) NOT NULL,
	[F_ItemId] [varchar](50) NULL,
	[F_ParentId] [varchar](50) NULL,
	[F_ItemCode] [varchar](50) NULL,
	[F_ItemName] [varchar](50) NULL,
	[F_SimpleSpelling] [varchar](500) NULL,
	[F_IsDefault] [bit] NULL,
	[F_Layers] [int] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](50) NULL,
 CONSTRAINT [PK_Sys_ItemsDetail] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Sys_ItemsDetail] UNIQUE NONCLUSTERED 
(
	[F_ItemId] ASC,
	[F_ItemCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'B97BD7F5-B212-40C1-A1F7-DD9A2E63EEF2', N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, N'Group', N'集团', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'2C3715AC-16F7-48FC-AB40-B0931DB1E729', N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, N'Area', N'区域', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'D082BDB9-5C34-49BF-BD51-4E85D7BFF646', N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, N'Company', N'公司', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'2B540AC5-6E64-4688-BB60-E0C01DFA982C', N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, N'SubCompany', N'子公司', NULL, 0, NULL, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'A64EBB80-6A24-48AF-A10E-B6A532C32CA6', N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, N'Department', N'部门', NULL, 0, NULL, 5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'D1F439B9-D80E-4547-9EF0-163391854AB5', N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, N'SubDepartment', N'子部门', NULL, 0, NULL, 6, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'19EE595A-E775-409D-A48F-B33CF9F262C7', N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, N'WorkGroup', N'小组', NULL, 0, NULL, 7, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'e5079bae-a8c0-4209-9019-6a2b4a3a7dac', N'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE', NULL, N'1', N'系统角色', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'04aba88d-f09b-46c6-bd90-a38471399b0e', N'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE', NULL, N'2', N'业务角色', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'cc6daa5c-a71c-4b2c-9a98-336bc3ee13c8', N'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE', NULL, N'3', N'其他角色', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'7a6d1bc4-3ec7-4c57-be9b-b4c97d60d5f6', N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, N'1', N'草稿', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'ce340c73-5048-4940-b86e-e3b3d53fdb2c', N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, N'2', N'提交', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'41053517-215d-4e11-81cd-367c0e9578d7', N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, N'3', N'通过', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'e1979a4f-7fc1-42b9-a0e2-52d7059e8fb9', N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, N'4', N'待审', NULL, 0, NULL, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'63acf96d-6115-4d76-a994-438f59419aad', N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, N'5', N'退回', NULL, 0, NULL, 5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'8b7b38bf-07c5-4f71-a853-41c5add4a94e', N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, N'6', N'完成', NULL, 0, NULL, 6, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'49b68663-ad01-4c43-b084-f98e3e23fee8', N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, N'7', N'废弃', NULL, 0, NULL, 7, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'fa6c1873-888c-4b70-a2cc-59fccbb22078', N'0DF5B725-5FB8-487F-B0E4-BC563A77EB04', NULL, N'SqlServer', N'SqlServer', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'27e85cb8-04e7-447b-911d-dd1e97dfab83', N'0DF5B725-5FB8-487F-B0E4-BC563A77EB04', NULL, N'Oracle', N'Oracle', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'34a642b2-44d4-485f-b3fc-6cce24f68b0f', N'0DF5B725-5FB8-487F-B0E4-BC563A77EB04', NULL, N'MySql', N'MySql', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'1950efdf-8685-4341-8d2c-ac85ac7addd0', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, N'1', N'小学', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'433511a9-78bd-41a0-ab25-e4d4b3423055', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, N'2', N'初中', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'acb128a6-ff63-4e25-b1e8-0a336ed3ab18', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, N'3', N'高中', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'a4974810-d88d-4d54-82cc-fd779875478f', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, N'4', N'中专', NULL, 0, NULL, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'486a82e3-1950-425e-b2ce-b5d98f33016a', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, N'5', N'大专', NULL, 0, NULL, 5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'34222d46-e0c6-446e-8150-dbefc47a1d5f', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, N'6', N'本科', NULL, 0, NULL, 6, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'3f280e2b-92f6-466c-8cc3-d7c8ff48cc8d', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, N'7', N'硕士', NULL, 0, NULL, 7, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'930b8de2-049f-4753-b9fd-87f484911ee4', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, N'8', N'博士', NULL, 0, NULL, 8, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'355ad7a4-c4f8-4bd3-9c72-ff07983da0f0', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, N'9', N'其他', NULL, 0, NULL, 9, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'5d6def0e-e2a7-48eb-b43c-cc3631f60dd7', N'BDD797C3-2323-4868-9A63-C8CC3437AEAA', NULL, N'1', N'男', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'822baf7c-abdb-4257-9b78-1f550806f544', N'BDD797C3-2323-4868-9A63-C8CC3437AEAA', NULL, N'0', N'女', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'738edf2a-d59f-4992-97ef-d847db23bcb8', N'FA7537E2-1C64-4431-84BF-66158DD63269', NULL, N'1', N'已婚', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'a7c4aba2-a891-4558-9b0a-bd7a1100a645', N'FA7537E2-1C64-4431-84BF-66158DD63269', NULL, N'2', N'未婚', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'f9609400-7caf-49af-ae3c-7671a9292fb3', N'FA7537E2-1C64-4431-84BF-66158DD63269', NULL, N'3', N'离异', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'a6f271f9-8653-4c5c-86cf-4cd00324b3c3', N'FA7537E2-1C64-4431-84BF-66158DD63269', NULL, N'4', N'丧偶', NULL, 0, NULL, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'7c1135be-0148-43eb-ae49-62a1e16ebbe3', N'FA7537E2-1C64-4431-84BF-66158DD63269', NULL, N'5', N'其他', NULL, 0, NULL, 5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'582e0b66-2ee9-4885-9f0c-3ce3ebf96e12', N'8CEB2F71-026C-4FA6-9A61-378127AE7320', NULL, N'1', N'已育', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'de2167f3-40fe-4bf7-b8cb-5b1c554bad7a', N'8CEB2F71-026C-4FA6-9A61-378127AE7320', NULL, N'2', N'未育', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'9b6a2225-6138-4cf2-9845-1bbecdf9b3ed', N'8CEB2F71-026C-4FA6-9A61-378127AE7320', NULL, N'3', N'其他', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'49300258-1227-4b85-b6a2-e948dbbe57a4', N'15023A4E-4856-44EB-BE71-36A106E2AA59', NULL, N'汉族', N'汉族', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'd69cb819-2bb3-4e1d-9917-33b9a439233d', N'2748F35F-4EE2-417C-A907-3453146AAF67', NULL, N'1', N'身份证', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'4c2f2428-2e00-4336-b9ce-5a61f24193f6', N'2748F35F-4EE2-417C-A907-3453146AAF67', NULL, N'2', N'士兵证', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'48c4e0f5-f570-4601-8946-6078762db3bf', N'2748F35F-4EE2-417C-A907-3453146AAF67', NULL, N'3', N'军官证', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'0096ad81-4317-486e-9144-a6a02999ff19', N'2748F35F-4EE2-417C-A907-3453146AAF67', NULL, N'4', N'护照', NULL, 0, NULL, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'ace2d5e8-56d4-4c8b-8409-34bc272df404', N'2748F35F-4EE2-417C-A907-3453146AAF67', NULL, N'5', N'其它', NULL, 0, NULL, 5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'795f2695-497a-4f5e-ab1d-706095c1edb9', N'9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, N'Other', N'其他', NULL, 0, NULL, 0, 0, 1, NULL, CAST(0x0000A648011B0C8C AS DateTime), NULL, CAST(0x0000A648012E2A4C AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'643209c8-931b-4641-9e04-b8bdd11800af', N'9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, N'Login', N'登录', NULL, 0, NULL, 1, 0, 1, NULL, CAST(0x0000A648011B1394 AS DateTime), NULL, CAST(0x0000A648012E33AC AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'3c884a03-4f34-4150-b134-966387f1de2a', N'9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, N'Exit', N'退出', NULL, 0, NULL, 2, 0, 1, NULL, CAST(0x0000A648011B1F4C AS DateTime), NULL, CAST(0x0000A648012E3AB4 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'ccc8e274-75da-4eb8-bed0-69008ab7c41c', N'9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, N'Visit', N'访问', NULL, 0, NULL, 3, 0, 1, NULL, CAST(0x0000A648011B2654 AS DateTime), NULL, CAST(0x0000A648012E41BC AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'e545061c-93fd-4ca2-ab29-b43db9db798b', N'9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, N'Create', N'新增', NULL, 0, NULL, 4, 0, 1, NULL, CAST(0x0000A648011B2FB4 AS DateTime), NULL, CAST(0x0000A648012E48C4 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'a13ccf0d-ac8f-44ac-a522-4a54edf1f0fa', N'9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, N'Delete', N'删除', NULL, 0, NULL, 5, 0, 1, NULL, CAST(0x0000A648011B36BC AS DateTime), NULL, CAST(0x0000A648012E5224 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'392f88a8-02c2-49eb-8aed-b2acf474272a', N'9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, N'Update', N'修改', NULL, 0, NULL, 6, 0, 1, NULL, CAST(0x0000A648011B3C98 AS DateTime), NULL, CAST(0x0000A648012E592C AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'24e39617-f04e-4f6f-9209-ad71e870e7c6', N'9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, N'Submit', N'提交', NULL, 0, NULL, 7, 0, 1, NULL, CAST(0x0000A648011B4274 AS DateTime), NULL, CAST(0x0000A648012E5F08 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'7fc8fa11-4acf-409a-a771-aaf1eb81e814', N'9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, N'Exception', N'异常', NULL, 0, NULL, 8, 0, 1, NULL, CAST(0x0000A648011B497C AS DateTime), NULL, CAST(0x0000A648012E673C AS DateTime), NULL, NULL, NULL)
/****** Object:  Table [dbo].[Sys_Items]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Items](
	[F_Id] [varchar](50) NOT NULL,
	[F_ParentId] [varchar](50) NULL,
	[F_EnCode] [varchar](50) NULL,
	[F_FullName] [varchar](50) NULL,
	[F_IsTree] [bit] NULL,
	[F_Layers] [int] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](50) NULL,
 CONSTRAINT [PK_Sys_Items] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Sys_Items] UNIQUE NONCLUSTERED 
(
	[F_EnCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Sys_Items] ([F_Id], [F_ParentId], [F_EnCode], [F_FullName], [F_IsTree], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'OrganizeCategory', N'机构分类', 0, 2, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Items] ([F_Id], [F_ParentId], [F_EnCode], [F_FullName], [F_IsTree], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'RoleType', N'角色类型', 0, 2, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Items] ([F_Id], [F_ParentId], [F_EnCode], [F_FullName], [F_IsTree], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'0DF5B725-5FB8-487F-B0E4-BC563A77EB04', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'DbType', N'数据库类型', 0, 2, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Items] ([F_Id], [F_ParentId], [F_EnCode], [F_FullName], [F_IsTree], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'9a7079bd-0660-4549-9c2d-db5e8616619f', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'DbLogType', N'系统日志', 0, 2, 16, 0, 1, NULL, CAST(0x0000A648011AD44C AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Items] ([F_Id], [F_ParentId], [F_EnCode], [F_FullName], [F_IsTree], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'AuditState', N'审核状态', 0, 2, 6, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Items] ([F_Id], [F_ParentId], [F_EnCode], [F_FullName], [F_IsTree], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'2748F35F-4EE2-417C-A907-3453146AAF67', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'Certificate', N'证件名称', 0, 2, 7, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Items] ([F_Id], [F_ParentId], [F_EnCode], [F_FullName], [F_IsTree], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'00F76465-DBBA-484A-B75C-E81DEE9313E6', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'Education', N'学历', 0, 2, 8, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Items] ([F_Id], [F_ParentId], [F_EnCode], [F_FullName], [F_IsTree], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'FA7537E2-1C64-4431-84BF-66158DD63269', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'101', N'婚姻', 0, 2, 12, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Items] ([F_Id], [F_ParentId], [F_EnCode], [F_FullName], [F_IsTree], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'8CEB2F71-026C-4FA6-9A61-378127AE7320', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'102', N'生育', 0, 2, 13, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Items] ([F_Id], [F_ParentId], [F_EnCode], [F_FullName], [F_IsTree], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'15023A4E-4856-44EB-BE71-36A106E2AA59', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'103', N'民族', 0, 2, 14, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Items] ([F_Id], [F_ParentId], [F_EnCode], [F_FullName], [F_IsTree], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'BDD797C3-2323-4868-9A63-C8CC3437AEAA', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'104', N'性别', 0, 2, 15, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Items] ([F_Id], [F_ParentId], [F_EnCode], [F_FullName], [F_IsTree], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'0', N'Sys_Items', N'通用字典', 1, 1, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[Sys_FilterIP]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_FilterIP](
	[F_Id] [varchar](50) NOT NULL,
	[F_Type] [bit] NULL,
	[F_StartIP] [varchar](50) NULL,
	[F_EndIP] [varchar](50) NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](500) NULL,
 CONSTRAINT [PK_Sys_FilterIP] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Sys_FilterIP] ([F_Id], [F_Type], [F_StartIP], [F_EndIP], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'4e035f2b-a03b-49b5-a38d-1c6d211a2a04', 1, N'192.168.1.1', N'192.168.1.10', NULL, 0, 0, N'测试', CAST(0x0000A64701262FB8 AS DateTime), NULL, CAST(0x0000AB9200F34872 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_FilterIP] ([F_Id], [F_Type], [F_StartIP], [F_EndIP], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'b3fbe66f-82cd-4f4a-ada3-61eb5a2d9eee', 0, N'192.168.0.1', N'192.168.0.255', NULL, 0, 1, NULL, CAST(0x0000A6470126A614 AS DateTime), NULL, CAST(0x0000AB91009BB897 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
/****** Object:  Table [dbo].[Sys_DbBackup]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_DbBackup](
	[F_Id] [varchar](50) NOT NULL,
	[F_BackupType] [varchar](50) NULL,
	[F_DbName] [varchar](50) NULL,
	[F_FileName] [varchar](50) NULL,
	[F_FileSize] [varchar](50) NULL,
	[F_FilePath] [varchar](500) NULL,
	[F_BackupTime] [datetime] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](500) NULL,
 CONSTRAINT [PK_Sys_DbBackup] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_Area]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Area](
	[F_Id] [varchar](50) NOT NULL,
	[F_ParentId] [varchar](50) NULL,
	[F_Layers] [int] NULL,
	[F_EnCode] [varchar](50) NULL,
	[F_FullName] [varchar](50) NULL,
	[F_SimpleSpelling] [varchar](50) NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](50) NULL,
 CONSTRAINT [PK_Sys_Area] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Sys_Area] UNIQUE NONCLUSTERED 
(
	[F_Layers] ASC,
	[F_EnCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'120100', N'120000', 2, N'120100', N'天津市', N'tjs', 120100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'130100', N'130000', 2, N'130100', N'石家庄市', N'sjzs', 130100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'130200', N'130000', 2, N'130200', N'唐山市', N'tss', 130200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'130300', N'130000', 2, N'130300', N'秦皇岛市', N'qhds', 130300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'130400', N'130000', 2, N'130400', N'邯郸市', N'hds', 130400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'130500', N'130000', 2, N'130500', N'邢台市', N'xts', 130500, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'130600', N'130000', 2, N'130600', N'保定市', N'bds', 130600, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'130700', N'130000', 2, N'130700', N'张家口市', N'zjks', 130700, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'130800', N'130000', 2, N'130800', N'承德市', N'cds', 130800, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'130900', N'130000', 2, N'130900', N'沧州市', N'czs', 130900, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'131000', N'130000', 2, N'131000', N'廊坊市', N'lfs', 131000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'131100', N'130000', 2, N'131100', N'衡水市', N'hss', 131100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'140100', N'140000', 2, N'140100', N'太原市', N'tys', 140100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'140200', N'140000', 2, N'140200', N'大同市', N'dts', 140200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'140300', N'140000', 2, N'140300', N'阳泉市', N'yqs', 140300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'140400', N'140000', 2, N'140400', N'长治市', N'czs', 140400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'140500', N'140000', 2, N'140500', N'晋城市', N'jcs', 140500, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'140600', N'140000', 2, N'140600', N'朔州市', N'szs', 140600, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'140700', N'140000', 2, N'140700', N'晋中市', N'jzs', 140700, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'140800', N'140000', 2, N'140800', N'运城市', N'ycs', 140800, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'140900', N'140000', 2, N'140900', N'忻州市', N'xzs', 140900, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'141000', N'140000', 2, N'141000', N'临汾市', N'lfs', 141000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'141100', N'140000', 2, N'141100', N'吕梁市', N'lls', 141100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'150100', N'150000', 2, N'150100', N'呼和浩特市', N'hhhts', 150100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'150200', N'150000', 2, N'150200', N'包头市', N'bts', 150200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'150300', N'150000', 2, N'150300', N'乌海市', N'whs', 150300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'150400', N'150000', 2, N'150400', N'赤峰市', N'cfs', 150400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'150500', N'150000', 2, N'150500', N'通辽市', N'tls', 150500, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'150600', N'150000', 2, N'150600', N'鄂尔多斯市', N'eedss', 150600, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'150700', N'150000', 2, N'150700', N'呼伦贝尔市', N'hlbes', 150700, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'150800', N'150000', 2, N'150800', N'巴彦淖尔市', N'bynes', 150800, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'340400', N'340000', 2, N'340400', N'淮南市', N'hns', 340400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'340500', N'340000', 2, N'340500', N'马鞍山市', N'mass', 340500, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'340600', N'340000', 2, N'340600', N'淮北市', N'hbs', 340600, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'340700', N'340000', 2, N'340700', N'铜陵市', N'tls', 340700, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'340800', N'340000', 2, N'340800', N'安庆市', N'aqs', 340800, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'341000', N'340000', 2, N'341000', N'黄山市', N'hss', 341000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'341100', N'340000', 2, N'341100', N'滁州市', N'czs', 341100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'341200', N'340000', 2, N'341200', N'阜阳市', N'fys', 341200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'341300', N'340000', 2, N'341300', N'宿州市', N'szs', 341300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'341500', N'340000', 2, N'341500', N'六安市', N'las', 341500, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'341600', N'340000', 2, N'341600', N'亳州市', N'bzs', 341600, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'341700', N'340000', 2, N'341700', N'池州市', N'czs', 341700, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'341800', N'340000', 2, N'341800', N'宣城市', N'xcs', 341800, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'350100', N'350000', 2, N'350100', N'福州市', N'fzs', 350100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'350200', N'350000', 2, N'350200', N'厦门市', N'xms', 350200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'350300', N'350000', 2, N'350300', N'莆田市', N'pts', 350300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'350400', N'350000', 2, N'350400', N'三明市', N'sms', 350400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'350500', N'350000', 2, N'350500', N'泉州市', N'qzs', 350500, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'350600', N'350000', 2, N'350600', N'漳州市', N'zzs', 350600, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'350700', N'350000', 2, N'350700', N'南平市', N'nps', 350700, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'350800', N'350000', 2, N'350800', N'龙岩市', N'lys', 350800, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'350900', N'350000', 2, N'350900', N'宁德市', N'nds', 350900, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'360100', N'360000', 2, N'360100', N'南昌市', N'ncs', 360100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'360200', N'360000', 2, N'360200', N'景德镇市', N'jdzs', 360200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'360300', N'360000', 2, N'360300', N'萍乡市', N'pxs', 360300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'360400', N'360000', 2, N'360400', N'九江市', N'jjs', 360400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'360500', N'360000', 2, N'360500', N'新余市', N'xys', 360500, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'360600', N'360000', 2, N'360600', N'鹰潭市', N'yts', 360600, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'360700', N'360000', 2, N'360700', N'赣州市', N'gzs', 360700, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'360800', N'360000', 2, N'360800', N'吉安市', N'jas', 360800, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'360900', N'360000', 2, N'360900', N'宜春市', N'ycs', 360900, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'361000', N'360000', 2, N'361000', N'抚州市', N'fzs', 361000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'361100', N'360000', 2, N'361100', N'上饶市', N'srs', 361100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'370100', N'370000', 2, N'370100', N'济南市', N'jns', 370100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'370200', N'370000', 2, N'370200', N'青岛市', N'qds', 370200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'370300', N'370000', 2, N'370300', N'淄博市', N'zbs', 370300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'370400', N'370000', 2, N'370400', N'枣庄市', N'zzs', 370400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'370500', N'370000', 2, N'370500', N'东营市', N'dys', 370500, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'370600', N'370000', 2, N'370600', N'烟台市', N'yts', 370600, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'370700', N'370000', 2, N'370700', N'潍坊市', N'wfs', 370700, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'370800', N'370000', 2, N'370800', N'济宁市', N'jns', 370800, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'370900', N'370000', 2, N'370900', N'泰安市', N'tas', 370900, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'371000', N'370000', 2, N'371000', N'威海市', N'whs', 371000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'371100', N'370000', 2, N'371100', N'日照市', N'rzs', 371100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'371200', N'370000', 2, N'371200', N'莱芜市', N'lws', 371200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'371300', N'370000', 2, N'371300', N'临沂市', N'lys', 371300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'371400', N'370000', 2, N'371400', N'德州市', N'dzs', 371400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'371500', N'370000', 2, N'371500', N'聊城市', N'lcs', 371500, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'371600', N'370000', 2, N'371600', N'滨州市', N'bzs', 371600, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'371700', N'370000', 2, N'371700', N'菏泽市', N'hzs', 371700, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'410100', N'410000', 2, N'410100', N'郑州市', N'zzs', 410100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'410200', N'410000', 2, N'410200', N'开封市', N'kfs', 410200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'410300', N'410000', 2, N'410300', N'洛阳市', N'lys', 410300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'410400', N'410000', 2, N'410400', N'平顶山市', N'pdss', 410400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'410500', N'410000', 2, N'410500', N'安阳市', N'ays', 410500, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'410600', N'410000', 2, N'410600', N'鹤壁市', N'hbs', 410600, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'410700', N'410000', 2, N'410700', N'新乡市', N'xxs', 410700, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'410800', N'410000', 2, N'410800', N'焦作市', N'jzs', 410800, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'410881', N'410000', 2, N'410881', N'济源市', N'jys', 410881, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'410900', N'410000', 2, N'410900', N'濮阳市', N'pys', 410900, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'411000', N'410000', 2, N'411000', N'许昌市', N'xcs', 411000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'411100', N'410000', 2, N'411100', N'漯河市', N'lhs', 411100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'411200', N'410000', 2, N'411200', N'三门峡市', N'smxs', 411200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'411300', N'410000', 2, N'411300', N'南阳市', N'nys', 411300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'411400', N'410000', 2, N'411400', N'商丘市', N'sqs', 411400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'411500', N'410000', 2, N'411500', N'信阳市', N'xys', 411500, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'411600', N'410000', 2, N'411600', N'周口市', N'zks', 411600, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'152200', N'150000', 2, N'152200', N'兴安盟', N'xam', 152200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'152500', N'150000', 2, N'152500', N'锡林郭勒盟', N'xlglm', 152500, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'152900', N'150000', 2, N'152900', N'阿拉善盟', N'alsm', 152900, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'210100', N'210000', 2, N'210100', N'沈阳市', N'sys', 210100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'210200', N'210000', 2, N'210200', N'大连市', N'dls', 210200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'210300', N'210000', 2, N'210300', N'鞍山市', N'ass', 210300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'210400', N'210000', 2, N'210400', N'抚顺市', N'fss', 210400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'210500', N'210000', 2, N'210500', N'本溪市', N'bxs', 210500, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'210600', N'210000', 2, N'210600', N'丹东市', N'dds', 210600, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'210700', N'210000', 2, N'210700', N'锦州市', N'jzs', 210700, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'210800', N'210000', 2, N'210800', N'营口市', N'yks', 210800, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'210900', N'210000', 2, N'210900', N'阜新市', N'fxs', 210900, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'211000', N'210000', 2, N'211000', N'辽阳市', N'lys', 211000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'211100', N'210000', 2, N'211100', N'盘锦市', N'pjs', 211100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'211200', N'210000', 2, N'211200', N'铁岭市', N'tls', 211200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'211300', N'210000', 2, N'211300', N'朝阳市', N'zys', 211300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'211400', N'210000', 2, N'211400', N'葫芦岛市', N'hlds', 211400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'220100', N'220000', 2, N'220100', N'长春市', N'zcs', 220100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'220200', N'220000', 2, N'220200', N'吉林市', N'jls', 220200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'220300', N'220000', 2, N'220300', N'四平市', N'sps', 220300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'220400', N'220000', 2, N'220400', N'辽源市', N'lys', 220400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'220500', N'220000', 2, N'220500', N'通化市', N'ths', 220500, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'220600', N'220000', 2, N'220600', N'白山市', N'bss', 220600, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'220700', N'220000', 2, N'220700', N'松原市', N'sys', 220700, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'220800', N'220000', 2, N'220800', N'白城市', N'bcs', 220800, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'222400', N'220000', 2, N'222400', N'延边朝鲜族自治州', N'ybzxzzzz', 222400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'230100', N'230000', 2, N'230100', N'哈尔滨市', N'hebs', 230100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'230200', N'230000', 2, N'230200', N'齐齐哈尔市', N'qqhes', 230200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'230300', N'230000', 2, N'230300', N'鸡西市', N'jxs', 230300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'230400', N'230000', 2, N'230400', N'鹤岗市', N'hgs', 230400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'230500', N'230000', 2, N'230500', N'双鸭山市', N'syss', 230500, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'230600', N'230000', 2, N'230600', N'大庆市', N'dqs', 230600, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'230700', N'230000', 2, N'230700', N'伊春市', N'ycs', 230700, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'230800', N'230000', 2, N'230800', N'佳木斯市', N'jmss', 230800, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'230900', N'230000', 2, N'230900', N'七台河市', N'qths', 230900, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'231000', N'230000', 2, N'231000', N'牡丹江市', N'mdjs', 231000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'231100', N'230000', 2, N'231100', N'黑河市', N'hhs', 231100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'231200', N'230000', 2, N'231200', N'绥化市', N'shs', 231200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'232700', N'230000', 2, N'232700', N'大兴安岭地区', N'dxaldq', 232700, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'310100', N'310000', 2, N'310100', N'上海市', N'shs', 310100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'320100', N'320000', 2, N'320100', N'南京市', N'njs', 320100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'320200', N'320000', 2, N'320200', N'无锡市', N'wxs', 320200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'320300', N'320000', 2, N'320300', N'徐州市', N'xzs', 320300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'320400', N'320000', 2, N'320400', N'常州市', N'czs', 320400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'320500', N'320000', 2, N'320500', N'苏州市', N'szs', 320500, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'320600', N'320000', 2, N'320600', N'南通市', N'nts', 320600, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'320700', N'320000', 2, N'320700', N'连云港市', N'lygs', 320700, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'320800', N'320000', 2, N'320800', N'淮安市', N'has', 320800, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'320900', N'320000', 2, N'320900', N'盐城市', N'ycs', 320900, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'321000', N'320000', 2, N'321000', N'扬州市', N'yzs', 321000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'321100', N'320000', 2, N'321100', N'镇江市', N'zjs', 321100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'321200', N'320000', 2, N'321200', N'泰州市', N'tzs', 321200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'321300', N'320000', 2, N'321300', N'宿迁市', N'sqs', 321300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'330100', N'330000', 2, N'330100', N'杭州市', N'hzs', 330100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'330200', N'330000', 2, N'330200', N'宁波市', N'nbs', 330200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'330300', N'330000', 2, N'330300', N'温州市', N'wzs', 330300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'330400', N'330000', 2, N'330400', N'嘉兴市', N'jxs', 330400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'330500', N'330000', 2, N'330500', N'湖州市', N'hzs', 330500, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'330600', N'330000', 2, N'330600', N'绍兴市', N'sxs', 330600, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'330700', N'330000', 2, N'330700', N'金华市', N'jhs', 330700, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'330800', N'330000', 2, N'330800', N'衢州市', N'qzs', 330800, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'330900', N'330000', 2, N'330900', N'舟山市', N'zss', 330900, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'331000', N'330000', 2, N'331000', N'台州市', N'tzs', 331000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'331100', N'330000', 2, N'331100', N'丽水市', N'lss', 331100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'340100', N'340000', 2, N'340100', N'合肥市', N'hfs', 340100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'340200', N'340000', 2, N'340200', N'芜湖市', N'whs', 340200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'420100', N'420000', 2, N'420100', N'武汉市', N'whs', 420100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'420200', N'420000', 2, N'420200', N'黄石市', N'hss', 420200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'420300', N'420000', 2, N'420300', N'十堰市', N'sys', 420300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'420500', N'420000', 2, N'420500', N'宜昌市', N'ycs', 420500, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'420600', N'420000', 2, N'420600', N'襄阳市', N'xys', 420600, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'420700', N'420000', 2, N'420700', N'鄂州市', N'ezs', 420700, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'420800', N'420000', 2, N'420800', N'荆门市', N'jms', 420800, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'420900', N'420000', 2, N'420900', N'孝感市', N'xgs', 420900, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'421000', N'420000', 2, N'421000', N'荆州市', N'jzs', 421000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'421100', N'420000', 2, N'421100', N'黄冈市', N'hgs', 421100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'421200', N'420000', 2, N'421200', N'咸宁市', N'xns', 421200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'421300', N'420000', 2, N'421300', N'随州市', N'szs', 421300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'422800', N'420000', 2, N'422800', N'恩施土家族苗族自治州', N'estjzmzzzz', 422800, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'430100', N'430000', 2, N'430100', N'长沙市', N'zss', 430100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'430200', N'430000', 2, N'430200', N'株洲市', N'zzs', 430200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'430300', N'430000', 2, N'430300', N'湘潭市', N'xts', 430300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'430400', N'430000', 2, N'430400', N'衡阳市', N'hys', 430400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'430500', N'430000', 2, N'430500', N'邵阳市', N'sys', 430500, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'430600', N'430000', 2, N'430600', N'岳阳市', N'yys', 430600, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'430700', N'430000', 2, N'430700', N'常德市', N'cds', 430700, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'430800', N'430000', 2, N'430800', N'张家界市', N'zjjs', 430800, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'430900', N'430000', 2, N'430900', N'益阳市', N'yys', 430900, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'431000', N'430000', 2, N'431000', N'郴州市', N'czs', 431000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'431100', N'430000', 2, N'431100', N'永州市', N'yzs', 431100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'431200', N'430000', 2, N'431200', N'怀化市', N'hhs', 431200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'431300', N'430000', 2, N'431300', N'娄底市', N'lds', 431300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'433100', N'430000', 2, N'433100', N'湘西土家族苗族自治州', N'xxtjzmzzzz', 433100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'440100', N'440000', 2, N'440100', N'广州市', N'gzs', 440100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'440200', N'440000', 2, N'440200', N'韶关市', N'sgs', 440200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'440300', N'440000', 2, N'440300', N'深圳市', N'szs', 440300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'440400', N'440000', 2, N'440400', N'珠海市', N'zhs', 440400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'440500', N'440000', 2, N'440500', N'汕头市', N'sts', 440500, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'440600', N'440000', 2, N'440600', N'佛山市', N'fss', 440600, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'440700', N'440000', 2, N'440700', N'江门市', N'jms', 440700, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'440800', N'440000', 2, N'440800', N'湛江市', N'zjs', 440800, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'440900', N'440000', 2, N'440900', N'茂名市', N'mms', 440900, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'441200', N'440000', 2, N'441200', N'肇庆市', N'zqs', 441200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'441300', N'440000', 2, N'441300', N'惠州市', N'hzs', 441300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
GO
print 'Processed 200 total records'
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'441400', N'440000', 2, N'441400', N'梅州市', N'mzs', 441400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'441500', N'440000', 2, N'441500', N'汕尾市', N'sws', 441500, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'441600', N'440000', 2, N'441600', N'河源市', N'hys', 441600, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'441700', N'440000', 2, N'441700', N'阳江市', N'yjs', 441700, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'441800', N'440000', 2, N'441800', N'清远市', N'qys', 441800, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'445100', N'440000', 2, N'445100', N'潮州市', N'czs', 445100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'445200', N'440000', 2, N'445200', N'揭阳市', N'jys', 445200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'445300', N'440000', 2, N'445300', N'云浮市', N'yfs', 445300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'450100', N'450000', 2, N'450100', N'南宁市', N'nns', 450100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'450200', N'450000', 2, N'450200', N'柳州市', N'lzs', 450200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'450300', N'450000', 2, N'450300', N'桂林市', N'gls', 450300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'450400', N'450000', 2, N'450400', N'梧州市', N'wzs', 450400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'450500', N'450000', 2, N'450500', N'北海市', N'bhs', 450500, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'450600', N'450000', 2, N'450600', N'防城港市', N'fcgs', 450600, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'450700', N'450000', 2, N'450700', N'钦州市', N'qzs', 450700, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'450800', N'450000', 2, N'450800', N'贵港市', N'ggs', 450800, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'450900', N'450000', 2, N'450900', N'玉林市', N'yls', 450900, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'451000', N'450000', 2, N'451000', N'百色市', N'bss', 451000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'451100', N'450000', 2, N'451100', N'贺州市', N'hzs', 451100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'451200', N'450000', 2, N'451200', N'河池市', N'hcs', 451200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'451300', N'450000', 2, N'451300', N'来宾市', N'lbs', 451300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'451400', N'450000', 2, N'451400', N'崇左市', N'czs', 451400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'460100', N'460000', 2, N'460100', N'海口市', N'hks', 460100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'500100', N'500000', 2, N'500100', N'重庆市', N'zqs', 500100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'510100', N'510000', 2, N'510100', N'成都市', N'cds', 510100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'510300', N'510000', 2, N'510300', N'自贡市', N'zgs', 510300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'510400', N'510000', 2, N'510400', N'攀枝花市', N'pzhs', 510400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'510500', N'510000', 2, N'510500', N'泸州市', N'lzs', 510500, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'510700', N'510000', 2, N'510700', N'绵阳市', N'mys', 510700, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'510800', N'510000', 2, N'510800', N'广元市', N'gys', 510800, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'510900', N'510000', 2, N'510900', N'遂宁市', N'sns', 510900, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'511000', N'510000', 2, N'511000', N'内江市', N'njs', 511000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'511100', N'510000', 2, N'511100', N'乐山市', N'yss', 511100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'511300', N'510000', 2, N'511300', N'南充市', N'ncs', 511300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'511400', N'510000', 2, N'511400', N'眉山市', N'mss', 511400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'511500', N'510000', 2, N'511500', N'宜宾市', N'ybs', 511500, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'511600', N'510000', 2, N'511600', N'广安市', N'gas', 511600, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'511700', N'510000', 2, N'511700', N'达州市', N'dzs', 511700, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'511800', N'510000', 2, N'511800', N'雅安市', N'yas', 511800, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'511900', N'510000', 2, N'511900', N'巴中市', N'bzs', 511900, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'512000', N'510000', 2, N'512000', N'资阳市', N'zys', 512000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'513200', N'510000', 2, N'513200', N'阿坝藏族羌族自治州', N'abzzqzzzz', 513200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'513300', N'510000', 2, N'513300', N'甘孜藏族自治州', N'gzzzzzz', 513300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'513400', N'510000', 2, N'513400', N'凉山彝族自治州', N'lsyzzzz', 513400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'520100', N'520000', 2, N'520100', N'贵阳市', N'gys', 520100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'520200', N'520000', 2, N'520200', N'六盘水市', N'lpss', 520200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'520300', N'520000', 2, N'520300', N'遵义市', N'zys', 520300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'520400', N'520000', 2, N'520400', N'安顺市', N'ass', 520400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'522200', N'520000', 2, N'522200', N'铜仁市', N'trs', 522200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'522300', N'520000', 2, N'522300', N'黔西南布依族苗族自治州', N'qxnbyzmzzzz', 522300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'522400', N'520000', 2, N'522400', N'毕节市', N'bjs', 522400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'522600', N'520000', 2, N'522600', N'黔东南苗族侗族自治州', N'qdnmztzzzz', 522600, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'522700', N'520000', 2, N'522700', N'黔南布依族苗族自治州', N'qnbyzmzzzz', 522700, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'530100', N'530000', 2, N'530100', N'昆明市', N'kms', 530100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'530300', N'530000', 2, N'530300', N'曲靖市', N'qjs', 530300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'530400', N'530000', 2, N'530400', N'玉溪市', N'yxs', 530400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'530500', N'530000', 2, N'530500', N'保山市', N'bss', 530500, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'530600', N'530000', 2, N'530600', N'昭通市', N'zts', 530600, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'530700', N'530000', 2, N'530700', N'丽江市', N'ljs', 530700, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'530800', N'530000', 2, N'530800', N'普洱市', N'pes', 530800, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'530900', N'530000', 2, N'530900', N'临沧市', N'lcs', 530900, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'532300', N'530000', 2, N'532300', N'楚雄彝族自治州', N'cxyzzzz', 532300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'532500', N'530000', 2, N'532500', N'红河哈尼族彝族自治州', N'hhhnzyzzzz', 532500, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'532600', N'530000', 2, N'532600', N'文山壮族苗族自治州', N'wszzmzzzz', 532600, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'532800', N'530000', 2, N'532800', N'西双版纳傣族自治州', N'xsbndzzzz', 532800, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'532900', N'530000', 2, N'532900', N'大理白族自治州', N'dlbzzzz', 532900, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'533100', N'530000', 2, N'533100', N'德宏傣族景颇族自治州', N'dhdzjpzzzz', 533100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'533300', N'530000', 2, N'533300', N'怒江傈僳族自治州', N'njlszzzz', 533300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'533400', N'530000', 2, N'533400', N'迪庆藏族自治州', N'dqzzzzz', 533400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'540100', N'540000', 2, N'540100', N'拉萨市', N'lss', 540100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'542100', N'540000', 2, N'542100', N'昌都地区', N'cddq', 542100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'542200', N'540000', 2, N'542200', N'山南地区', N'sndq', 542200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'542300', N'540000', 2, N'542300', N'日喀则地区', N'rkzdq', 542300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'542400', N'540000', 2, N'542400', N'那曲地区', N'nqdq', 542400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'542500', N'540000', 2, N'542500', N'阿里地区', N'aldq', 542500, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'542600', N'540000', 2, N'542600', N'林芝地区', N'lzdq', 542600, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'610100', N'610000', 2, N'610100', N'西安市', N'xas', 610100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'610200', N'610000', 2, N'610200', N'铜川市', N'tcs', 610200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'610300', N'610000', 2, N'610300', N'宝鸡市', N'bjs', 610300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'610400', N'610000', 2, N'610400', N'咸阳市', N'xys', 610400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'610500', N'610000', 2, N'610500', N'渭南市', N'wns', 610500, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'610600', N'610000', 2, N'610600', N'延安市', N'yas', 610600, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'610700', N'610000', 2, N'610700', N'汉中市', N'hzs', 610700, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'610800', N'610000', 2, N'610800', N'榆林市', N'yls', 610800, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'610900', N'610000', 2, N'610900', N'安康市', N'aks', 610900, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'611000', N'610000', 2, N'611000', N'商洛市', N'sls', 611000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'620100', N'620000', 2, N'620100', N'兰州市', N'lzs', 620100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'620200', N'620000', 2, N'620200', N'嘉峪关市', N'jygs', 620200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'620300', N'620000', 2, N'620300', N'金昌市', N'jcs', 620300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'620400', N'620000', 2, N'620400', N'白银市', N'bys', 620400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'620500', N'620000', 2, N'620500', N'天水市', N'tss', 620500, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'110000', N'0', 1, N'110000', N'北京', N'bj', 110000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'120000', N'0', 1, N'120000', N'天津', N'tj', 120000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'130000', N'0', 1, N'130000', N'河北省', N'hbs', 130000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'140000', N'0', 1, N'140000', N'山西省', N'sxs', 140000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'150000', N'0', 1, N'150000', N'内蒙古自治区', N'nmgzzq', 150000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'210000', N'0', 1, N'210000', N'辽宁省', N'lns', 210000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'220000', N'0', 1, N'220000', N'吉林省', N'jls', 220000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'230000', N'0', 1, N'230000', N'黑龙江省', N'hljs', 230000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'310000', N'0', 1, N'310000', N'上海', N'sh', 310000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'320000', N'0', 1, N'320000', N'江苏省', N'jss', 320000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
GO
print 'Processed 300 total records'
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'330000', N'0', 1, N'330000', N'浙江省', N'zjs', 330000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'340000', N'0', 1, N'340000', N'安徽省', N'ahs', 340000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'350000', N'0', 1, N'350000', N'福建省', N'fjs', 350000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'360000', N'0', 1, N'360000', N'江西省', N'jxs', 360000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'370000', N'0', 1, N'370000', N'山东省', N'sds', 370000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'410000', N'0', 1, N'410000', N'河南省', N'hns', 410000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'420000', N'0', 1, N'420000', N'湖北省', N'hbs', 420000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'430000', N'0', 1, N'430000', N'湖南省', N'hns', 430000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'440000', N'0', 1, N'440000', N'广东省', N'gds', 440000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'450000', N'0', 1, N'450000', N'广西壮族自治区', N'gxzzzzq', 450000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'460000', N'0', 1, N'460000', N'海南省', N'hns', 460000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'500000', N'0', 1, N'500000', N'重庆', N'zq', 500000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'510000', N'0', 1, N'510000', N'四川省', N'scs', 510000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'520000', N'0', 1, N'520000', N'贵州省', N'gzs', 520000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'530000', N'0', 1, N'530000', N'云南省', N'yns', 530000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'540000', N'0', 1, N'540000', N'西藏自治区', N'xzzzq', 540000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'610000', N'0', 1, N'610000', N'陕西省', N'sxs', 610000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'620000', N'0', 1, N'620000', N'甘肃省', N'gss', 620000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'630000', N'0', 1, N'630000', N'青海省', N'qhs', 630000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'640000', N'0', 1, N'640000', N'宁夏回族自治区', N'nxhzzzq', 640000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'650000', N'0', 1, N'650000', N'新疆维吾尔自治区', N'xjwwezzq', 650000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'810000', N'0', 1, N'810000', N'香港特别行政区', N'xgtbxzq', 810000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'820000', N'0', 1, N'820000', N'澳门特别行政区', N'amtbxzq', 820000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'830000', N'0', 1, N'830000', N'台湾省', N'tws', 830000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'150900', N'150000', 2, N'150900', N'乌兰察布市', N'wlcbs', 150900, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'340300', N'340000', 2, N'340300', N'蚌埠市', N'bbs', 340300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'411700', N'410000', 2, N'411700', N'驻马店市', N'zmds', 411700, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'510600', N'510000', 2, N'510600', N'德阳市', N'dys', 510600, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'620600', N'620000', 2, N'620600', N'武威市', N'wws', 620600, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'620700', N'620000', 2, N'620700', N'张掖市', N'zys', 620700, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'620800', N'620000', 2, N'620800', N'平凉市', N'pls', 620800, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'620900', N'620000', 2, N'620900', N'酒泉市', N'jqs', 620900, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'621000', N'620000', 2, N'621000', N'庆阳市', N'qys', 621000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'621100', N'620000', 2, N'621100', N'定西市', N'dxs', 621100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'621200', N'620000', 2, N'621200', N'陇南市', N'lns', 621200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'622900', N'620000', 2, N'622900', N'临夏回族自治州', N'lxhzzzz', 622900, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'623000', N'620000', 2, N'623000', N'甘南藏族自治州', N'gnzzzzz', 623000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'630100', N'630000', 2, N'630100', N'西宁市', N'xns', 630100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'632100', N'630000', 2, N'632100', N'海东市', N'hds', 632100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'632200', N'630000', 2, N'632200', N'海北藏族自治州', N'hbzzzzz', 632200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'632300', N'630000', 2, N'632300', N'黄南藏族自治州', N'hnzzzzz', 632300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'632500', N'630000', 2, N'632500', N'海南藏族自治州', N'hnzzzzz', 632500, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'632600', N'630000', 2, N'632600', N'果洛藏族自治州', N'glzzzzz', 632600, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'632700', N'630000', 2, N'632700', N'玉树藏族自治州', N'yszzzzz', 632700, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'632800', N'630000', 2, N'632800', N'海西蒙古族藏族自治州', N'hxmgzzzzzz', 632800, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'640100', N'640000', 2, N'640100', N'银川市', N'ycs', 640100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'640200', N'640000', 2, N'640200', N'石嘴山市', N'szss', 640200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'640300', N'640000', 2, N'640300', N'吴忠市', N'wzs', 640300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'640400', N'640000', 2, N'640400', N'固原市', N'gys', 640400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'640500', N'640000', 2, N'640500', N'中卫市', N'zws', 640500, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'650100', N'650000', 2, N'650100', N'乌鲁木齐市', N'wlmqs', 650100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'650200', N'650000', 2, N'650200', N'克拉玛依市', N'klmys', 650200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'652100', N'650000', 2, N'652100', N'吐鲁番地区', N'tlfdq', 652100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'652200', N'650000', 2, N'652200', N'哈密地区', N'hmdq', 652200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'652300', N'650000', 2, N'652300', N'昌吉回族自治州', N'cjhzzzz', 652300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'652700', N'650000', 2, N'652700', N'博尔塔拉蒙古自治州', N'betlmgzzz', 652700, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'652800', N'650000', 2, N'652800', N'巴音郭楞蒙古自治州', N'byglmgzzz', 652800, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'652900', N'650000', 2, N'652900', N'阿克苏地区', N'aksdq', 652900, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'653000', N'650000', 2, N'653000', N'克孜勒苏柯尔克孜自治州', N'kzlskekzzzz', 653000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'653100', N'650000', 2, N'653100', N'喀什地区', N'ksdq', 653100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'653200', N'650000', 2, N'653200', N'和田地区', N'htdq', 653200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'654000', N'650000', 2, N'654000', N'伊犁哈萨克自治州', N'ylhskzzz', 654000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'654200', N'650000', 2, N'654200', N'塔城地区', N'tcdq', 654200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'654300', N'650000', 2, N'654300', N'阿勒泰地区', N'altdq', 654300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'810100', N'810000', 2, N'810100', N'香港岛', N'xgd', 810100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'810200', N'810000', 2, N'810200', N'九龙', N'jl', 810200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'810300', N'810000', 2, N'810300', N'新界', N'xj', 810300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'820100', N'820000', 2, N'820100', N'澳门半岛', N'ambd', 820100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'820300', N'820000', 2, N'820300', N'路环岛', N'lhd', 820300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'820400', N'820000', 2, N'820400', N'凼仔岛', N'dzd', 820400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'830100', N'830000', 2, N'830100', N'台北市', N'tbs', 830100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'830200', N'830000', 2, N'830200', N'高雄市', N'gxs', 830200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'830300', N'830000', 2, N'830300', N'台南市', N'tns', 830300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'830400', N'830000', 2, N'830400', N'台中市', N'tzs', 830400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'830500', N'830000', 2, N'830500', N'南投县', N'ntx', 830500, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'830600', N'830000', 2, N'830600', N'基隆市', N'jls', 830600, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'830700', N'830000', 2, N'830700', N'新竹市', N'xzs', 830700, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'830800', N'830000', 2, N'830800', N'嘉义市', N'jys', 830800, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'830900', N'830000', 2, N'830900', N'宜兰县', N'ylx', 830900, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'831000', N'830000', 2, N'831000', N'新竹县', N'xzx', 831000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'831100', N'830000', 2, N'831100', N'桃园县', N'tyx', 831100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'831200', N'830000', 2, N'831200', N'苗栗县', N'mlx', 831200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'831300', N'830000', 2, N'831300', N'彰化县', N'zhx', 831300, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'831400', N'830000', 2, N'831400', N'嘉义县', N'jyx', 831400, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'831500', N'830000', 2, N'831500', N'云林县', N'ylx', 831500, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'831600', N'830000', 2, N'831600', N'屏东县', N'pdx', 831600, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'831700', N'830000', 2, N'831700', N'台东县', N'tdx', 831700, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'831800', N'830000', 2, N'831800', N'花莲县', N'hlx', 831800, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'831900', N'830000', 2, N'831900', N'澎湖县', N'phx', 831900, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'832000', N'830000', 2, N'832000', N'新北市', N'xbs', 832000, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'832100', N'830000', 2, N'832100', N'台中县', N'tzx', 832100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'832200', N'830000', 2, N'832200', N'连江县', N'ljx', 832200, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId]) VALUES (N'110100', N'110000', 2, N'110100', N'北京市', N'bjs', 110100, 0, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[Art_Tags]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Art_Tags](
	[T_TagId] [varchar](50) NOT NULL,
	[T_Tag] [varchar](50) NULL,
 CONSTRAINT [PK_Base_Tags] PRIMARY KEY NONCLUSTERED 
(
	[T_TagId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Art_Category]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Art_Category](
	[F_Id] [varchar](50) NOT NULL,
	[F_Title] [varchar](50) NULL,
	[F_ParentId] [varchar](50) NULL,
	[F_Layer] [int] NULL,
	[F_SortCode] [int] NULL,
	[F_IsHead] [bit] NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
 CONSTRAINT [PK_DC_Article_Category] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Art_Article]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Art_Article](
	[F_Id] [varchar](50) NOT NULL,
	[F_CategoryId] [varchar](50) NULL,
	[F_Title] [varchar](100) NULL,
	[F_Zhaiyao] [varchar](255) NULL,
	[F_SortCode] [int] NULL,
	[F_Source] [varchar](50) NULL,
	[F_Author] [varchar](50) NULL,
	[F_SubTitle] [varchar](100) NULL,
	[F_IsRed] [bit] NULL,
	[F_IsHot] [bit] NULL,
	[F_IsTop] [bit] NULL,
	[F_IsSlide] [bit] NULL,
	[F_IsMsg] [bit] NULL,
	[F_Content] [ntext] NULL,
	[F_ImgUrl] [varchar](255) NULL,
	[F_LinkUrl] [varchar](255) NULL,
	[F_Click] [int] NULL,
	[F_Status] [bit] NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
 CONSTRAINT [PK_DC_Article] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dtk_User]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dtk_User](
	[UserId] [varchar](50) NOT NULL,
	[OpenId] [varchar](50) NULL,
	[UserName] [varchar](50) NULL,
	[Active] [bit] NULL,
	[OrderInDepts] [varchar](50) NULL,
	[IsAdmin] [bit] NULL,
	[IsBoss] [bit] NULL,
	[Unionid] [varchar](100) NULL,
	[IsLeaderInDepts] [bit] NULL,
	[IsLeader] [bit] NULL,
	[IsHide] [bit] NULL,
	[Department] [varchar](50) NULL,
	[Position] [varchar](50) NULL,
	[Avatar] [varchar](100) NULL,
	[HiredDate] [varchar](50) NULL,
	[JobNumber] [varchar](50) NULL,
	[IsSenior] [bit] NULL,
	[Email] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[OrganizeId] [varchar](50) NULL,
	[RoleId] [varchar](50) NULL,
	[SysUserId] [varchar](50) NULL,
	[UpdateTime] [datetime] NULL,
 CONSTRAINT [PK_DingTalk_User] PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dtk_ProcessInstanceList]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dtk_ProcessInstanceList](
	[uuId] [varchar](50) NOT NULL,
	[ProcessCode] [varchar](50) NULL,
	[Title] [varchar](50) NULL,
	[Approvers] [nvarchar](255) NULL,
	[CreateTime2] [datetime] NULL,
	[FinishTime] [datetime] NULL,
	[OriginatorUserId] [nvarchar](255) NULL,
	[OriginatorDeptId] [nvarchar](255) NULL,
	[Status] [varchar](50) NULL,
	[CcUserids] [nvarchar](255) NULL,
	[CcPosition] [varchar](50) NULL,
	[Result] [varchar](50) NULL,
	[BusinessId] [nvarchar](255) NULL,
	[OriginatorDeptName] [nvarchar](255) NULL,
	[BizAction] [nvarchar](255) NULL,
	[Tasks] [nvarchar](500) NULL,
	[FormComponentValues] [ntext] NULL,
	[Creator] [varchar](50) NULL,
	[CreatorId] [varchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[Modifier] [varchar](50) NULL,
	[ModifierId] [varchar](50) NULL,
	[ModifyTime] [datetime] NULL,
	[DeleterId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
 CONSTRAINT [PK_DingTalk_ProcessInstanceList] PRIMARY KEY NONCLUSTERED 
(
	[uuId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dtk_Department]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dtk_Department](
	[Id] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[Order] [varchar](50) NULL,
	[ParentId] [varchar](50) NULL,
	[CreateDeptGroup] [bit] NULL,
	[AutoAddUser] [bit] NULL,
	[DeptHiding] [bit] NULL,
	[DeptPermits] [nvarchar](500) NULL,
	[UserPermits] [nvarchar](500) NULL,
	[OuterDept] [bit] NULL,
	[OuterPermitDepts] [nvarchar](500) NULL,
	[OuterPermitUsers] [nvarchar](500) NULL,
	[OrgDeptOwner] [varchar](50) NULL,
	[DeptManagerUseridList] [nvarchar](500) NULL,
	[SourceIdentifier] [varchar](50) NULL,
	[GroupContainSubDept] [bit] NULL,
	[UpdateTime] [datetime] NULL,
 CONSTRAINT [PK_DingTalk_Department] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dtk_CorpConfig]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dtk_CorpConfig](
	[uuId] [varchar](100) NOT NULL,
	[CorpId] [varchar](100) NULL,
	[CorpSecret] [varchar](100) NULL,
	[AppName] [varchar](100) NULL,
	[HeadPic] [varchar](100) NULL,
	[ApiUrl] [varchar](100) NULL,
	[AppId] [varchar](100) NULL,
	[AgentId] [varchar](100) NOT NULL,
	[AppKey] [varchar](100) NULL,
	[AppSecret] [varchar](100) NULL,
	[Access_Token] [varchar](100) NULL,
	[Status] [int] NULL,
	[Encoding] [varchar](100) NULL,
	[Remark] [varchar](100) NULL,
	[Creator] [varchar](50) NULL,
	[CreatorId] [varchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[Modifier] [varchar](50) NULL,
	[ModifierId] [varchar](50) NULL,
	[ModifyTime] [datetime] NULL,
	[DeleterId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
 CONSTRAINT [PK_DingTalk_CorpConfig] PRIMARY KEY NONCLUSTERED 
(
	[uuId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Dtk_CorpConfig] ([uuId], [CorpId], [CorpSecret], [AppName], [HeadPic], [ApiUrl], [AppId], [AgentId], [AppKey], [AppSecret], [Access_Token], [Status], [Encoding], [Remark], [Creator], [CreatorId], [CreateTime], [Modifier], [ModifierId], [ModifyTime], [DeleterId], [DeleteTime]) VALUES (N'1', N'dingbxlfyt9shwpqql7a', N'RUCXv_EziNLtYo76sBJFoNwj69L1shAOfPbfrABDafgnepo6jQHT7af6gwT4hpK6', N'测试接口使用', NULL, NULL, NULL, N'656255403', N'dingbxlfyt9shwpqql7a', N'RUCXv_EziNLtYo76sBJFoNwj69L1shAOfPbfrABDafgnepo6jQHT7af6gwT4hpK6', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[Dtk_AppConfig]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dtk_AppConfig](
	[AppCode] [varchar](50) NOT NULL,
	[AppName] [varchar](50) NULL,
	[AgentId] [varchar](50) NULL,
	[AppId] [varchar](50) NULL,
	[AppKey] [varchar](50) NULL,
	[AppSecret] [varchar](50) NULL,
	[Access_Token] [varchar](50) NULL,
	[Creator] [varchar](50) NULL,
	[CreatorId] [varchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[Modifier] [varchar](50) NULL,
	[ModifierId] [varchar](50) NULL,
	[ModifyTime] [datetime] NULL,
	[DeleterId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
 CONSTRAINT [PK_DingTalk_AppConfig] PRIMARY KEY NONCLUSTERED 
(
	[AppCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Wct_WxPropertyInfo]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Wct_WxPropertyInfo](
	[uuId] [varchar](50) NOT NULL,
	[WxId] [varchar](50) NULL,
	[TypeId] [int] NULL,
	[TypeName] [varchar](100) NULL,
	[IName] [varchar](200) NULL,
	[IContent] [varchar](max) NULL,
	[ExpiresIn] [int] NULL,
	[Count] [int] NULL,
	[CategoryId] [int] NULL,
	[CategoryName] [varchar](50) NULL,
	[Remark] [varchar](1000) NULL,
	[Status] [bit] NULL,
	[Creator] [varchar](50) NULL,
	[CreatorId] [varchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[Modifier] [varchar](50) NULL,
	[ModifierId] [varchar](50) NULL,
	[ModifyTime] [datetime] NULL,
	[DeleterId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
 CONSTRAINT [PK_WeiXin_WxPropertyInfo] PRIMARY KEY NONCLUSTERED 
(
	[uuId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Wct_WxAppConfig]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Wct_WxAppConfig](
	[uuId] [varchar](50) NOT NULL,
	[WxName] [varchar](50) NULL,
	[WxId] [varchar](50) NOT NULL,
	[WxCode] [varchar](50) NULL,
	[HeadPic] [varchar](50) NULL,
	[Province] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[Token] [varchar](300) NULL,
	[ApiUrl] [varchar](500) NULL,
	[AppId] [varchar](200) NULL,
	[AppSecret] [varchar](200) NULL,
	[Access_Token] [varchar](200) NULL,
	[Encoding] [varchar](200) NULL,
	[WxType] [int] NULL,
	[Status] [bit] NULL,
	[IsDefault] [bit] NULL,
	[CloseKW] [bit] NULL,
	[Remark] [varchar](50) NULL,
	[TimeStamp] [varchar](50) NULL,
	[ExtStr] [varchar](1000) NULL,
	[ExtStr2] [varchar](1000) NULL,
	[ExtStr3] [varchar](1000) NULL,
	[PersonSynDate] [datetime] NULL,
	[OpenidCount] [int] NULL,
	[Creator] [varchar](50) NULL,
	[CreatorId] [varchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[Modifier] [varchar](50) NULL,
	[ModifierId] [varchar](50) NULL,
	[ModifyTime] [datetime] NULL,
	[DeleterId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
 CONSTRAINT [PK_WeiXin_WxAppConfig] PRIMARY KEY NONCLUSTERED 
(
	[uuId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Wct_WxAppConfig] ([uuId], [WxName], [WxId], [WxCode], [HeadPic], [Province], [City], [Token], [ApiUrl], [AppId], [AppSecret], [Access_Token], [Encoding], [WxType], [Status], [IsDefault], [CloseKW], [Remark], [TimeStamp], [ExtStr], [ExtStr2], [ExtStr3], [PersonSynDate], [OpenidCount], [Creator], [CreatorId], [CreateTime], [Modifier], [ModifierId], [ModifyTime], [DeleterId], [DeleteTime]) VALUES (N'2d747bf6-9efc-43e9-8263-fb4cf6f16da8', N'宜宾机电一体化研究所', N'gh_69c27280f38d', N'ybjd3936', NULL, NULL, NULL, N'yibinmetec', N'eims.dalecloud.cn/api/weixin/index?apiid=ybjd3936', N'wx21027f00d4234abc', N'e90f525e8d396fc68f0bdf4cafcc56b2', NULL, N'bwQlhHUl2pe2VU9CzVN9FCF2yZDAAiJBZqTLo3o9Oyb', 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, CAST(0x0000AA8000DF4E68 AS DateTime), 122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[Wct_Users]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Wct_Users](
	[uuId] [varchar](50) NOT NULL,
	[OpenId] [varchar](300) NOT NULL,
	[Nickname] [varchar](200) NULL,
	[Mobile] [varchar](20) NULL,
	[Sex] [varchar](10) NULL,
	[City] [varchar](200) NULL,
	[Country] [varchar](200) NULL,
	[Province] [varchar](200) NULL,
	[Language] [varchar](30) NULL,
	[HeadImgUrl] [varchar](1000) NULL,
	[SubscribeTime] [varchar](30) NULL,
	[Unionid] [varchar](200) NULL,
	[CreateDate] [datetime] NULL,
	[GroupId] [int] NULL,
	[Status] [int] NULL,
	[WeixinId] [varchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[Creator] [varchar](50) NULL,
	[CreatorId] [varchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[Modifier] [varchar](50) NULL,
	[ModifierId] [varchar](50) NULL,
	[ModifyTime] [datetime] NULL,
	[DeleterId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
 CONSTRAINT [PK_WeiXin_Users] PRIMARY KEY NONCLUSTERED 
(
	[uuId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Wct_TemplateMessage]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Wct_TemplateMessage](
	[uuId] [varchar](50) NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[TemplateId] [varchar](100) NOT NULL,
	[Title] [varchar](50) NULL,
	[Primary_Industry] [int] NULL,
	[Deputy_Industry] [int] NULL,
	[Data_First] [varchar](100) NULL,
	[Data_Remark] [varchar](100) NULL,
	[Data_Keyword1] [varchar](50) NULL,
	[Data_Keyword2] [varchar](50) NULL,
	[Data_Keyword3] [varchar](50) NULL,
	[Data_Keyword4] [varchar](50) NULL,
	[Data_Keyword5] [varchar](50) NULL,
	[LinkUrl] [varchar](50) NULL,
	[MiniProgram] [int] NULL,
	[Appid] [varchar](50) NULL,
	[Pagepath] [varchar](50) NULL,
	[FirstColor] [nchar](10) NULL,
	[RemarkColor] [nchar](10) NULL,
	[Content] [varchar](500) NULL,
	[Creator] [varchar](50) NULL,
	[CreatorId] [varchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[Modifier] [varchar](50) NULL,
	[ModifierId] [varchar](50) NULL,
	[ModifyTime] [datetime] NULL,
	[DeleterId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
 CONSTRAINT [PK_WeiXin_TemplateMessage] PRIMARY KEY NONCLUSTERED 
(
	[uuId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Wct_ResponseBaseData]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Wct_ResponseBaseData](
	[uuId] [varchar](50) NOT NULL,
	[OpenId] [varchar](100) NULL,
	[RequestType] [varchar](50) NULL,
	[RequestContent] [varchar](2000) NULL,
	[ResponseType] [varchar](50) NULL,
	[ReponseContent] [varchar](2000) NULL,
	[XmlContent] [varchar](2000) NULL,
	[CreateDate] [datetime] NULL,
	[Flag] [int] NULL,
	[RType] [varchar](70) NULL,
	[Remark] [varchar](500) NULL,
	[ExtInt] [int] NULL,
	[ExtStr] [varchar](200) NULL,
	[ExtStr2] [varchar](700) NULL,
	[ExtStr3] [varchar](2000) NULL,
	[Creator] [varchar](50) NULL,
	[CreatorId] [varchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[Modifier] [varchar](50) NULL,
	[ModifierId] [varchar](50) NULL,
	[ModifyTime] [datetime] NULL,
	[DeleterId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
 CONSTRAINT [PK_WeiXin_ResponseBaseData] PRIMARY KEY NONCLUSTERED 
(
	[uuId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Wct_RequestRuleContent]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Wct_RequestRuleContent](
	[uuId] [varchar](50) NOT NULL,
	[UserId] [varchar](50) NULL,
	[RId] [varchar](50) NULL,
	[RContent] [text] NULL,
	[RContent2] [varchar](2000) NULL,
	[DetailUrl] [varchar](1000) NULL,
	[PicUrl] [varchar](1000) NULL,
	[MediaUrl] [varchar](1500) NULL,
	[MeidaHDUrl] [varchar](1500) NULL,
	[Remark] [varchar](2000) NULL,
	[Seq] [int] NULL,
	[CreateDate] [datetime] NULL,
	[ExtInt] [int] NULL,
	[ExtInt2] [int] NULL,
	[ExtStr] [varchar](800) NULL,
	[ExtStr2] [varchar](1000) NULL,
	[Extstr3] [varchar](1500) NULL,
	[Creator] [varchar](50) NULL,
	[CreatorId] [varchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[Modifier] [varchar](50) NULL,
	[ModifierId] [varchar](50) NULL,
	[ModifyTime] [datetime] NULL,
	[DeleterId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
 CONSTRAINT [PK_WeiXin_RequestRuleContent] PRIMARY KEY NONCLUSTERED 
(
	[uuId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Wct_RequestRule]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Wct_RequestRule](
	[uuId] [varchar](50) NOT NULL,
	[UserId] [varchar](50) NULL,
	[RuleName] [varchar](200) NULL,
	[ReqKeywords] [varchar](2000) NULL,
	[ReqestType] [nchar](10) NULL,
	[ResponseType] [int] NULL,
	[IsDefault] [bit] NULL,
	[ModelFunctionName] [varchar](200) NULL,
	[ModelFunctionId] [int] NULL,
	[Seq] [int] NULL,
	[CreateDate] [datetime] NULL,
	[AgentUrl] [varchar](1000) NULL,
	[AgentToken] [varchar](200) NULL,
	[IsLikeSearch] [bit] NULL,
	[ExtInt] [int] NULL,
	[ExtInt2] [int] NULL,
	[ExtStr] [varchar](200) NULL,
	[ExtStr2] [varchar](500) NULL,
	[ExtStr3] [varchar](800) NULL,
	[ExtStr4] [varchar](1000) NULL,
	[Creator] [varchar](50) NULL,
	[CreatorId] [varchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[Modifier] [varchar](50) NULL,
	[ModifierId] [varchar](50) NULL,
	[ModifyTime] [datetime] NULL,
	[DeleterId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
 CONSTRAINT [PK_WeiXin_RequestRule] PRIMARY KEY NONCLUSTERED 
(
	[uuId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Wct_RequestBaseData]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Wct_RequestBaseData](
	[uuId] [varchar](50) NOT NULL,
	[OpenId] [varchar](100) NULL,
	[MsgType] [varchar](100) NULL,
	[DataContent] [varchar](2000) NULL,
	[EventKey] [varchar](500) NULL,
	[Url] [varchar](500) NULL,
	[Url2] [varchar](500) NULL,
	[XmlContent] [varchar](2000) NULL,
	[CreateDate] [datetime] NULL,
	[Flag] [int] NULL,
	[RType] [varchar](70) NULL,
	[Remark] [varchar](500) NULL,
	[ExtInt] [int] NULL,
	[ExtStr] [varchar](200) NULL,
	[ExtStr2] [varchar](700) NULL,
	[ExtStr3] [varchar](2000) NULL,
	[Creator] [varchar](50) NULL,
	[CreatorId] [varchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[Modifier] [varchar](50) NULL,
	[ModifierId] [varchar](50) NULL,
	[ModifyTime] [datetime] NULL,
	[DeleterId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
 CONSTRAINT [PK_WeiXin_RequestBaseData] PRIMARY KEY NONCLUSTERED 
(
	[uuId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Message_ShortMsg]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Message_ShortMsg](
	[uuid] [varchar](50) NOT NULL,
	[aliCode] [varchar](50) NULL,
	[aliMessage] [varchar](50) NULL,
	[aliSendStatus] [int] NULL,
	[aliContent] [varchar](255) NULL,
	[aliSendDate] [datetime] NULL,
	[aliReceiveDate] [datetime] NULL,
	[phoneNumber] [varchar](20) NULL,
	[signName] [varchar](50) NULL,
	[templateCode] [varchar](50) NULL,
	[templateParam] [varchar](255) NULL,
	[creator] [varchar](50) NULL,
	[creatorId] [varchar](50) NULL,
	[createTime] [datetime] NULL,
	[modifier] [varchar](50) NULL,
	[modifierId] [varchar](50) NULL,
	[modifyTime] [datetime] NULL,
	[deleterId] [varchar](50) NULL,
	[deleteTime] [datetime] NULL,
 CONSTRAINT [PK_Message_ShortMsg] PRIMARY KEY NONCLUSTERED 
(
	[uuid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Form]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Form](
	[Id] [dbo].[PrimaryKey] NOT NULL,
	[Name] [varchar](200) NULL,
	[Fields] [int] NOT NULL,
	[ContentData] [text] NULL,
	[ContentParse] [text] NULL,
	[Content] [text] NULL,
	[SortCode] [int] NOT NULL,
	[Delete] [int] NOT NULL,
	[DbName] [varchar](50) NULL,
	[Enabled] [int] NOT NULL,
	[Description] [varchar](200) NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserId] [varchar](50) NULL,
	[CreateUserName] [varchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserId] [varchar](50) NULL,
	[ModifyUserName] [varchar](50) NULL,
 CONSTRAINT [PK_FORM] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单模板Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Form', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Form', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段个数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Form', @level2type=N'COLUMN',@level2name=N'Fields'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单中的控件属性描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Form', @level2type=N'COLUMN',@level2name=N'ContentData'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单控件位置模板' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Form', @level2type=N'COLUMN',@level2name=N'ContentParse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单原html模板未经处理的' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Form', @level2type=N'COLUMN',@level2name=N'Content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Form', @level2type=N'COLUMN',@level2name=N'SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标记' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Form', @level2type=N'COLUMN',@level2name=N'Delete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据库名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Form', @level2type=N'COLUMN',@level2name=N'DbName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Form', @level2type=N'COLUMN',@level2name=N'Enabled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Form', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Form', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Form', @level2type=N'COLUMN',@level2name=N'CreateUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Form', @level2type=N'COLUMN',@level2name=N'CreateUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Form', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Form', @level2type=N'COLUMN',@level2name=N'ModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Form', @level2type=N'COLUMN',@level2name=N'ModifyUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单模板表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Form'
GO
INSERT [dbo].[Form] ([Id], [Name], [Fields], [ContentData], [ContentParse], [Content], [SortCode], [Delete], [DbName], [Enabled], [Description], [CreateDate], [CreateUserId], [CreateUserName], [ModifyDate], [ModifyUserId], [ModifyUserName]) VALUES (N'a4cffd58-7bac-498a-a327-58a644dfdd93', N'请假条', 3, N'[{"name":"data_1","title":"Name","value":"玉宝","leipiplugins":"text","orghide":"0","style":"text-align: left; width: 150px;","orgalign":"left","orgwidth":"150","orgtype":"text","type":"text","content":"<input name=\"data_1\" title=\"Name\" value=\"玉宝\" leipiplugins=\"text\" orghide=\"0\" style=\"text-align: left; width: 150px;\" orgalign=\"left\" orgwidth=\"150\" orgtype=\"text\" type=\"text\"/>"},{"leipiplugins":"select","name":"data_2","title":"Days","size":"1","style":"width: 150px;","orgwidth":"150","value":"1,3,5,7","selected":"selected","content":"<span leipiplugins=\"select\"><select name=\"data_2\" title=\"Days\" leipiplugins=\"select\" size=\"1\" style=\"width: 150px;\" orgwidth=\"150\"><option value=\"1\">1</option><option value=\"3\" selected=\"selected\">3</option><option value=\"5\">5</option><option value=\"7\">7</option></select>&nbsp;&nbsp;</span>"},{"title":"Comment","name":"data_3","leipiplugins":"textarea","value":"","orgrich":"1","orgfontsize":"","orgwidth":"300","orgheight":"80","style":"width: 316px; height: 139px;","content":"<textarea title=\"Comment\" name=\"data_3\" leipiplugins=\"textarea\" value=\"\" orgrich=\"1\" orgfontsize=\"\" orgwidth=\"300\" orgheight=\"80\" style=\"width: 316px; height: 139px;\"></textarea>"}]', N'<p><br/></p><p style="text-align: center;">姓名：{data_1}</p><p style="text-align: center;">天数：{data_2}</p><p style="text-align: center;">备注：{data_3}</p>', N'<p><br/></p><p style="text-align: center;">姓名：<input name="data_1" title="Name" value="玉宝" leipiplugins="text" orghide="0" style="text-align: left; width: 150px;" orgalign="left" orgwidth="150" orgtype="text" type="text"/></p><p style="text-align: center;">天数：{|-<span leipiplugins="select"><select name="data_2" title="Days" leipiplugins="select" size="1" style="width: 150px;" orgwidth="150"><option value="1">1</option><option value="3" selected="selected">3</option><option value="5">5</option><option value="7">7</option></select>&nbsp;&nbsp;</span>-|}</p><p style="text-align: center;">备注：<textarea title="Comment" name="data_3" leipiplugins="textarea" value="" orgrich="1" orgfontsize="" orgwidth="300" orgheight="80" style="width: 316px; height: 139px;"></textarea></p>', 1, 0, NULL, 0, NULL, CAST(0x0000A8BA010C40B7 AS DateTime), N'', N'', CAST(0x0000A8BA010C40B7 AS DateTime), N'', N'')
/****** Object:  Table [dbo].[FlowScheme]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FlowScheme](
	[Id] [dbo].[PrimaryKey] NOT NULL,
	[SchemeCode] [varchar](50) NULL,
	[SchemeName] [varchar](200) NULL,
	[SchemeType] [varchar](50) NULL,
	[SchemeVersion] [varchar](50) NULL,
	[SchemeCanUser] [varchar](max) NULL,
	[SchemeContent] [varchar](max) NULL,
	[FrmId] [dbo].[PrimaryKey] NULL,
	[FrmType] [int] NOT NULL,
	[AuthorizeType] [int] NOT NULL,
	[SortCode] [int] NOT NULL,
	[DeleteMark] [int] NOT NULL,
	[Disabled] [int] NOT NULL,
	[Description] [varchar](200) NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserId] [dbo].[PrimaryKey] NULL,
	[CreateUserName] [varchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserId] [dbo].[PrimaryKey] NULL,
	[ModifyUserName] [varchar](50) NULL,
 CONSTRAINT [PK_FLOWSCHEME] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowScheme', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowScheme', @level2type=N'COLUMN',@level2name=N'SchemeCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowScheme', @level2type=N'COLUMN',@level2name=N'SchemeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowScheme', @level2type=N'COLUMN',@level2name=N'SchemeType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程内容版本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowScheme', @level2type=N'COLUMN',@level2name=N'SchemeVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板使用者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowScheme', @level2type=N'COLUMN',@level2name=N'SchemeCanUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowScheme', @level2type=N'COLUMN',@level2name=N'SchemeContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowScheme', @level2type=N'COLUMN',@level2name=N'FrmId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowScheme', @level2type=N'COLUMN',@level2name=N'FrmType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板权限类型：0完全公开,1指定部门/人员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowScheme', @level2type=N'COLUMN',@level2name=N'AuthorizeType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowScheme', @level2type=N'COLUMN',@level2name=N'SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标记' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowScheme', @level2type=N'COLUMN',@level2name=N'DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowScheme', @level2type=N'COLUMN',@level2name=N'Disabled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowScheme', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowScheme', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowScheme', @level2type=N'COLUMN',@level2name=N'CreateUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowScheme', @level2type=N'COLUMN',@level2name=N'CreateUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowScheme', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowScheme', @level2type=N'COLUMN',@level2name=N'ModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowScheme', @level2type=N'COLUMN',@level2name=N'ModifyUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作流模板信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowScheme'
GO
INSERT [dbo].[FlowScheme] ([Id], [SchemeCode], [SchemeName], [SchemeType], [SchemeVersion], [SchemeCanUser], [SchemeContent], [FrmId], [FrmType], [AuthorizeType], [SortCode], [DeleteMark], [Disabled], [Description], [CreateDate], [CreateUserId], [CreateUserName], [ModifyDate], [ModifyUserId], [ModifyUserName]) VALUES (N'cd93ef0c-9e09-461b-8599-719de8f2cf74', N'1523688022354', N'信息中心请假', N'', N'', N'', N'{"title":"newFlow_1","nodes":[{"name":"node_1","left":88,"top":84,"type":"start round mix","id":"1523688043300","width":26,"height":26,"alt":true},{"name":"任何人可以审核","left":201,"top":79,"type":"node","id":"1523688045356","width":148,"height":52,"alt":true,"setInfo":{"NodeDesignateData":{"users":[],"roles":[],"orgs":[]},"NodeName":"任何人可以审核","NodeCode":"node_2","NodeRejectType":"0","NodeDesignate":"ALL_USER"}},{"name":"会签开始（要包括所有会签节点的审核人）","left":198,"top":165,"type":"fork","id":"1523688050220","width":162,"height":81,"alt":true,"setInfo":{"NodeDesignateData":{"users":["49df1602-f5f3-4d52-afb7-3802da619558","6ba79766-faa0-4259-8139-a4a6d35784e0"],"roles":[],"orgs":[]},"NodeName":"会签开始（要包括所有会签节点的审核人）","NodeCode":"node_3","NodeRejectType":"0","NodeDesignate":"SPECIAL_USER"}},{"name":"admin审核","left":119,"top":283,"type":"node","id":"1523688053956","width":104,"height":39,"alt":true,"setInfo":{"NodeDesignateData":{"users":["49df1602-f5f3-4d52-afb7-3802da619558"],"roles":[],"orgs":[]},"NodeName":"admin审核","NodeCode":"node_4","NodeRejectType":"0","NodeDesignate":"SPECIAL_USER"}},{"name":"test审核","left":337,"top":286,"type":"node","id":"1523688054452","width":104,"height":38,"alt":true,"setInfo":{"NodeDesignateData":{"users":["6ba79766-faa0-4259-8139-a4a6d35784e0"],"roles":[],"orgs":[]},"NodeName":"test审核","NodeCode":"node_5","NodeRejectType":"0","NodeDesignate":"SPECIAL_USER"}},{"name":"会签结束","left":221,"top":362,"type":"join","id":"1523688063308","width":104,"height":46,"alt":true,"setInfo":{"NodeDesignateData":{"users":[],"roles":[],"orgs":[]},"NodeName":"会签结束","NodeCode":"node_7","NodeRejectType":"0","NodeDesignate":"ALL_USER"}},{"name":"node_8","left":261,"top":443,"type":"end round","id":"1523688066308","width":26,"height":26,"alt":true}],"lines":[{"type":"sl","from":"1523688043300","to":"1523688045356","id":"1523688073290","name":"","dash":false,"alt":true},{"type":"sl","from":"1523688045356","to":"1523688050220","id":"1523688074210","name":"","dash":false,"alt":true},{"type":"sl","from":"1523688050220","to":"1523688053956","id":"1523688075338","name":"","dash":false,"alt":true},{"type":"sl","from":"1523688050220","to":"1523688054452","id":"1523688079394","name":"","dash":false,"alt":true},{"type":"sl","from":"1523688053956","to":"1523688063308","id":"1523688080746","name":"","dash":false,"alt":true},{"type":"sl","from":"1523688054452","to":"1523688063308","id":"1523688082204","name":"","dash":false,"alt":true},{"type":"sl","from":"1523688063308","to":"1523688066308","id":"1523688084522","name":"","dash":false,"alt":true}],"areas":[],"initNum":16}', N'a4cffd58-7bac-498a-a327-58a644dfdd93', 0, 0, 1, 0, 0, NULL, CAST(0x0000A8C200F2D3E7 AS DateTime), N'', N'', CAST(0x0000A8C200F2D3E7 AS DateTime), N'', N'')
/****** Object:  Table [dbo].[FlowInstanceTransitionHistory]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FlowInstanceTransitionHistory](
	[Id] [dbo].[PrimaryKey] NOT NULL,
	[InstanceId] [dbo].[PrimaryKey] NOT NULL,
	[FromNodeId] [dbo].[PrimaryKey] NULL,
	[FromNodeType] [int] NULL,
	[FromNodeName] [varchar](200) NULL,
	[ToNodeId] [dbo].[PrimaryKey] NULL,
	[ToNodeType] [int] NULL,
	[ToNodeName] [varchar](200) NULL,
	[TransitionSate] [int] NOT NULL,
	[IsFinish] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserId] [dbo].[PrimaryKey] NULL,
	[CreateUserName] [varchar](50) NULL,
 CONSTRAINT [PK_FLOWINSTANCETRANSITIONHISTO] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstanceTransitionHistory', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实例Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstanceTransitionHistory', @level2type=N'COLUMN',@level2name=N'InstanceId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始节点Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstanceTransitionHistory', @level2type=N'COLUMN',@level2name=N'FromNodeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始节点类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstanceTransitionHistory', @level2type=N'COLUMN',@level2name=N'FromNodeType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始节点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstanceTransitionHistory', @level2type=N'COLUMN',@level2name=N'FromNodeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束节点Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstanceTransitionHistory', @level2type=N'COLUMN',@level2name=N'ToNodeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束节点类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstanceTransitionHistory', @level2type=N'COLUMN',@level2name=N'ToNodeType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束节点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstanceTransitionHistory', @level2type=N'COLUMN',@level2name=N'ToNodeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转化状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstanceTransitionHistory', @level2type=N'COLUMN',@level2name=N'TransitionSate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否结束' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstanceTransitionHistory', @level2type=N'COLUMN',@level2name=N'IsFinish'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转化时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstanceTransitionHistory', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstanceTransitionHistory', @level2type=N'COLUMN',@level2name=N'CreateUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作人名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstanceTransitionHistory', @level2type=N'COLUMN',@level2name=N'CreateUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作流实例流转历史记录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstanceTransitionHistory'
GO
INSERT [dbo].[FlowInstanceTransitionHistory] ([Id], [InstanceId], [FromNodeId], [FromNodeType], [FromNodeName], [ToNodeId], [ToNodeType], [ToNodeName], [TransitionSate], [IsFinish], [CreateDate], [CreateUserId], [CreateUserName]) VALUES (N'e756f09d-a7de-45e5-a865-9ce25617b4e0', N'd73e4412-9c49-4511-a30e-0d2f844afcee', N'1523002631942', 3, N'node_1', N'1523002636766', 2, N'所有人都可以审', 0, 0, CAST(0x0000A8BA010D9ABB AS DateTime), N'00000000-0000-0000-0000-000000000000', N'超级管理员')
INSERT [dbo].[FlowInstanceTransitionHistory] ([Id], [InstanceId], [FromNodeId], [FromNodeType], [FromNodeName], [ToNodeId], [ToNodeType], [ToNodeName], [TransitionSate], [IsFinish], [CreateDate], [CreateUserId], [CreateUserName]) VALUES (N'80754624-337e-45d9-9eb5-447439fe7785', N'd73e4412-9c49-4511-a30e-0d2f844afcee', N'1523002636766', 2, N'所有人都可以审', N'1523002637238', 2, N'admin审核', 0, 0, CAST(0x0000A8BA010DD4E4 AS DateTime), N'00000000-0000-0000-0000-000000000000', N'超级管理员')
INSERT [dbo].[FlowInstanceTransitionHistory] ([Id], [InstanceId], [FromNodeId], [FromNodeType], [FromNodeName], [ToNodeId], [ToNodeType], [ToNodeName], [TransitionSate], [IsFinish], [CreateDate], [CreateUserId], [CreateUserName]) VALUES (N'176ed6db-c9f8-4cae-8c5a-244b407d0c51', N'3e42b844-d5d1-4fda-a27c-942755a3bd54', N'1523002714678', 3, N'node_1', N'1523002717150', 2, N'所有人可审下', 0, 0, CAST(0x0000A8BB016343EC AS DateTime), N'00000000-0000-0000-0000-000000000000', N'超级管理员')
INSERT [dbo].[FlowInstanceTransitionHistory] ([Id], [InstanceId], [FromNodeId], [FromNodeType], [FromNodeName], [ToNodeId], [ToNodeType], [ToNodeName], [TransitionSate], [IsFinish], [CreateDate], [CreateUserId], [CreateUserName]) VALUES (N'736ef169-c9de-467a-80a8-9d1367459a1f', N'3e42b844-d5d1-4fda-a27c-942755a3bd54', N'1523002717150', 2, N'所有人可审下', N'1523002732796', 0, N'开始会签', 0, 0, CAST(0x0000A8BB0167F2DE AS DateTime), N'00000000-0000-0000-0000-000000000000', N'超级管理员')
INSERT [dbo].[FlowInstanceTransitionHistory] ([Id], [InstanceId], [FromNodeId], [FromNodeType], [FromNodeName], [ToNodeId], [ToNodeType], [ToNodeName], [TransitionSate], [IsFinish], [CreateDate], [CreateUserId], [CreateUserName]) VALUES (N'f29bd77f-9d63-4f2b-ada7-6ca57bc1d422', N'3e42b844-d5d1-4fda-a27c-942755a3bd54', N'1523002732796', 0, N'开始会签', N'1523002726014', 4, N'node_5', 0, 1, CAST(0x0000A8BB01687A77 AS DateTime), N'6ba79766-faa0-4259-8139-a4a6d35784e0', N'test')
INSERT [dbo].[FlowInstanceTransitionHistory] ([Id], [InstanceId], [FromNodeId], [FromNodeType], [FromNodeName], [ToNodeId], [ToNodeType], [ToNodeName], [TransitionSate], [IsFinish], [CreateDate], [CreateUserId], [CreateUserName]) VALUES (N'd56d4393-3d77-4e15-bf74-1212087c0fc2', N'd8fa445f-edd9-4604-8d9e-b17ba921f9dd', N'1523688043300', 3, N'node_1', N'1523688045356', 2, N'任何人可以审核', 0, 0, CAST(0x0000A8C200F35AAF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'超级管理员')
INSERT [dbo].[FlowInstanceTransitionHistory] ([Id], [InstanceId], [FromNodeId], [FromNodeType], [FromNodeName], [ToNodeId], [ToNodeType], [ToNodeName], [TransitionSate], [IsFinish], [CreateDate], [CreateUserId], [CreateUserName]) VALUES (N'dbe4963d-c102-4fd1-9a43-2a7b489cda37', N'd8fa445f-edd9-4604-8d9e-b17ba921f9dd', N'1523688045356', 2, N'任何人可以审核', N'1523688050220', 0, N'会签开始（要包括所有会签节点的审核人）', 0, 0, CAST(0x0000A8C200F381DC AS DateTime), N'00000000-0000-0000-0000-000000000000', N'超级管理员')
INSERT [dbo].[FlowInstanceTransitionHistory] ([Id], [InstanceId], [FromNodeId], [FromNodeType], [FromNodeName], [ToNodeId], [ToNodeType], [ToNodeName], [TransitionSate], [IsFinish], [CreateDate], [CreateUserId], [CreateUserName]) VALUES (N'5c4cb1f3-9b09-4ac6-8e15-35c4adc8af9b', N'e6566327-1a0e-4378-8f63-91acfa4722d2', N'1523688043300', 3, N'node_1', N'1523688045356', 2, N'任何人可以审核', 0, 0, CAST(0x0000A8C200F3D79F AS DateTime), N'00000000-0000-0000-0000-000000000000', N'超级管理员')
/****** Object:  Table [dbo].[FlowInstanceOperationHistory]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FlowInstanceOperationHistory](
	[Id] [dbo].[PrimaryKey] NOT NULL,
	[InstanceId] [dbo].[PrimaryKey] NOT NULL,
	[Content] [nvarchar](200) NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserId] [dbo].[PrimaryKey] NULL,
	[CreateUserName] [varchar](50) NULL,
 CONSTRAINT [PK_FLOWINSTANCEOPERATIONHISTOR] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstanceOperationHistory', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实例进程Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstanceOperationHistory', @level2type=N'COLUMN',@level2name=N'InstanceId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstanceOperationHistory', @level2type=N'COLUMN',@level2name=N'Content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstanceOperationHistory', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstanceOperationHistory', @level2type=N'COLUMN',@level2name=N'CreateUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstanceOperationHistory', @level2type=N'COLUMN',@level2name=N'CreateUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作流实例操作记录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstanceOperationHistory'
GO
INSERT [dbo].[FlowInstanceOperationHistory] ([Id], [InstanceId], [Content], [CreateDate], [CreateUserId], [CreateUserName]) VALUES (N'f7e387b5-caa0-4cc1-ab0e-b5f81cd030d8', N'd73e4412-9c49-4511-a30e-0d2f844afcee', N'【创建】超级管理员创建了一个流程进程【1523002870978/我请个假】', CAST(0x0000A8BA010D9ABA AS DateTime), N'00000000-0000-0000-0000-000000000000', N'超级管理员')
INSERT [dbo].[FlowInstanceOperationHistory] ([Id], [InstanceId], [Content], [CreateDate], [CreateUserId], [CreateUserName]) VALUES (N'6482670e-522e-418a-932b-b286395db758', N'd73e4412-9c49-4511-a30e-0d2f844afcee', N'【所有人都可以审】【2018-04-06 16:22】同意,备注：自己处理一下', CAST(0x0000A8BA010DD4D1 AS DateTime), N'00000000-0000-0000-0000-000000000000', N'超级管理员')
INSERT [dbo].[FlowInstanceOperationHistory] ([Id], [InstanceId], [Content], [CreateDate], [CreateUserId], [CreateUserName]) VALUES (N'97608015-8131-465b-b391-957ebd46ed62', N'35f9d541-ef0f-4b9b-9ffd-dfe933d47d1f', N'【创建】超级管理员创建了一个流程进程【1523002969474/再借个书】', CAST(0x0000A8BA010E22D6 AS DateTime), N'00000000-0000-0000-0000-000000000000', N'超级管理员')
INSERT [dbo].[FlowInstanceOperationHistory] ([Id], [InstanceId], [Content], [CreateDate], [CreateUserId], [CreateUserName]) VALUES (N'91404754-2d13-40f8-b2c8-dec8692bda92', N'35f9d541-ef0f-4b9b-9ffd-dfe933d47d1f', N'【所有人可审下】【2018-04-07 19:34】同意,备注：', CAST(0x0000A8BB0142A29D AS DateTime), N'00000000-0000-0000-0000-000000000000', N'超级管理员')
INSERT [dbo].[FlowInstanceOperationHistory] ([Id], [InstanceId], [Content], [CreateDate], [CreateUserId], [CreateUserName]) VALUES (N'ae8ab8e9-1efe-46d5-8362-152f4c9de091', N'35f9d541-ef0f-4b9b-9ffd-dfe933d47d1f', N'【admin审核】【2018-04-07 19:40】同意,备注：admin', CAST(0x0000A8BB01433065 AS DateTime), N'49df1602-f5f3-4d52-afb7-3802da619558', N'admin')
INSERT [dbo].[FlowInstanceOperationHistory] ([Id], [InstanceId], [Content], [CreateDate], [CreateUserId], [CreateUserName]) VALUES (N'aba0e717-69b8-4f37-9dde-1043a344dd0a', N'35f9d541-ef0f-4b9b-9ffd-dfe933d47d1f', N'【test审核】【2018-04-07 19:59】同意,备注：', CAST(0x0000A8BB014675D8 AS DateTime), N'6ba79766-faa0-4259-8139-a4a6d35784e0', N'test')
INSERT [dbo].[FlowInstanceOperationHistory] ([Id], [InstanceId], [Content], [CreateDate], [CreateUserId], [CreateUserName]) VALUES (N'e08346e5-af15-4638-976b-9fe1081527d2', N'3e42b844-d5d1-4fda-a27c-942755a3bd54', N'【创建】超级管理员创建了一个流程进程【1523107997554/111111111111】', CAST(0x0000A8BB016343E8 AS DateTime), N'00000000-0000-0000-0000-000000000000', N'超级管理员')
INSERT [dbo].[FlowInstanceOperationHistory] ([Id], [InstanceId], [Content], [CreateDate], [CreateUserId], [CreateUserName]) VALUES (N'1419387b-22f0-4b67-bd51-5acdfb50a36c', N'3e42b844-d5d1-4fda-a27c-942755a3bd54', N'【所有人可审下】【2018-04-07 21:50】同意,备注：ok', CAST(0x0000A8BB0167EFAE AS DateTime), N'00000000-0000-0000-0000-000000000000', N'超级管理员')
INSERT [dbo].[FlowInstanceOperationHistory] ([Id], [InstanceId], [Content], [CreateDate], [CreateUserId], [CreateUserName]) VALUES (N'b1a893fd-d282-4b22-914d-9f148b627d0d', N'3e42b844-d5d1-4fda-a27c-942755a3bd54', N'【admin审核】【2018-04-07 21:51】同意,备注：签一个', CAST(0x0000A8BB01683283 AS DateTime), N'49df1602-f5f3-4d52-afb7-3802da619558', N'admin')
INSERT [dbo].[FlowInstanceOperationHistory] ([Id], [InstanceId], [Content], [CreateDate], [CreateUserId], [CreateUserName]) VALUES (N'fa53a997-ef42-47da-8fd5-806a1a939471', N'3e42b844-d5d1-4fda-a27c-942755a3bd54', N'【test审核】【2018-04-07 21:52】同意,备注：1111', CAST(0x0000A8BB01687A75 AS DateTime), N'6ba79766-faa0-4259-8139-a4a6d35784e0', N'test')
INSERT [dbo].[FlowInstanceOperationHistory] ([Id], [InstanceId], [Content], [CreateDate], [CreateUserId], [CreateUserName]) VALUES (N'3024727a-a422-4b68-b525-7e5f8723ab76', N'd8fa445f-edd9-4604-8d9e-b17ba921f9dd', N'【创建】超级管理员创建了一个流程进程【1523688313680/天气好，请个假】', CAST(0x0000A8C200F35AAF AS DateTime), N'00000000-0000-0000-0000-000000000000', N'超级管理员')
INSERT [dbo].[FlowInstanceOperationHistory] ([Id], [InstanceId], [Content], [CreateDate], [CreateUserId], [CreateUserName]) VALUES (N'c05075e4-cd9c-4267-b960-1929019ed031', N'd8fa445f-edd9-4604-8d9e-b17ba921f9dd', N'【任何人可以审核】【2018-04-14 14:46】同意,备注：自己当然要通过啊', CAST(0x0000A8C200F381D1 AS DateTime), N'00000000-0000-0000-0000-000000000000', N'超级管理员')
INSERT [dbo].[FlowInstanceOperationHistory] ([Id], [InstanceId], [Content], [CreateDate], [CreateUserId], [CreateUserName]) VALUES (N'd3d8eb25-8d96-4fbd-b475-5dcc1569848b', N'e6566327-1a0e-4378-8f63-91acfa4722d2', N'【创建】超级管理员创建了一个流程进程【1523688457002/不想上班请个假】', CAST(0x0000A8C200F3D79F AS DateTime), N'00000000-0000-0000-0000-000000000000', N'超级管理员')
/****** Object:  Table [dbo].[FlowInstance]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FlowInstance](
	[Id] [dbo].[PrimaryKey] NOT NULL,
	[InstanceSchemeId] [dbo].[PrimaryKey] NOT NULL,
	[Code] [varchar](200) NULL,
	[CustomName] [varchar](200) NULL,
	[ActivityId] [dbo].[PrimaryKey] NULL,
	[ActivityType] [int] NULL,
	[ActivityName] [varchar](200) NULL,
	[PreviousId] [dbo].[PrimaryKey] NULL,
	[SchemeContent] [varchar](max) NULL,
	[SchemeId] [dbo].[PrimaryKey] NULL,
	[DbName] [varchar](50) NULL,
	[FrmData] [text] NULL,
	[FrmType] [int] NOT NULL,
	[FrmContentData] [text] NULL,
	[FrmContentParse] [text] NULL,
	[FrmId] [dbo].[PrimaryKey] NULL,
	[SchemeType] [varchar](50) NULL,
	[Disabled] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserId] [dbo].[PrimaryKey] NULL,
	[CreateUserName] [varchar](50) NULL,
	[FlowLevel] [int] NOT NULL,
	[Description] [varchar](200) NULL,
	[IsFinish] [int] NOT NULL,
	[MakerList] [varchar](1000) NULL,
 CONSTRAINT [PK_FLOWINSTANCE] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstance', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例模板Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstance', @level2type=N'COLUMN',@level2name=N'InstanceSchemeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实例编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstance', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自定义名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstance', @level2type=N'COLUMN',@level2name=N'CustomName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前节点ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstance', @level2type=N'COLUMN',@level2name=N'ActivityId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前节点类型（0会签节点）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstance', @level2type=N'COLUMN',@level2name=N'ActivityType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前节点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstance', @level2type=N'COLUMN',@level2name=N'ActivityName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'前一个ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstance', @level2type=N'COLUMN',@level2name=N'PreviousId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstance', @level2type=N'COLUMN',@level2name=N'SchemeContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstance', @level2type=N'COLUMN',@level2name=N'SchemeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据库名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstance', @level2type=N'COLUMN',@level2name=N'DbName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单数据' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstance', @level2type=N'COLUMN',@level2name=N'FrmData'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstance', @level2type=N'COLUMN',@level2name=N'FrmType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单中的控件属性描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstance', @level2type=N'COLUMN',@level2name=N'FrmContentData'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单控件位置模板' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstance', @level2type=N'COLUMN',@level2name=N'FrmContentParse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstance', @level2type=N'COLUMN',@level2name=N'FrmId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstance', @level2type=N'COLUMN',@level2name=N'SchemeType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstance', @level2type=N'COLUMN',@level2name=N'Disabled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstance', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstance', @level2type=N'COLUMN',@level2name=N'CreateUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstance', @level2type=N'COLUMN',@level2name=N'CreateUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'等级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstance', @level2type=N'COLUMN',@level2name=N'FlowLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实例备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstance', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否完成' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstance', @level2type=N'COLUMN',@level2name=N'IsFinish'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstance', @level2type=N'COLUMN',@level2name=N'MakerList'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作流流程实例表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FlowInstance'
GO
INSERT [dbo].[FlowInstance] ([Id], [InstanceSchemeId], [Code], [CustomName], [ActivityId], [ActivityType], [ActivityName], [PreviousId], [SchemeContent], [SchemeId], [DbName], [FrmData], [FrmType], [FrmContentData], [FrmContentParse], [FrmId], [SchemeType], [Disabled], [CreateDate], [CreateUserId], [CreateUserName], [FlowLevel], [Description], [IsFinish], [MakerList]) VALUES (N'd73e4412-9c49-4511-a30e-0d2f844afcee', N'', N'1523002870978', N'我请个假', N'1523002637238', 2, N'admin审核', N'1523002636766', N'{"title":"newFlow_1","nodes":[{"name":"node_1","left":101,"top":105,"type":"start round mix","id":"1523002631942","width":26,"height":26,"alt":true},{"name":"所有人都可以审","left":218,"top":122,"type":"node","id":"1523002636766","width":104,"height":50,"alt":true,"setInfo":{"NodeDesignateData":{"users":[],"role":[],"org":[]},"NodeName":"所有人都可以审","NodeCode":"node_2","NodeRejectType":"0","NodeDesignate":"ALL_USER","Taged":1,"UserId":"00000000-0000-0000-0000-000000000000","UserName":"超级管理员","Description":"自己处理一下","TagedTime":"2018-04-06 16:22"}},{"name":"admin审核","left":215,"top":190,"type":"node","id":"1523002637238","width":104,"height":49,"alt":true,"setInfo":{"NodeDesignateData":{"users":["49df1602-f5f3-4d52-afb7-3802da619558"],"role":[],"org":[]},"NodeName":"admin审核","NodeCode":"node_3","NodeRejectType":"0","NodeDesignate":"SPECIAL_USER"}},{"name":"node_4","left":260,"top":287,"type":"end round","id":"1523002639310","width":26,"height":26,"alt":true}],"lines":[{"type":"sl","from":"1523002631942","to":"1523002636766","id":"1523002641196","name":"","dash":false},{"type":"sl","from":"1523002636766","to":"1523002637238","id":"1523002642292","name":"","dash":false},{"type":"sl","from":"1523002637238","to":"1523002639310","id":"1523002643868","name":"","dash":false}],"areas":[],"initNum":9}', N'', N'', N'{"data_1":"玉宝","data_2":"3","data_3":""}', 0, N'[{"name":"data_1","title":"Name","value":"玉宝","leipiplugins":"text","orghide":"0","style":"text-align: left; width: 150px;","orgalign":"left","orgwidth":"150","orgtype":"text","type":"text","content":"<input name=\"data_1\" title=\"Name\" value=\"玉宝\" leipiplugins=\"text\" orghide=\"0\" style=\"text-align: left; width: 150px;\" orgalign=\"left\" orgwidth=\"150\" orgtype=\"text\" type=\"text\"/>"},{"leipiplugins":"select","name":"data_2","title":"Days","size":"1","style":"width: 150px;","orgwidth":"150","value":"1,3,5,7","selected":"selected","content":"<span leipiplugins=\"select\"><select name=\"data_2\" title=\"Days\" leipiplugins=\"select\" size=\"1\" style=\"width: 150px;\" orgwidth=\"150\"><option value=\"1\">1</option><option value=\"3\" selected=\"selected\">3</option><option value=\"5\">5</option><option value=\"7\">7</option></select>&nbsp;&nbsp;</span>"},{"title":"Comment","name":"data_3","leipiplugins":"textarea","value":"","orgrich":"1","orgfontsize":"","orgwidth":"300","orgheight":"80","style":"width: 316px; height: 139px;","content":"<textarea title=\"Comment\" name=\"data_3\" leipiplugins=\"textarea\" value=\"\" orgrich=\"1\" orgfontsize=\"\" orgwidth=\"300\" orgheight=\"80\" style=\"width: 316px; height: 139px;\"></textarea>"}]', N'<p><br/></p><p style="text-align: center;">姓名：{data_1}</p><p style="text-align: center;">天数：{data_2}</p><p style="text-align: center;">备注：{data_3}</p>', N'a4cffd58-7bac-498a-a327-58a644dfdd93', N'', 0, CAST(0x0000A8BA010D9AAC AS DateTime), N'00000000-0000-0000-0000-000000000000', N'System', 0, N'', 0, N'49df1602-f5f3-4d52-afb7-3802da619558')
INSERT [dbo].[FlowInstance] ([Id], [InstanceSchemeId], [Code], [CustomName], [ActivityId], [ActivityType], [ActivityName], [PreviousId], [SchemeContent], [SchemeId], [DbName], [FrmData], [FrmType], [FrmContentData], [FrmContentParse], [FrmId], [SchemeType], [Disabled], [CreateDate], [CreateUserId], [CreateUserName], [FlowLevel], [Description], [IsFinish], [MakerList]) VALUES (N'd8fa445f-edd9-4604-8d9e-b17ba921f9dd', N'', N'1523688313680', N'天气好，请个假', N'1523688050220', 0, N'会签开始（要包括所有会签节点的审核人）', N'1523688045356', N'{"title":"newFlow_1","nodes":[{"name":"node_1","left":88,"top":84,"type":"start round mix","id":"1523688043300","width":26,"height":26,"alt":true},{"name":"任何人可以审核","left":201,"top":79,"type":"node","id":"1523688045356","width":148,"height":52,"alt":true,"setInfo":{"NodeDesignateData":{"users":[],"roles":[],"orgs":[]},"NodeName":"任何人可以审核","NodeCode":"node_2","NodeRejectType":"0","NodeDesignate":"ALL_USER","Taged":1,"UserId":"00000000-0000-0000-0000-000000000000","UserName":"超级管理员","Description":"自己当然要通过啊","TagedTime":"2018-04-14 14:46"}},{"name":"会签开始（要包括所有会签节点的审核人）","left":198,"top":165,"type":"fork","id":"1523688050220","width":162,"height":81,"alt":true,"setInfo":{"NodeDesignateData":{"users":["49df1602-f5f3-4d52-afb7-3802da619558","6ba79766-faa0-4259-8139-a4a6d35784e0"],"roles":[],"orgs":[]},"NodeName":"会签开始（要包括所有会签节点的审核人）","NodeCode":"node_3","NodeRejectType":"0","NodeDesignate":"SPECIAL_USER"}},{"name":"admin审核","left":119,"top":283,"type":"node","id":"1523688053956","width":104,"height":39,"alt":true,"setInfo":{"NodeDesignateData":{"users":["49df1602-f5f3-4d52-afb7-3802da619558"],"roles":[],"orgs":[]},"NodeName":"admin审核","NodeCode":"node_4","NodeRejectType":"0","NodeDesignate":"SPECIAL_USER"}},{"name":"test审核","left":337,"top":286,"type":"node","id":"1523688054452","width":104,"height":38,"alt":true,"setInfo":{"NodeDesignateData":{"users":["6ba79766-faa0-4259-8139-a4a6d35784e0"],"roles":[],"orgs":[]},"NodeName":"test审核","NodeCode":"node_5","NodeRejectType":"0","NodeDesignate":"SPECIAL_USER"}},{"name":"会签结束","left":221,"top":362,"type":"join","id":"1523688063308","width":104,"height":46,"alt":true,"setInfo":{"NodeDesignateData":{"users":[],"roles":[],"orgs":[]},"NodeName":"会签结束","NodeCode":"node_7","NodeRejectType":"0","NodeDesignate":"ALL_USER"}},{"name":"node_8","left":261,"top":443,"type":"end round","id":"1523688066308","width":26,"height":26,"alt":true}],"lines":[{"type":"sl","from":"1523688043300","to":"1523688045356","id":"1523688073290","name":"","dash":false},{"type":"sl","from":"1523688045356","to":"1523688050220","id":"1523688074210","name":"","dash":false},{"type":"sl","from":"1523688050220","to":"1523688053956","id":"1523688075338","name":"","dash":false},{"type":"sl","from":"1523688050220","to":"1523688054452","id":"1523688079394","name":"","dash":false},{"type":"sl","from":"1523688053956","to":"1523688063308","id":"1523688080746","name":"","dash":false},{"type":"sl","from":"1523688054452","to":"1523688063308","id":"1523688082204","name":"","dash":false},{"type":"sl","from":"1523688063308","to":"1523688066308","id":"1523688084522","name":"","dash":false}],"areas":[],"initNum":16}', N'', N'', N'{"data_1":"玉宝","data_2":"3","data_3":"想去洗个车啊，老板"}', 0, N'[{"name":"data_1","title":"Name","value":"玉宝","leipiplugins":"text","orghide":"0","style":"text-align: left; width: 150px;","orgalign":"left","orgwidth":"150","orgtype":"text","type":"text","content":"<input name=\"data_1\" title=\"Name\" value=\"玉宝\" leipiplugins=\"text\" orghide=\"0\" style=\"text-align: left; width: 150px;\" orgalign=\"left\" orgwidth=\"150\" orgtype=\"text\" type=\"text\"/>"},{"leipiplugins":"select","name":"data_2","title":"Days","size":"1","style":"width: 150px;","orgwidth":"150","value":"1,3,5,7","selected":"selected","content":"<span leipiplugins=\"select\"><select name=\"data_2\" title=\"Days\" leipiplugins=\"select\" size=\"1\" style=\"width: 150px;\" orgwidth=\"150\"><option value=\"1\">1</option><option value=\"3\" selected=\"selected\">3</option><option value=\"5\">5</option><option value=\"7\">7</option></select>&nbsp;&nbsp;</span>"},{"title":"Comment","name":"data_3","leipiplugins":"textarea","value":"","orgrich":"1","orgfontsize":"","orgwidth":"300","orgheight":"80","style":"width: 316px; height: 139px;","content":"<textarea title=\"Comment\" name=\"data_3\" leipiplugins=\"textarea\" value=\"\" orgrich=\"1\" orgfontsize=\"\" orgwidth=\"300\" orgheight=\"80\" style=\"width: 316px; height: 139px;\"></textarea>"}]', N'<p><br/></p><p style="text-align: center;">姓名：{data_1}</p><p style="text-align: center;">天数：{data_2}</p><p style="text-align: center;">备注：{data_3}</p>', N'a4cffd58-7bac-498a-a327-58a644dfdd93', N'', 0, CAST(0x0000A8C200F35A9F AS DateTime), N'00000000-0000-0000-0000-000000000000', N'System', 0, N'', 0, N'49df1602-f5f3-4d52-afb7-3802da619558,6ba79766-faa0-4259-8139-a4a6d35784e0')
INSERT [dbo].[FlowInstance] ([Id], [InstanceSchemeId], [Code], [CustomName], [ActivityId], [ActivityType], [ActivityName], [PreviousId], [SchemeContent], [SchemeId], [DbName], [FrmData], [FrmType], [FrmContentData], [FrmContentParse], [FrmId], [SchemeType], [Disabled], [CreateDate], [CreateUserId], [CreateUserName], [FlowLevel], [Description], [IsFinish], [MakerList]) VALUES (N'3e42b844-d5d1-4fda-a27c-942755a3bd54', N'', N'1523107997554', N'111111111111', N'1523002726014', 4, N'node_5', N'1523002732796', N'{"title":"newFlow_1","nodes":[{"name":"node_1","left":176,"top":46,"type":"start round mix","id":"1523002714678","width":26,"height":26,"alt":true},{"name":"所有人可审下","left":146,"top":118,"type":"node","id":"1523002717150","width":104,"height":26,"alt":true,"setInfo":{"NodeDesignateData":{"users":[],"role":[],"org":[]},"NodeName":"所有人可审下","NodeCode":"node_2","NodeRejectType":"0","NodeDesignate":"ALL_USER","Taged":1,"UserId":"00000000-0000-0000-0000-000000000000","UserName":"超级管理员","Description":"ok","TagedTime":"2018-04-07 21:50"}},{"name":"admin审核","left":35,"top":240,"type":"node","id":"1523002718686","width":104,"height":48,"alt":true,"setInfo":{"NodeDesignateData":{"users":["49df1602-f5f3-4d52-afb7-3802da619558"],"role":[],"org":[]},"NodeName":"admin审核","NodeCode":"node_3","NodeRejectType":"0","NodeDesignate":"SPECIAL_USER","Taged":1,"UserId":"49df1602-f5f3-4d52-afb7-3802da619558","UserName":"admin","Description":"签一个","TagedTime":"2018-04-07 21:51"}},{"name":"test审核","left":253,"top":240,"type":"node","id":"1523002719796","width":104,"height":49,"alt":true,"setInfo":{"NodeDesignateData":{"users":["6ba79766-faa0-4259-8139-a4a6d35784e0"],"role":[],"org":[]},"NodeName":"test审核","NodeCode":"node_4","NodeRejectType":"0","NodeDesignate":"SPECIAL_USER","Taged":1,"UserId":"6ba79766-faa0-4259-8139-a4a6d35784e0","UserName":"test","Description":"1111","TagedTime":"2018-04-07 21:52"}},{"name":"node_5","left":184,"top":390,"type":"end round","id":"1523002726014","width":26,"height":26,"alt":true},{"name":"开始会签","left":145,"top":172,"type":"fork","id":"1523002732796","width":104,"height":41,"alt":true,"setInfo":{"NodeDesignateData":{"users":[],"role":[],"org":[]},"NodeName":"开始会签","NodeCode":"node_6","NodeRejectType":"0","NodeDesignate":"ALL_USER","Taged":1,"UserId":"6ba79766-faa0-4259-8139-a4a6d35784e0","UserName":"test","Description":"1111","TagedTime":"2018-04-07 21:52"}},{"name":"会签结束","left":149,"top":322,"type":"join","id":"1523002734916","width":104,"height":41,"alt":true,"setInfo":{"NodeDesignateData":{"users":[],"role":[],"org":[]},"NodeName":"会签结束","NodeCode":"node_7","NodeRejectType":"0","NodeDesignate":"ALL_USER","ConfluenceOk":1,"Taged":1,"UserId":"6ba79766-faa0-4259-8139-a4a6d35784e0","UserName":"test","Description":"1111","TagedTime":"2018-04-07 21:52"}}],"lines":[{"type":"sl","from":"1523002714678","to":"1523002717150","id":"1523002737452","name":"","dash":false},{"type":"sl","from":"1523002717150","to":"1523002732796","id":"1523002738230","name":"","dash":false},{"type":"sl","from":"1523002732796","to":"1523002718686","id":"1523002742548","name":"","dash":false},{"type":"sl","from":"1523002732796","to":"1523002719796","id":"1523002743652","name":"","dash":false},{"type":"sl","from":"1523002718686","to":"1523002734916","id":"1523002745196","name":"","dash":false},{"type":"sl","from":"1523002719796","to":"1523002734916","id":"1523002746460","name":"","dash":false},{"type":"sl","from":"1523002734916","to":"1523002726014","id":"1523002748412","name":"","dash":false}],"areas":[],"initNum":15}', N'', N'', N'{"data_1":"玉宝","data_2":"3","data_3":""}', 0, N'[{"name":"data_1","title":"Name","value":"玉宝","leipiplugins":"text","orghide":"0","style":"text-align: left; width: 150px;","orgalign":"left","orgwidth":"150","orgtype":"text","type":"text","content":"<input name=\"data_1\" title=\"Name\" value=\"玉宝\" leipiplugins=\"text\" orghide=\"0\" style=\"text-align: left; width: 150px;\" orgalign=\"left\" orgwidth=\"150\" orgtype=\"text\" type=\"text\"/>"},{"leipiplugins":"select","name":"data_2","title":"Days","size":"1","style":"width: 150px;","orgwidth":"150","value":"1,3,5,7","selected":"selected","content":"<span leipiplugins=\"select\"><select name=\"data_2\" title=\"Days\" leipiplugins=\"select\" size=\"1\" style=\"width: 150px;\" orgwidth=\"150\"><option value=\"1\">1</option><option value=\"3\" selected=\"selected\">3</option><option value=\"5\">5</option><option value=\"7\">7</option></select>&nbsp;&nbsp;</span>"},{"title":"Comment","name":"data_3","leipiplugins":"textarea","value":"","orgrich":"1","orgfontsize":"","orgwidth":"300","orgheight":"80","style":"width: 316px; height: 139px;","content":"<textarea title=\"Comment\" name=\"data_3\" leipiplugins=\"textarea\" value=\"\" orgrich=\"1\" orgfontsize=\"\" orgwidth=\"300\" orgheight=\"80\" style=\"width: 316px; height: 139px;\"></textarea>"}]', N'<p><br/></p><p style="text-align: center;">姓名：{data_1}</p><p style="text-align: center;">天数：{data_2}</p><p style="text-align: center;">备注：{data_3}</p>', N'a4cffd58-7bac-498a-a327-58a644dfdd93', N'', 0, CAST(0x0000A8BB01633F3E AS DateTime), N'00000000-0000-0000-0000-000000000000', N'System', 0, N'', 1, N'')
INSERT [dbo].[FlowInstance] ([Id], [InstanceSchemeId], [Code], [CustomName], [ActivityId], [ActivityType], [ActivityName], [PreviousId], [SchemeContent], [SchemeId], [DbName], [FrmData], [FrmType], [FrmContentData], [FrmContentParse], [FrmId], [SchemeType], [Disabled], [CreateDate], [CreateUserId], [CreateUserName], [FlowLevel], [Description], [IsFinish], [MakerList]) VALUES (N'e6566327-1a0e-4378-8f63-91acfa4722d2', N'', N'1523688457002', N'不想上班请个假', N'1523688045356', 2, N'任何人可以审核', N'1523688043300', N'{"title":"newFlow_1","nodes":[{"name":"node_1","left":88,"top":84,"type":"start round mix","id":"1523688043300","width":26,"height":26,"alt":true},{"name":"任何人可以审核","left":201,"top":79,"type":"node","id":"1523688045356","width":148,"height":52,"alt":true,"setInfo":{"NodeDesignateData":{"users":[],"roles":[],"orgs":[]},"NodeName":"任何人可以审核","NodeCode":"node_2","NodeRejectType":"0","NodeDesignate":"ALL_USER"}},{"name":"会签开始（要包括所有会签节点的审核人）","left":198,"top":165,"type":"fork","id":"1523688050220","width":162,"height":81,"alt":true,"setInfo":{"NodeDesignateData":{"users":["49df1602-f5f3-4d52-afb7-3802da619558","6ba79766-faa0-4259-8139-a4a6d35784e0"],"roles":[],"orgs":[]},"NodeName":"会签开始（要包括所有会签节点的审核人）","NodeCode":"node_3","NodeRejectType":"0","NodeDesignate":"SPECIAL_USER"}},{"name":"admin审核","left":119,"top":283,"type":"node","id":"1523688053956","width":104,"height":39,"alt":true,"setInfo":{"NodeDesignateData":{"users":["49df1602-f5f3-4d52-afb7-3802da619558"],"roles":[],"orgs":[]},"NodeName":"admin审核","NodeCode":"node_4","NodeRejectType":"0","NodeDesignate":"SPECIAL_USER"}},{"name":"test审核","left":337,"top":286,"type":"node","id":"1523688054452","width":104,"height":38,"alt":true,"setInfo":{"NodeDesignateData":{"users":["6ba79766-faa0-4259-8139-a4a6d35784e0"],"roles":[],"orgs":[]},"NodeName":"test审核","NodeCode":"node_5","NodeRejectType":"0","NodeDesignate":"SPECIAL_USER"}},{"name":"会签结束","left":221,"top":362,"type":"join","id":"1523688063308","width":104,"height":46,"alt":true,"setInfo":{"NodeDesignateData":{"users":[],"roles":[],"orgs":[]},"NodeName":"会签结束","NodeCode":"node_7","NodeRejectType":"0","NodeDesignate":"ALL_USER"}},{"name":"node_8","left":261,"top":443,"type":"end round","id":"1523688066308","width":26,"height":26,"alt":true}],"lines":[{"type":"sl","from":"1523688043300","to":"1523688045356","id":"1523688073290","name":"","dash":false},{"type":"sl","from":"1523688045356","to":"1523688050220","id":"1523688074210","name":"","dash":false},{"type":"sl","from":"1523688050220","to":"1523688053956","id":"1523688075338","name":"","dash":false},{"type":"sl","from":"1523688050220","to":"1523688054452","id":"1523688079394","name":"","dash":false},{"type":"sl","from":"1523688053956","to":"1523688063308","id":"1523688080746","name":"","dash":false},{"type":"sl","from":"1523688054452","to":"1523688063308","id":"1523688082204","name":"","dash":false},{"type":"sl","from":"1523688063308","to":"1523688066308","id":"1523688084522","name":"","dash":false}],"areas":[],"initNum":16}', N'', N'', N'{"data_1":"玉宝","data_2":"3","data_3":""}', 0, N'[{"name":"data_1","title":"Name","value":"玉宝","leipiplugins":"text","orghide":"0","style":"text-align: left; width: 150px;","orgalign":"left","orgwidth":"150","orgtype":"text","type":"text","content":"<input name=\"data_1\" title=\"Name\" value=\"玉宝\" leipiplugins=\"text\" orghide=\"0\" style=\"text-align: left; width: 150px;\" orgalign=\"left\" orgwidth=\"150\" orgtype=\"text\" type=\"text\"/>"},{"leipiplugins":"select","name":"data_2","title":"Days","size":"1","style":"width: 150px;","orgwidth":"150","value":"1,3,5,7","selected":"selected","content":"<span leipiplugins=\"select\"><select name=\"data_2\" title=\"Days\" leipiplugins=\"select\" size=\"1\" style=\"width: 150px;\" orgwidth=\"150\"><option value=\"1\">1</option><option value=\"3\" selected=\"selected\">3</option><option value=\"5\">5</option><option value=\"7\">7</option></select>&nbsp;&nbsp;</span>"},{"title":"Comment","name":"data_3","leipiplugins":"textarea","value":"","orgrich":"1","orgfontsize":"","orgwidth":"300","orgheight":"80","style":"width: 316px; height: 139px;","content":"<textarea title=\"Comment\" name=\"data_3\" leipiplugins=\"textarea\" value=\"\" orgrich=\"1\" orgfontsize=\"\" orgwidth=\"300\" orgheight=\"80\" style=\"width: 316px; height: 139px;\"></textarea>"}]', N'<p><br/></p><p style="text-align: center;">姓名：{data_1}</p><p style="text-align: center;">天数：{data_2}</p><p style="text-align: center;">备注：{data_3}</p>', N'a4cffd58-7bac-498a-a327-58a644dfdd93', N'', 0, CAST(0x0000A8C200F3D79C AS DateTime), N'00000000-0000-0000-0000-000000000000', N'System', 0, N'', 0, N'1')
/****** Object:  Table [dbo].[User]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[Id] [dbo].[PrimaryKey] NOT NULL,
	[Account] [varchar](255) NOT NULL,
	[Password] [varchar](255) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Sex] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[BizCode] [varchar](255) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[CrateId] [dbo].[PrimaryKey] NULL,
	[TypeName] [nvarchar](20) NULL,
	[TypeId] [dbo].[PrimaryKey] NULL,
 CONSTRAINT [PK_USER] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户登录帐号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Account'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'业务对照码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'BizCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经办时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'CrateId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'TypeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'TypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户基本信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User'
GO
INSERT [dbo].[User] ([Id], [Account], [Password], [Name], [Sex], [Status], [BizCode], [CreateTime], [CrateId], [TypeName], [TypeId]) VALUES (N'0ceff0f8-f848-440c-bc26-d8605ac858cd', N'test5', N'test5', N'test5', 1, 1, N'', CAST(0x0000A8A400998E39 AS DateTime), N'', N'', N'')
INSERT [dbo].[User] ([Id], [Account], [Password], [Name], [Sex], [Status], [BizCode], [CreateTime], [CrateId], [TypeName], [TypeId]) VALUES (N'1df68dfd-3b6d-4491-872f-00a0fc6c5a64', N'test4', N'test4', N'test4', 1, 0, N'', CAST(0x0000A84700E8AF94 AS DateTime), N'', N'', N'')
INSERT [dbo].[User] ([Id], [Account], [Password], [Name], [Sex], [Status], [BizCode], [CreateTime], [CrateId], [TypeName], [TypeId]) VALUES (N'229f3a49-ab27-49ce-b383-9f10ca23a9d5', N'test3', N'test3', N'test3', 1, 0, N'', CAST(0x0000A84700E8A84C AS DateTime), N'', N'', N'')
INSERT [dbo].[User] ([Id], [Account], [Password], [Name], [Sex], [Status], [BizCode], [CreateTime], [CrateId], [TypeName], [TypeId]) VALUES (N'49df1602-f5f3-4d52-afb7-3802da619558', N'admin', N'admin', N'admin', 1, 1, N'', CAST(0x0000A846010CDC90 AS DateTime), N'', N'', N'')
INSERT [dbo].[User] ([Id], [Account], [Password], [Name], [Sex], [Status], [BizCode], [CreateTime], [CrateId], [TypeName], [TypeId]) VALUES (N'6ba79766-faa0-4259-8139-a4a6d35784e0', N'test', N'test', N'test', 1, 1, N'', CAST(0x0000A846010CE416 AS DateTime), N'', N'', N'')
INSERT [dbo].[User] ([Id], [Account], [Password], [Name], [Sex], [Status], [BizCode], [CreateTime], [CrateId], [TypeName], [TypeId]) VALUES (N'de8be521-f1ec-4483-b124-0be342890507', N'test2', N'test2', N'test2', 1, 1, N'', CAST(0x0000A846010CEAA0 AS DateTime), N'', N'', N'')
/****** Object:  Table [dbo].[CategoryType]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CategoryType](
	[Id] [dbo].[PrimaryKey] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_CATEGORYTYPE] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoryType', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoryType', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoryType', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoryType'
GO
INSERT [dbo].[CategoryType] ([Id], [Name], [CreateTime]) VALUES (N'USERTYPE', N'按用户类型分类', CAST(0x0000A83A0161ADA6 AS DateTime))
/****** Object:  Table [dbo].[Category]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [dbo].[PrimaryKey] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Disabled] [bit] NOT NULL,
	[SortNo] [int] NOT NULL,
	[Icon] [varchar](255) NULL,
	[Description] [nvarchar](500) NULL,
	[TypeId] [dbo].[PrimaryKey] NULL,
 CONSTRAINT [PK_CATEGORY] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类表ID（可作为分类的标识）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否可用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'Disabled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'SortNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'Icon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'TypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类表，表示一个全集，比如：男、女、未知。关联的分类类型表示按什么进行的分类，如：按照性别对人类对象集进行分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category'
GO
INSERT [dbo].[Category] ([Id], [Name], [Disabled], [SortNo], [Icon], [Description], [TypeId]) VALUES (N'ADMINISTRATOR', N'管理员', 0, 0, N'', NULL, N'USERTYPE')
INSERT [dbo].[Category] ([Id], [Name], [Disabled], [SortNo], [Icon], [Description], [TypeId]) VALUES (N'USER', N'普通用户', 0, 0, N'', NULL, N'USERTYPE')
INSERT [dbo].[Category] ([Id], [Name], [Disabled], [SortNo], [Icon], [Description], [TypeId]) VALUES (N'SYSTEMADMIN', N'神', 0, 0, N'', NULL, N'USERTYPE')
/****** Object:  Table [dbo].[Application]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Application](
	[Id] [dbo].[PrimaryKey] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[AppSecret] [varchar](255) NULL,
	[Description] [nvarchar](255) NULL,
	[Icon] [varchar](255) NULL,
	[Disable] [bit] NOT NULL,
	[CreateTime] [date] NOT NULL,
	[CreateUser] [dbo].[PrimaryKey] NULL,
 CONSTRAINT [PK_APPLICATION] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AppId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用密钥' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'AppSecret'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Icon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否可用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'Disable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreateUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application'
GO
INSERT [dbo].[Application] ([Id], [Name], [AppSecret], [Description], [Icon], [Disable], [CreateTime], [CreateUser]) VALUES (N'110', N'OpenAuth.Net', N'openauthdotnetyubaolee', N'最好用的.NET权限工作流框架', NULL, 0, CAST(0x1D3E0B00 AS Date), NULL)
INSERT [dbo].[Application] ([Id], [Name], [AppSecret], [Description], [Icon], [Disable], [CreateTime], [CreateUser]) VALUES (N'119', N'XXX管理平台', N'manageryubaolee', N'这是一个第三的平台', NULL, 0, CAST(0x1D3E0B00 AS Date), NULL)
/****** Object:  Table [dbo].[Stock]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Stock](
	[Id] [dbo].[PrimaryKey] NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Number] [int] NOT NULL,
	[Price] [decimal](10, 1) NOT NULL,
	[Status] [int] NOT NULL,
	[Viewable] [varchar](50) NOT NULL,
	[User] [varchar](50) NOT NULL,
	[Time] [datetime] NOT NULL,
	[OrgId] [dbo].[PrimaryKey] NULL,
 CONSTRAINT [PK_STOCK] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Stock', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Stock', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Stock', @level2type=N'COLUMN',@level2name=N'Number'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品单价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Stock', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出库/入库' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Stock', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'可见范围' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Stock', @level2type=N'COLUMN',@level2name=N'Viewable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Stock', @level2type=N'COLUMN',@level2name=N'User'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Stock', @level2type=N'COLUMN',@level2name=N'Time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Stock', @level2type=N'COLUMN',@level2name=N'OrgId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出入库信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Stock'
GO
/****** Object:  Table [dbo].[Role]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [dbo].[PrimaryKey] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Status] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[CreateId] [dbo].[PrimaryKey] NULL,
	[TypeName] [nvarchar](20) NULL,
	[TypeId] [dbo].[PrimaryKey] NULL,
 CONSTRAINT [PK_ROLE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'CreateId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'TypeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'TypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role'
GO
INSERT [dbo].[Role] ([Id], [Name], [Status], [CreateTime], [CreateId], [TypeName], [TypeId]) VALUES (N'09ee2ffa-7463-4938-ae0b-1cb4e80c7c13', N'管理员', 1, CAST(0x0000A8BD0177D70C AS DateTime), N'', N'', N'')
INSERT [dbo].[Role] ([Id], [Name], [Status], [CreateTime], [CreateId], [TypeName], [TypeId]) VALUES (N'0a7ebd0c-78d6-4fbc-8fbe-6fc25c3a932d', N'测试', 1, CAST(0x0000A8BD0177DCF6 AS DateTime), N'', N'', N'')
INSERT [dbo].[Role] ([Id], [Name], [Status], [CreateTime], [CreateId], [TypeName], [TypeId]) VALUES (N'3e761e88-ddf7-4a62-b219-9a315b4564f2', N'汇丰测试', 1, CAST(0x0000A8BD0177ED16 AS DateTime), N'', N'', N'')
INSERT [dbo].[Role] ([Id], [Name], [Status], [CreateTime], [CreateId], [TypeName], [TypeId]) VALUES (N'77e6d0c3-f9e1-4933-92c3-c1c6eef75593', N'神', 1, CAST(0x0000A8C200DAD584 AS DateTime), N'', N'', N'')
/****** Object:  Table [dbo].[Resource]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Resource](
	[Id] [dbo].[PrimaryKey] NOT NULL,
	[CascadeId] [varchar](255) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[SortNo] [int] NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[ParentName] [nvarchar](50) NULL,
	[ParentId] [dbo].[PrimaryKey] NULL,
	[AppId] [dbo].[PrimaryKey] NULL,
	[AppName] [nvarchar](50) NULL,
	[TypeName] [nvarchar](20) NULL,
	[TypeId] [dbo].[PrimaryKey] NULL,
	[Disable] [bit] NOT NULL,
 CONSTRAINT [PK_RESOURCE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点语义ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'CascadeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'SortNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父节点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'ParentName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父节点流ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源所属应用ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'AppId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属应用名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'AppName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'TypeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'TypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否可用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'Disable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource'
GO
INSERT [dbo].[Resource] ([Id], [CascadeId], [Name], [SortNo], [Description], [ParentName], [ParentId], [AppId], [AppName], [TypeName], [TypeId], [Disable]) VALUES (N'OPENAUTH_DELETEACCOUNT', N'', N'注销账号', 0, N'openauth.net注销账号的权限', N'', N'', N'110', N'OpenAuth.Net', N'', N'', 0)
INSERT [dbo].[Resource] ([Id], [CascadeId], [Name], [SortNo], [Description], [ParentName], [ParentId], [AppId], [AppName], [TypeName], [TypeId], [Disable]) VALUES (N'OPENAUTH_LOGIN', N'', N'登陆', 0, N'openauth.net登陆的权限', N'', N'', N'110', N'OpenAuth.Net', N'', N'', 0)
INSERT [dbo].[Resource] ([Id], [CascadeId], [Name], [SortNo], [Description], [ParentName], [ParentId], [AppId], [AppName], [TypeName], [TypeId], [Disable]) VALUES (N'OPENAUTH_MODIFYACCOUNT', N'', N'修改账号', 0, N'openauth.net修改账号的权限', N'', N'', N'110', N'OpenAuth.Net', N'', N'', 0)
INSERT [dbo].[Resource] ([Id], [CascadeId], [Name], [SortNo], [Description], [ParentName], [ParentId], [AppId], [AppName], [TypeName], [TypeId], [Disable]) VALUES (N'XXX_LOGIN', N'', N'登陆', 0, N'登陆xxx平台的权限', N'', N'', N'119', N'XXX管理平台', N'', N'', 0)
/****** Object:  Table [dbo].[Relevance]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Relevance](
	[Id] [dbo].[PrimaryKey] NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Key] [varchar](100) NOT NULL,
	[Status] [int] NOT NULL,
	[OperateTime] [datetime] NOT NULL,
	[OperatorId] [dbo].[PrimaryKey] NULL,
	[FirstId] [dbo].[PrimaryKey] NOT NULL,
	[SecondId] [dbo].[PrimaryKey] NOT NULL,
 CONSTRAINT [PK_RELEVANCE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relevance', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relevance', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'映射标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relevance', @level2type=N'COLUMN',@level2name=N'Key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relevance', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relevance', @level2type=N'COLUMN',@level2name=N'OperateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relevance', @level2type=N'COLUMN',@level2name=N'OperatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第一个表主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relevance', @level2type=N'COLUMN',@level2name=N'FirstId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第二个表主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relevance', @level2type=N'COLUMN',@level2name=N'SecondId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'多对多关系集中映射' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relevance'
GO
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'03be9b5e-38b0-4525-8431-b26d35ce6ce3', N'', N'UserElement', 0, CAST(0x0000A67A00FFA0E8 AS DateTime), N'0', N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'816b12b3-e916-446d-a2fa-329cfd13c831')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'06dfd97d-17e0-42b8-bde7-40006d8c8eb2', N'', N'UserElement', 0, CAST(0x0000A8BA00F49D2B AS DateTime), N'', N'49df1602-f5f3-4d52-afb7-3802da619558', N'584c7a3b-d28a-47b4-8648-7797d05d83d1')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'06f4c4a2-faa8-4bad-9184-50ceb517f30b', N'', N'ProcessUser', 0, CAST(0x0000A67B0114EBF5 AS DateTime), N'0', N'10cc09fb-d469-41e5-ae3f-fdd805a4bd4c', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'08ff97f7-17fc-4072-b29a-287135898ece', N'', N'RoleResource', 0, CAST(0x0000A67701809F05 AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'fdf3aac3-4507-40ad-aa2f-d7f0459de252')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'0db8bc97-207f-439d-99b7-8a37f74bccbe', N'', N'RoleOrg', 0, CAST(0x0000A8BD0177D75B AS DateTime), N'', N'09ee2ffa-7463-4938-ae0b-1cb4e80c7c13', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'0e2316ba-8286-45a2-8767-0e01390a3ebb', N'', N'UserOrg', 0, CAST(0x0000A846010CDDCD AS DateTime), N'', N'49df1602-f5f3-4d52-afb7-3802da619558', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'0fd5b371-b010-4846-8833-95cc1e813a32', N'', N'UserElement', 0, CAST(0x0000A67A00FFC7A6 AS DateTime), N'0', N'ea25646b-964b-4d41-ab03-d8964e1494fb', N'68484265-7802-4f06-b024-33e8b2f2edcf')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'10a76196-ba0c-4294-bb8f-dcd063eb4aab', N'', N'UserOrg', 0, CAST(0x0000A80A00980F22 AS DateTime), N'', N'3eacdedd-e93a-4816-b49c-99ba3d5323c2', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'10e58d75-dec1-4b85-882f-9dac79ad1210', N'', N'RoleResource', 0, CAST(0x0000A6A6012AE37E AS DateTime), N'0', N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'ec99f670-0eca-465c-9f64-d4d5dc510b83')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'120d7a5d-203c-4261-95f5-0125757fb386', N'', N'UserElement', 0, CAST(0x0000A6A501186DFD AS DateTime), N'0', N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'7f071c63-1620-4486-9264-5806b2e63218')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'13433400-a32c-4539-b988-8b417c09bc0e', N'', N'UserModule', 0, CAST(0x0000A67A00FF765A AS DateTime), N'0', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7', N'9486ff22-b696-4d7f-8093-8a3e53c45453')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'13612a4c-b20c-4bd0-a2cd-0ae47576364d', N'', N'UserElement', 0, CAST(0x0000A6A5011110C7 AS DateTime), N'0', N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'c7d7daf0-3669-4a22-8bed-b092617deb9c')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'1490edd4-9bd3-4e71-bfa4-56f6558c1d3f', N'', N'UserElement', 0, CAST(0x0000A8BA00A19C71 AS DateTime), N'', N'6ba79766-faa0-4259-8139-a4a6d35784e0', N'79dcd3eb-3aaf-4e08-83c9-713d8ff446fe')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'16154fc4-d18e-44a3-bcf2-5539b168aba7', N'', N'RoleElement', 0, CAST(0x0000A6A9011F1678 AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'18cc3217-28a6-49b2-9a20-080230065984')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'16782d9e-8cce-4ec1-a343-7ad7c83c5e25', N'', N'RoleOrg', 0, CAST(0x0000A8BD0177D75B AS DateTime), N'', N'09ee2ffa-7463-4938-ae0b-1cb4e80c7c13', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'1740ff26-a4d0-44cc-9fab-a0105c2c60b6', N'', N'UserOrg', 0, CAST(0x0000A80A00E6A96D AS DateTime), N'', N'63c9c82a-e0d3-4bde-bbd2-057cda2f5283', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'1873ed85-a88a-4236-bd40-2c416aa2576c', N'', N'RoleModule', 0, CAST(0x0000A67501192770 AS DateTime), N'0', N'211e12c7-e466-496e-8d26-0660a38e24cc', N'7580672f-a390-4bb6-982d-9a4570cb5199')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'19c9621c-3d23-46b7-a841-54d5c82ec8e8', N'', N'UserOrg', 0, CAST(0x0000A67500E5DB32 AS DateTime), N'0', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'1acec4c4-0136-4e2b-a839-8676dbd6594a', N'', N'ProcessUser', 0, CAST(0x0000A68100BFD09D AS DateTime), N'0', N'6c6afe3c-349c-4198-8710-cf19c90f3afd', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'1cb94cc4-a42a-4ee1-b129-6692a83aa85c', N'', N'RoleOrg', 0, CAST(0x0000A8BD0177DCFA AS DateTime), N'', N'0a7ebd0c-78d6-4fbc-8fbe-6fc25c3a932d', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'1ced1564-2fea-4c04-8aea-f071fa5bb293', N'', N'UserModule', 0, CAST(0x0000A678010E83BB AS DateTime), N'0', N'ea25646b-964b-4d41-ab03-d8964e1494fb', N'069475e3-c997-487a-9f29-e6a864c5c1d4')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'1cf19b35-e2c2-436f-99b9-03ac2b232cc6', N'', N'RoleElement', 0, CAST(0x0000A6770180D0ED AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'44075557-496e-4dde-bb75-7b69f51ab4fe')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'1f1262be-cadf-4959-997a-37d40bb36493', N'', N'UserOrg', 0, CAST(0x0000A846010CE419 AS DateTime), N'', N'6ba79766-faa0-4259-8139-a4a6d35784e0', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'2014027e-0cff-41cf-974b-56126d6eaa9a', N'', N'RoleElement', 0, CAST(0x0000A678009A68AE AS DateTime), N'0', N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'c4c1acbb-9cbf-4b1e-9cc0-ccf5ff544ec2')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'242e9543-3343-41d4-8816-15ffeeaef551', N'', N'UserElement', 0, CAST(0x0000A67A00FFC7A6 AS DateTime), N'0', N'ea25646b-964b-4d41-ab03-d8964e1494fb', N'584c7a3b-d28a-47b4-8648-7797d05d83d1')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'27c4d50c-32da-4dbc-88a1-84b343cdd649', N'', N'UserElement', 0, CAST(0x0000A6A501186D3A AS DateTime), N'0', N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'6839a297-350b-4215-b680-4e5dfdae5615')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'29b06cd6-af0c-4c63-9aba-e5431c5d62ec', N'', N'UserOrg', 0, CAST(0x0000A80A00980F22 AS DateTime), N'', N'3eacdedd-e93a-4816-b49c-99ba3d5323c2', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'2a36a2b7-41aa-4190-b88c-75d44a56ad6e', N'', N'UserModule', 0, CAST(0x0000A7120003EDBE AS DateTime), N'0', N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'92b00259-2d15-43e7-9321-adffb29e8bf2')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'2bb3fddb-0f51-442e-8dbf-236beb47d8a6', N'', N'RoleOrg', 0, CAST(0x0000A8C200DAD5BB AS DateTime), N'', N'77e6d0c3-f9e1-4933-92c3-c1c6eef75593', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'2ca288a6-d222-4328-951e-c01c3e77a0c7', N'', N'RoleElement', 0, CAST(0x0000A6770180CC4D AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'7f071c63-1620-4486-9264-5806b2e63218')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'2d0fcc88-a7c0-4d33-8a08-1d688e9dde83', N'', N'RoleModule', 0, CAST(0x0000A6750119279A AS DateTime), N'0', N'211e12c7-e466-496e-8d26-0660a38e24cc', N'a94d5648-c2a9-405e-ba6f-f1602ec9b807')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'2d15e438-cc3a-41e9-9b13-325bfd5c804a', N'', N'RoleElement', 0, CAST(0x0000A6770180D68A AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'84e38920-f6e5-499c-bf52-a3c6f8499ff7')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'2ebff9a4-b2d5-4a35-a7dd-2cfa2f5b0522', N'', N'ProcessUser', 0, CAST(0x0000A67A01216463 AS DateTime), N'0', N'52cc7933-a045-4dcc-8c17-1b618bfa772b', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'2f01f6e6-b9f3-44c1-86f4-e83f6e4ad676', N'', N'RoleResource', 0, CAST(0x0000A8C200F1AEC5 AS DateTime), N'', N'0a7ebd0c-78d6-4fbc-8fbe-6fc25c3a932d', N'OPENAUTH_LOGIN')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'30c82d18-7892-4e5f-9aee-e4f483a858c2', N'', N'UserModule', 0, CAST(0x0000A678010E8402 AS DateTime), N'0', N'ea25646b-964b-4d41-ab03-d8964e1494fb', N'9486ff22-b696-4d7f-8093-8a3e53c45453')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'332a373c-f485-4f85-9af9-7792f7462bf1', N'', N'RoleModule', 0, CAST(0x0000A6750119308C AS DateTime), N'0', N'648b04c4-4ac2-4d69-bef6-07081ef27871', N'89c3bfbe-246f-4112-8eb1-b6789da54202')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'340c60fe-8b95-474c-aa04-9197903998d2', N'', N'RoleModule', 0, CAST(0x0000A6770180AD27 AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'7580672f-a390-4bb6-982d-9a4570cb5199')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'361feb63-bde2-49c7-86ec-6df3ec6f0fe3', N'', N'RoleElement', 0, CAST(0x0000A6770180DB23 AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'1c870438-4260-43a5-8996-a6e1dc8bbf6a')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'3afb470e-968a-4c46-83a2-832a91da52a9', N'', N'RoleOrg', 0, CAST(0x0000A8BD0177DCFA AS DateTime), N'', N'0a7ebd0c-78d6-4fbc-8fbe-6fc25c3a932d', N'543a9fcf-4770-4fd9-865f-030e562be238')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'3bcaab20-e096-480e-a9bb-0fdb70686714', N'', N'RoleElement', 0, CAST(0x0000A6770180CC4E AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'cf7388be-2677-427c-ad78-8f00f1062b96')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'3de0359b-6331-4dc7-a00e-751f71dbadb5', N'', N'ProcessUser', 0, CAST(0x0000A68F009AC523 AS DateTime), N'0', N'68295d2a-4dfd-4c5e-81e3-9c787e2603bc', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'460d1c98-2a68-43cf-8d38-d40ceb89916f', N'', N'UserOrg', 0, CAST(0x0000A80A00980F22 AS DateTime), N'', N'3eacdedd-e93a-4816-b49c-99ba3d5323c2', N'86449128-d5ac-44bf-b999-f7735b7458fd')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'4757bb30-e4bc-4c2d-a824-947ef151d341', N'', N'UserRole', 0, CAST(0x0000A67A014F6DBE AS DateTime), N'0', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7', N'4980a85b-e3db-4607-bc2c-0baf0140d7df')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'4ba3982b-f0ae-4f9a-980e-1eaedc3b5f2e', N'', N'UserElement', 0, CAST(0x0000A67A01257D69 AS DateTime), N'0', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7', N'584c7a3b-d28a-47b4-8648-7797d05d83d1')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'4c2fb006-53d6-4041-8cf6-e5d74d788897', N'', N'UserModule', 0, CAST(0x0000A8BA00A19666 AS DateTime), N'', N'6ba79766-faa0-4259-8139-a4a6d35784e0', N'9486ff22-b696-4d7f-8093-8a3e53c45453')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'4c69794b-9957-4f6b-b0fb-6455fe643565', N'', N'UserElement', 0, CAST(0x0000A8BA00F4A250 AS DateTime), N'', N'49df1602-f5f3-4d52-afb7-3802da619558', N'826b12b3-e916-446d-a2fa-329cfd13c831')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'4e613188-0387-4d17-a60d-703b4a606d75', N'', N'RoleModule', 0, CAST(0x0000A6770180AD29 AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'bc80478d-0547-4437-9cff-be4b40144bdf')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'4ec39ee9-9ee9-4aa9-a0db-eb0fdf8d2f00', N'', N'UserElement', 0, CAST(0x0000A8BA00A19F3B AS DateTime), N'', N'6ba79766-faa0-4259-8139-a4a6d35784e0', N'b3e23ebc-0ff2-41b3-bff0-fd5e93f6828a')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'4fde1dc6-9d73-4c7c-9238-28981858c5a6', N'', N'RoleModule', 0, CAST(0x0000A678009A5780 AS DateTime), N'0', N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'89c3bfbe-246f-4112-8eb1-b6789da54202')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'5167dbcd-3a32-4ae8-827e-6f381cc58fa2', N'', N'RoleElement', 0, CAST(0x0000A6770180CC4E AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'fa816af1-a28d-47b5-9b8b-c46e18f902e9')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'53a4be87-4fa8-415b-97b5-2298ce8b17c8', N'', N'UserResource', 0, CAST(0x0000A8C200F12ABF AS DateTime), N'', N'49df1602-f5f3-4d52-afb7-3802da619558', N'XXX_LOGIN')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'54b2e9b6-1f7c-4a39-92c9-98f58429c1fc', N'', N'RoleModule', 0, CAST(0x0000A6750119279A AS DateTime), N'0', N'211e12c7-e466-496e-8d26-0660a38e24cc', N'bc80478d-0547-4437-9cff-be4b40144bdf')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'55b10ecc-3fb3-4127-b69e-e7a3467d7a1a', N'', N'RoleElement', 0, CAST(0x0000A678009A68AE AS DateTime), N'0', N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'6db928fe-93df-460f-9472-8bb0b6cae52c')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'5725ff79-43c6-4778-bbff-131cf364dab6', N'', N'UserElement', 0, CAST(0x0000A6A501186E92 AS DateTime), N'0', N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'cf7388be-2677-427c-ad78-8f00f1062b96')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'5903cc95-17fc-423f-9439-bcdf1f808d7b', N'', N'UserOrg', 0, CAST(0x0000A84700E8A8B9 AS DateTime), N'', N'229f3a49-ab27-49ce-b383-9f10ca23a9d5', N'86449128-d5ac-44bf-b999-f7735b7458fd')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'5a20d59c-6ee6-4fe2-98fe-7b35b11026ae', N'', N'UserElement', 0, CAST(0x0000A67A00FF85A7 AS DateTime), N'0', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7', N'68484265-7802-4f06-b024-33e8b2f2edcf')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'5b2d5db8-d603-4be3-add2-c85ef3c53ddc', N'', N'UserResource', 0, CAST(0x0000A8C200F12C9F AS DateTime), N'', N'49df1602-f5f3-4d52-afb7-3802da619558', N'OPENAUTH_LOGIN')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'5ed71f83-0023-42c3-a77a-979d22d12fc7', N'', N'RoleOrg', 0, CAST(0x0000A8BD0177DCFA AS DateTime), N'', N'0a7ebd0c-78d6-4fbc-8fbe-6fc25c3a932d', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'620b368a-7b56-4c74-ab85-8bc91d08ddc9', N'', N'RoleElement', 0, CAST(0x0000A6770180B64A AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'1c9acc3e-a40d-4d07-b495-6e60eb9b71b9')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'6431a464-6f1f-4ffc-8157-89212b70f09a', N'', N'RoleOrg', 0, CAST(0x0000A6780000006F AS DateTime), N'0', N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'648500cc-e1e6-426d-9f17-c6061ce606a1', N'', N'UserOrg', 0, CAST(0x0000A846010CEAA3 AS DateTime), N'', N'de8be521-f1ec-4483-b124-0be342890507', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'64e4f5aa-28ef-4690-9b20-5f0b543964f6', N'', N'UserElement', 0, CAST(0x0000A67A00FF85A6 AS DateTime), N'0', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7', N'816b12b3-e916-446d-a2fa-329cfd13c831')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'6645b6fb-efcf-4e48-9c13-84f79bc5be34', N'', N'RoleOrg', 0, CAST(0x0000A8C200DAD5BB AS DateTime), N'', N'77e6d0c3-f9e1-4933-92c3-c1c6eef75593', N'86449128-d5ac-44bf-b999-f7735b7458fd')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'66e25fc5-093d-42ab-85dc-a38f6600889b', N'', N'UserOrg', 0, CAST(0x0000A67500E6096F AS DateTime), N'0', N'ea25646b-964b-4d41-ab03-d8964e1494fb', N'c36e43df-3a99-45da-80d9-3ac5d24f4014')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'68912e65-256e-45b6-b48e-036382598d32', N'', N'RoleOrg', 0, CAST(0x0000A6A200A5D841 AS DateTime), N'0', N'2eb423d6-6ad9-4efe-b423-872478a2a434', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'69dae19a-d92c-4fb6-b969-3c7560d999c4', N'', N'UserOrg', 0, CAST(0x0000A846010CE419 AS DateTime), N'', N'6ba79766-faa0-4259-8139-a4a6d35784e0', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'6b9c4789-042c-4f6f-a749-ee68ee87462d', N'', N'ProcessUser', 0, CAST(0x0000A6AC0114D121 AS DateTime), N'0', N'054ff054-d8ae-4911-a596-8fb1f66b348f', N'3a95e392-07d4-4af3-b30d-140ca93340f5')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'6da6d662-8cef-47cd-80b3-fa885b2dca7a', N'', N'RoleOrg', 0, CAST(0x0000A8C200DAD5BB AS DateTime), N'', N'77e6d0c3-f9e1-4933-92c3-c1c6eef75593', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'6db5666b-6f8c-4e83-bada-0b45054bd9a4', N'', N'RoleElement', 0, CAST(0x0000A6770180B649 AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'0d25438e-1436-48e0-aedf-0f1690693282')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'6fe52499-f800-47ce-96fc-a2b5b43505d5', N'', N'UserElement', 0, CAST(0x0000A8BA00A199B2 AS DateTime), N'', N'6ba79766-faa0-4259-8139-a4a6d35784e0', N'584c7a3b-d28a-47b4-8648-7797d05d83d1')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'715d017a-68b6-468d-aa3f-32ca4cfd4b9e', N'', N'RoleModule', 0, CAST(0x0000A6770180AD28 AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'bedb41a2-f310-4775-af99-01be08adda93')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'72b2344b-c62a-470e-9c74-83f5b1cf68f1', N'', N'RoleOrg', 0, CAST(0x0000A8BD0177ED1A AS DateTime), N'', N'3e761e88-ddf7-4a62-b219-9a315b4564f2', N'c36e43df-3a99-45da-80d9-3ac5d24f4014')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'72bf4729-af60-42f5-b0d7-717362ffad7f', N'', N'RoleElement', 0, CAST(0x0000A6770180CC4C AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'2feefce1-e3d8-42ac-b811-2352679628da')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'7475b0c3-f204-4f95-a22f-80591fe76bc7', N'', N'ProcessUser', 0, CAST(0x0000A6B000C3BC6D AS DateTime), N'0', N'b8bcdf59-1e29-4d97-a364-12ac8e8c5c61', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'74f4a3a3-b84b-4ad7-bca1-c85494e01e8e', N'', N'UserOrg', 0, CAST(0x0000A846010CDDCD AS DateTime), N'', N'49df1602-f5f3-4d52-afb7-3802da619558', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'75340ad3-fb80-4646-b1de-ba801688ddc2', N'', N'RoleElement', 0, CAST(0x0000A6770180D0ED AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'5ed1681c-13d2-4c87-8675-a8d95c0b40ae')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'77bd93da-2c2b-4ba8-bf05-3a1382811a6a', N'', N'RoleModule', 0, CAST(0x0000A67501192799 AS DateTime), N'0', N'211e12c7-e466-496e-8d26-0660a38e24cc', N'e8dc5db6-4fc4-4795-a1cc-681cbcceec91')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'77eec82a-f713-4584-872c-761fdbcdb456', N'', N'UserElement', 0, CAST(0x0000A8BA00F49D9E AS DateTime), N'', N'49df1602-f5f3-4d52-afb7-3802da619558', N'68484265-7802-4f06-b024-33e8b2f2edcf')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'77fc08e6-98ae-4d33-b294-bd9fed5b14ed', N'', N'UserElement', 0, CAST(0x0000A8BA00F49CA0 AS DateTime), N'', N'49df1602-f5f3-4d52-afb7-3802da619558', N'816b12b3-e916-446d-a2fa-329cfd13c831')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'797c6e5f-7f3c-4891-89b9-a054e10f6c00', N'', N'UserModule', 0, CAST(0x0000A8BA00A180FC AS DateTime), N'', N'49df1602-f5f3-4d52-afb7-3802da619558', N'37bb9414-19a0-4223-9056-71f8c758a930')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'7f25286f-246b-4143-98eb-c3e574fe7455', N'', N'ProcessUser', 0, CAST(0x0000A67A01216457 AS DateTime), N'0', N'52cc7933-a045-4dcc-8c17-1b618bfa772b', N'3a95e392-07d4-4af3-b30d-140ca93340f5')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'7fd7f976-f10e-44aa-a7ba-7ca40d2e8f90', N'', N'RoleOrg', 0, CAST(0x0000A6A200A5C1D7 AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'80310629-5e52-482c-9a0f-5c5bdfabcd9e', N'', N'RoleOrg', 0, CAST(0x0000A6780000006F AS DateTime), N'0', N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'832f4a8f-7791-4aa6-bcd2-20dcb6f5ef37', N'', N'UserElement', 0, CAST(0x0000A67500F54A2F AS DateTime), N'0', N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'15a4f88c-4fae-4cab-ba2f-0cbd2cca8736')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'84a52091-08a0-4a46-b661-3cd206771c29', N'', N'RoleModule', 0, CAST(0x0000A6770180AD28 AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'0031262c-689c-4b96-bae2-2c9d67076ade')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'854e0658-ab8a-4869-b157-9941955acdc6', N'', N'RoleElement', 0, CAST(0x0000A6770180D689 AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'1a473afd-cbd4-41e9-9471-81f9435aaabe')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'88a4c966-d042-4a2e-b133-ff7eded1c5de', N'', N'RoleElement', 0, CAST(0x0000A6770180DB23 AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'7b2b1ffb-398b-4f7b-83da-8f484e1bcea0')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'8b633f3c-965b-4e35-8496-c364890d7760', N'', N'RoleElement', 0, CAST(0x0000A6770180D68A AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'c3d7b478-21e9-4c1e-b866-a3c80be7909b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'92f0b297-96c1-47d4-84dd-571374431bc0', N'', N'RoleElement', 0, CAST(0x0000A6770180D0EC AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'84694ea5-d6e1-4a65-8a59-7b5b779688d4')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'93bcac7a-0ff1-488c-8d1c-3da7e44cbefc', N'', N'RoleElement', 0, CAST(0x0000A6770180CC4C AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'd1ba6a72-ba14-44c0-baba-46d0ad96fe8a')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'960224e6-5910-472b-a5ef-b2aa9a8b106f', N'', N'UserRole', 0, CAST(0x0000A6790119DE94 AS DateTime), N'0', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7', N'db309d88-fd21-4b81-a4d9-ae6276a1d813')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'962b278b-0894-4b36-b1a0-6c5c3d11d4c3', N'', N'UserElement', 0, CAST(0x0000A8BA00F4857A AS DateTime), N'', N'49df1602-f5f3-4d52-afb7-3802da619558', N'b3e23ebc-0ff2-41b3-bff0-fd5e93f6828a')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'965f010b-2fd6-4b34-ba23-3e44c1af2877', N'', N'RoleOrg', 0, CAST(0x0000A67B010CF904 AS DateTime), N'0', N'36094f5d-07e7-40d5-91dc-ff60f98b496a', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'9ad706e3-8e6b-4bc7-a502-371b298ef062', N'', N'RoleElement', 0, CAST(0x0000A6770180DB22 AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'ef42721f-d223-4a00-a1d9-80b81121f21a')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'9d568d6d-d78d-47d6-8fb6-b1327cdbe83a', N'', N'RoleModule', 0, CAST(0x0000A6770180AD29 AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'a94d5648-c2a9-405e-ba6f-f1602ec9b807')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'9e46a946-6e81-4f61-bcba-21e4f7fac3df', N'', N'RoleModule', 0, CAST(0x0000A67501192799 AS DateTime), N'0', N'211e12c7-e466-496e-8d26-0660a38e24cc', N'ef386d5d-cd58-43c0-a4ab-80afd0dbcd6c')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'9e57e1ff-e9cf-4600-a872-ac85f7845bb0', N'', N'RoleOrg', 0, CAST(0x0000A8C200DAD5BB AS DateTime), N'', N'77e6d0c3-f9e1-4933-92c3-c1c6eef75593', N'c36e43df-3a99-45da-80d9-3ac5d24f4014')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'9edc7b81-2b51-4193-8805-6062e596ccdc', N'', N'UserOrg', 0, CAST(0x0000A67500E6096F AS DateTime), N'0', N'ea25646b-964b-4d41-ab03-d8964e1494fb', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'9fa50449-5d87-4579-9f1f-9cdcd876976b', N'', N'RoleElement', 0, CAST(0x0000A6770180CC4D AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'6839a297-350b-4215-b680-4e5dfdae5615')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'a051aa08-38da-4b6d-8d90-10b3c2485e4b', N'', N'RoleOrg', 0, CAST(0x0000A6780000006A AS DateTime), N'0', N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'543a9fcf-4770-4fd9-865f-030e562be238')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'a06fe8c6-3f5e-4085-9bbf-e366571a356c', N'', N'RoleElement', 0, CAST(0x0000A6770180D0EB AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'daddf3b9-71b5-45ac-b85d-5a11c522f2f4')
GO
print 'Processed 100 total records'
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'a0904102-e26a-4bc5-9c95-ed5ef977586b', N'', N'RoleModule', 0, CAST(0x0000A6750119279A AS DateTime), N'0', N'211e12c7-e466-496e-8d26-0660a38e24cc', N'6a9e1346-0c01-44d2-8eb1-f929fdab542a')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'a5bef7bf-ecdb-4480-ad64-b39a02269607', N'', N'UserModule', 0, CAST(0x0000A8BA00A1AB94 AS DateTime), N'', N'49df1602-f5f3-4d52-afb7-3802da619558', N'069475e3-c997-487a-9f29-e6a864c5c1d4')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'a8094b46-de5a-40ea-a8ee-69ea905480ef', N'', N'RoleModule', 0, CAST(0x0000A678009A5734 AS DateTime), N'0', N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'069475e3-c997-487a-9f29-e6a864c5c1d4')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'a8123b37-ba70-4aab-aef6-1938733b5210', N'', N'RoleElement', 0, CAST(0x0000A6770180B64A AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'c0d8505c-061a-467d-862a-c94f27caa208')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'a9821db0-49bd-49be-a554-afa811c99760', N'', N'RoleResource', 0, CAST(0x0000A67701809F05 AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'ec99f670-0eca-465c-9f64-d4d5dc510b83')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'aa051096-a23a-431d-9053-bb954f9453a7', N'', N'RoleElement', 0, CAST(0x0000A6770180C45E AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'4bfa8ea0-6b0d-426f-8687-b654575ca780')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'ab84b111-fb5d-4ddd-99d5-479954d9d521', N'', N'RoleOrg', 0, CAST(0x0000A67B010CF908 AS DateTime), N'0', N'36094f5d-07e7-40d5-91dc-ff60f98b496a', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'ab924ba7-8a74-4804-82b0-ecbbedf4c13e', N'', N'RoleElement', 0, CAST(0x0000A678009A68AD AS DateTime), N'0', N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'38109ca0-32ec-44bd-a243-017e591b532b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'ac184827-9899-4b40-8939-61fe9d2b187c', N'', N'UserElement', 0, CAST(0x0000A67A01258FB9 AS DateTime), N'0', N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'584c7a3b-d28a-47b4-8648-7797d05d83d1')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'acb4d37f-8b45-4a99-b364-99f3881dfcda', N'', N'RoleElement', 0, CAST(0x0000A6770180DB1A AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'f8dde22a-2a37-47c4-8e67-70fb3af5303e')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'acc51898-5335-4903-83b9-4701a782bc4d', N'', N'UserElement', 0, CAST(0x0000A6A501186F28 AS DateTime), N'0', N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'fa816af1-a28d-47b5-9b8b-c46e18f902e9')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'ad267296-5eba-4d59-b821-8148d8cfb3c6', N'', N'RoleModule', 0, CAST(0x0000A6770180AD28 AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'e8dc5db6-4fc4-4795-a1cc-681cbcceec91')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'ad29467e-eeee-494c-ab82-f6be5d2619d5', N'', N'RoleElement', 0, CAST(0x0000A6770180CC4D AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'50c9df24-b233-42cb-9a0d-4ce158c75f86')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'ad5bc7a6-e307-4fa8-a4ef-ce9e09f7e21b', N'', N'RoleModule', 0, CAST(0x0000A678009A577F AS DateTime), N'0', N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'9486ff22-b696-4d7f-8093-8a3e53c45453')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'af263192-daa8-4f29-99b9-1efb96e31627', N'', N'RoleElement', 0, CAST(0x0000A6770180B64A AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'645b40ac-4223-44a7-aab4-66eb56cf9864')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'b08d7763-a725-406f-a7d5-d144f00d716e', N'', N'UserOrg', 0, CAST(0x0000A67500E5CD5F AS DateTime), N'0', N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'543a9fcf-4770-4fd9-865f-030e562be238')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'b241dd3d-2965-44e4-929d-9dacb6444e09', N'', N'RoleOrg', 0, CAST(0x0000A8C200DAD5BB AS DateTime), N'', N'77e6d0c3-f9e1-4933-92c3-c1c6eef75593', N'543a9fcf-4770-4fd9-865f-030e562be238')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'b2490ac0-ba16-48a2-b39d-49f6b87f9387', N'', N'UserModule', 0, CAST(0x0000A8BA00A193D2 AS DateTime), N'', N'6ba79766-faa0-4259-8139-a4a6d35784e0', N'069475e3-c997-487a-9f29-e6a864c5c1d4')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'b2edfee4-f980-4aa5-b547-492d677e0674', N'', N'RoleModule', 0, CAST(0x0000A6770180AD29 AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'ef386d5d-cd58-43c0-a4ab-80afd0dbcd6c')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'b3b8f695-a179-489b-90b4-7814ab048a69', N'', N'UserElement', 0, CAST(0x0000A8BA00A1986A AS DateTime), N'', N'6ba79766-faa0-4259-8139-a4a6d35784e0', N'816b12b3-e916-446d-a2fa-329cfd13c831')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'b672a830-c3a5-408b-a746-65608534b24c', N'', N'UserModule', 0, CAST(0x0000A84A011A1905 AS DateTime), N'', N'49df1602-f5f3-4d52-afb7-3802da619558', N'9486ff22-b696-4d7f-8093-8a3e53c45453')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'b9e63d17-35c8-4456-abab-8f43a1c99adc', N'', N'UserModule', 0, CAST(0x0000A8BA00A17EF6 AS DateTime), N'', N'49df1602-f5f3-4d52-afb7-3802da619558', N'4abafc83-c8f5-452f-9882-e113a86e7a3e')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'bbdc3ea9-3f21-48b0-9d7a-39545d6183d0', N'', N'UserElement', 0, CAST(0x0000A8BA00A19CE7 AS DateTime), N'', N'6ba79766-faa0-4259-8139-a4a6d35784e0', N'826b12b3-e916-446d-a2fa-329cfd13c831')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'bd783f53-23fa-41f4-8cec-7c61fab52072', N'', N'UserOrg', 0, CAST(0x0000A8A400998F24 AS DateTime), N'', N'0ceff0f8-f848-440c-bc26-d8605ac858cd', N'86449128-d5ac-44bf-b999-f7735b7458fd')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'bda5f089-64d6-4fb8-9012-d7f3ff36902a', N'', N'UserOrg', 0, CAST(0x0000A80A00E67AEB AS DateTime), N'', N'ffd92ed2-5330-4ec2-a42d-6e0e9005db3b', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'bee6572d-8fb8-4e0e-af15-93aafc989717', N'', N'RoleElement', 0, CAST(0x0000A6770180B649 AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'68fc793f-069f-43e1-a012-42ac2d7c585c')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'c14addeb-1812-4a78-9152-1f7115b22d89', N'', N'UserRole', 0, CAST(0x0000A67800003793 AS DateTime), N'0', N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'db309d88-fd21-4b81-a4d9-ae6276a1d813')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'c2d3b7d6-b47d-4bd8-9dc6-d9134d86713f', N'', N'RoleOrg', 0, CAST(0x0000A6A200A5C1D7 AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'86449128-d5ac-44bf-b999-f7735b7458fd')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'c3050d65-d26b-4e46-bece-a212b0cc00ec', N'', N'RoleElement', 0, CAST(0x0000A6770180B648 AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'15a4f88c-4fae-4cab-ba2f-0cbd2cca8736')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'c4771ac5-3375-4de9-adb8-a603398f0d62', N'', N'RoleElement', 0, CAST(0x0000A6770180D68B AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'2d595a2a-5de5-479e-a331-b53c799a6b10')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'c50fae2a-b36f-486f-9d53-e58406590101', N'', N'ProcessUser', 0, CAST(0x0000A6AC0114D121 AS DateTime), N'0', N'054ff054-d8ae-4911-a596-8fb1f66b348f', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'c58cb482-6ab7-49eb-b5b0-e45424b6e502', N'', N'RoleElement', 0, CAST(0x0000A6770180CC4E AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'34730f5a-d307-457b-9041-5f7de30abfa9')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'c733cfbe-2f71-41e4-92a6-4ff97cf88dc4', N'', N'UserModule', 0, CAST(0x0000A8BA00A195B5 AS DateTime), N'', N'6ba79766-faa0-4259-8139-a4a6d35784e0', N'4abafc83-c8f5-452f-9882-e113a86e7a3e')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'c81aaf5c-6bfa-4105-8b45-cb7959b62572', N'', N'RoleOrg', 0, CAST(0x0000A8BD0177ED1A AS DateTime), N'', N'3e761e88-ddf7-4a62-b219-9a315b4564f2', N'86449128-d5ac-44bf-b999-f7735b7458fd')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'c8dc4685-7beb-4e42-960c-96174da1b756', N'', N'RoleOrg', 0, CAST(0x0000A8BD0177D75B AS DateTime), N'', N'09ee2ffa-7463-4938-ae0b-1cb4e80c7c13', N'543a9fcf-4770-4fd9-865f-030e562be238')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'c9099371-8d4e-4f5b-9686-2c60a2c1c641', N'', N'ProcessUser', 0, CAST(0x0000A67B0114EBF4 AS DateTime), N'0', N'10cc09fb-d469-41e5-ae3f-fdd805a4bd4c', N'3a95e392-07d4-4af3-b30d-140ca93340f5')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'c98b3d02-a76b-4ecc-94a5-cfeffd5e29fb', N'', N'RoleModule', 0, CAST(0x0000A67501192798 AS DateTime), N'0', N'211e12c7-e466-496e-8d26-0660a38e24cc', N'bedb41a2-f310-4775-af99-01be08adda93')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'ccae4f18-f33b-4656-9e59-93b9e29fc4b4', N'', N'UserOrg', 0, CAST(0x0000A84700E8AFA5 AS DateTime), N'', N'1df68dfd-3b6d-4491-872f-00a0fc6c5a64', N'86449128-d5ac-44bf-b999-f7735b7458fd')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'da6c0645-0bf9-4ade-9dd3-1b09e91e504c', N'', N'RoleElement', 0, CAST(0x0000A678009A6357 AS DateTime), N'0', N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'816b12b3-e916-446d-a2fa-329cfd13c831')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'df2d90b3-4e2e-40e9-b406-220009726460', N'', N'RoleModule', 0, CAST(0x0000A6770180AD2A AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'6a9e1346-0c01-44d2-8eb1-f929fdab542a')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'dfd5430b-3422-465a-be79-05a1e06deed2', N'', N'RoleElement', 0, CAST(0x0000A6770180C45D AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'c7d7daf0-3669-4a22-8bed-b092617deb9c')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'e12b77de-b7ce-4f38-b7a3-f3b2d285f33b', N'', N'RoleOrg', 0, CAST(0x0000A6A200A5D841 AS DateTime), N'0', N'2eb423d6-6ad9-4efe-b423-872478a2a434', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'e28c0dcd-168a-4b60-a514-7b6eb8026709', N'', N'RoleOrg', 0, CAST(0x0000A6A200A5C1D7 AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'e619a82e-edfb-4542-94df-0b92850667ad', N'', N'RoleResource', 0, CAST(0x0000A8C200F1ADFD AS DateTime), N'', N'0a7ebd0c-78d6-4fbc-8fbe-6fc25c3a932d', N'OPENAUTH_MODIFYACCOUNT')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'e785147c-f46b-474f-8fad-73b14fa69822', N'', N'UserRole', 0, CAST(0x0000A6790119EE6D AS DateTime), N'0', N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'4980a85b-e3db-4607-bc2c-0baf0140d7df')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'e84f6b9c-716d-4e94-a1aa-7fd0d1a2e23e', N'', N'RoleModule', 0, CAST(0x0000A6750119308B AS DateTime), N'0', N'648b04c4-4ac2-4d69-bef6-07081ef27871', N'069475e3-c997-487a-9f29-e6a864c5c1d4')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'e9cf3d63-6305-46c7-93b4-14053387c62c', N'', N'UserModule', 0, CAST(0x0000A8BA00A19510 AS DateTime), N'', N'6ba79766-faa0-4259-8139-a4a6d35784e0', N'37bb9414-19a0-4223-9056-71f8c758a930')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'ec72f6ae-09ee-4db9-99a1-bf15c8e35dda', N'', N'ProcessUser', 0, CAST(0x0000A68100BFD097 AS DateTime), N'0', N'6c6afe3c-349c-4198-8710-cf19c90f3afd', N'3a95e392-07d4-4af3-b30d-140ca93340f5')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'ec9c80ce-dbdf-4ba5-9091-82f75392c3b0', N'', N'UserElement', 0, CAST(0x0000A67A00FFA0E8 AS DateTime), N'0', N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'68484265-7802-4f06-b024-33e8b2f2edcf')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'ee1986a0-24cc-4dec-b5f5-68ef959ab650', N'', N'UserElement', 0, CAST(0x0000A8BA00F4A08F AS DateTime), N'', N'49df1602-f5f3-4d52-afb7-3802da619558', N'79dcd3eb-3aaf-4e08-83c9-713d8ff446fe')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'ee4f39fd-4fbf-4f68-9a70-d6c7d7db9723', N'', N'ProcessUser', 0, CAST(0x0000A6B000C3BC6C AS DateTime), N'0', N'b8bcdf59-1e29-4d97-a364-12ac8e8c5c61', N'3a95e392-07d4-4af3-b30d-140ca93340f5')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'eec41fcb-61c0-4e56-a5c0-a9f8be6e6fdc', N'', N'UserModule', 0, CAST(0x0000A67A00FF7630 AS DateTime), N'0', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7', N'069475e3-c997-487a-9f29-e6a864c5c1d4')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'f4ba636a-9002-43e6-93eb-95132a3e68c5', N'', N'ProcessUser', 0, CAST(0x0000A68F009AC522 AS DateTime), N'0', N'68295d2a-4dfd-4c5e-81e3-9c787e2603bc', N'3a95e392-07d4-4af3-b30d-140ca93340f5')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'f579a427-a9ed-4ebe-8411-72e8e6abd01d', N'', N'UserElement', 0, CAST(0x0000A678010EA882 AS DateTime), N'0', N'ea25646b-964b-4d41-ab03-d8964e1494fb', N'816b12b3-e916-446d-a2fa-329cfd13c831')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'f61ee29b-7988-404d-b692-5a8f667684be', N'', N'UserElement', 0, CAST(0x0000A8BA00A19A28 AS DateTime), N'', N'6ba79766-faa0-4259-8139-a4a6d35784e0', N'68484265-7802-4f06-b024-33e8b2f2edcf')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'f6367ca1-0486-46a4-b9c6-65c00936a516', N'', N'RoleElement', 0, CAST(0x0000A6770180C462 AS DateTime), N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'9e2c6754-f258-4b14-96a0-b9d981196a65')
INSERT [dbo].[Relevance] ([Id], [Description], [Key], [Status], [OperateTime], [OperatorId], [FirstId], [SecondId]) VALUES (N'fa7c4d39-b31a-4668-8716-d40a62aa722b', N'', N'UserOrg', 0, CAST(0x0000A80A00E6A96D AS DateTime), N'', N'63c9c82a-e0d3-4bde-bbd2-057cda2f5283', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
/****** Object:  Table [dbo].[Org]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Org](
	[Id] [dbo].[PrimaryKey] NOT NULL,
	[CascadeId] [varchar](255) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[HotKey] [varchar](255) NOT NULL,
	[ParentName] [varchar](255) NOT NULL,
	[IsLeaf] [bit] NOT NULL,
	[IsAutoExpand] [bit] NOT NULL,
	[IconName] [varchar](255) NOT NULL,
	[Status] [int] NOT NULL,
	[BizCode] [varchar](255) NOT NULL,
	[CustomCode] [varchar](4000) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[CreateId] [int] NOT NULL,
	[SortNo] [int] NOT NULL,
	[ParentId] [dbo].[PrimaryKey] NULL,
	[TypeName] [nvarchar](20) NULL,
	[TypeId] [dbo].[PrimaryKey] NULL,
 CONSTRAINT [PK_ORG] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点语义ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'CascadeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'热键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'HotKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父节点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'ParentName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否叶子节点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'IsLeaf'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否自动展开' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'IsAutoExpand'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点图标文件名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'IconName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'业务对照码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'BizCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自定义扩展码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'CustomCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'CreateId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'SortNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父节点流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'TypeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'TypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org'
GO
INSERT [dbo].[Org] ([Id], [CascadeId], [Name], [HotKey], [ParentName], [IsLeaf], [IsAutoExpand], [IconName], [Status], [BizCode], [CustomCode], [CreateTime], [CreateId], [SortNo], [ParentId], [TypeName], [TypeId]) VALUES (N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b', N'.0.1.3.1.', N'研发小组', N'', N'研发部', 0, 0, N'', 0, N'0', N'', CAST(0x0000A69F00C0671C AS DateTime), 0, 1, N'990cb229-cc18-41f3-8e2b-13f0f0110798', NULL, NULL)
INSERT [dbo].[Org] ([Id], [CascadeId], [Name], [HotKey], [ParentName], [IsLeaf], [IsAutoExpand], [IconName], [Status], [BizCode], [CustomCode], [CreateTime], [CreateId], [SortNo], [ParentId], [TypeName], [TypeId]) VALUES (N'543a9fcf-4770-4fd9-865f-030e562be238', N'.0.1.', N'集团总部', N'', N'根节点', 0, 0, N'', 0, N'0', N'', CAST(0x0000A69F00BF7F21 AS DateTime), 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Org] ([Id], [CascadeId], [Name], [HotKey], [ParentName], [IsLeaf], [IsAutoExpand], [IconName], [Status], [BizCode], [CustomCode], [CreateTime], [CreateId], [SortNo], [ParentId], [TypeName], [TypeId]) VALUES (N'86449128-d5ac-44bf-b999-f7735b7458fd', N'.0.2.1.', N'汇丰软件部', N'', N'汇丰', 0, 0, N'', 0, N'0', N'', CAST(0x0000A61200FA3A14 AS DateTime), 0, 1, N'c36e43df-3a99-45da-80d9-3ac5d24f4014', NULL, NULL)
INSERT [dbo].[Org] ([Id], [CascadeId], [Name], [HotKey], [ParentName], [IsLeaf], [IsAutoExpand], [IconName], [Status], [BizCode], [CustomCode], [CreateTime], [CreateId], [SortNo], [ParentId], [TypeName], [TypeId]) VALUES (N'990cb229-cc18-41f3-8e2b-13f0f0110798', N'.0.1.3.', N'研发部', N'', N'集团总部', 0, 1, N'', 0, N'0', N'', CAST(0x0000A5EA00D73ED8 AS DateTime), 0, 0, N'543a9fcf-4770-4fd9-865f-030e562be238', NULL, NULL)
INSERT [dbo].[Org] ([Id], [CascadeId], [Name], [HotKey], [ParentName], [IsLeaf], [IsAutoExpand], [IconName], [Status], [BizCode], [CustomCode], [CreateTime], [CreateId], [SortNo], [ParentId], [TypeName], [TypeId]) VALUES (N'c36e43df-3a99-45da-80d9-3ac5d24f4014', N'.0.2.', N'汇丰', N'', N'根节点', 0, 0, N'', 0, N'0', N'', CAST(0x0000A61200FA1EF5 AS DateTime), 0, 1, NULL, NULL, NULL)
/****** Object:  Table [dbo].[ModuleElement]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ModuleElement](
	[Id] [dbo].[PrimaryKey] NOT NULL,
	[DomId] [varchar](255) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Attr] [varchar](500) NOT NULL,
	[Script] [varchar](500) NOT NULL,
	[Icon] [varchar](255) NOT NULL,
	[Class] [varchar](255) NOT NULL,
	[Remark] [varchar](200) NOT NULL,
	[Sort] [int] NOT NULL,
	[ModuleId] [dbo].[PrimaryKey] NOT NULL,
	[TypeName] [nvarchar](20) NULL,
	[TypeId] [dbo].[PrimaryKey] NULL,
 CONSTRAINT [PK_MODULEELEMENT] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DOM ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'DomId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'元素附加属性' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Attr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'元素调用脚本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Script'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'元素图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Icon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'元素样式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Class'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能模块Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'ModuleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'TypeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'TypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块元素表(需要权限控制的按钮)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement'
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'0d25438e-1436-48e0-aedf-0f1690693282', N'btnAccessModule', N'为角色分配模块', N'', N'assignRoleModule(this)', N'', N'layui-btn-normal', N'为角色分配模块', 4, N'bedb41a2-f310-4775-af99-01be08adda93', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'15a4f88c-4fae-4cab-ba2f-0cbd2cca8736', N'btnAssignReource', N'为角色分配资源', N'', N'openRoleReourceAccess(this)', N'', N'layui-btn-normal', N'为角色分配资源', 3, N'bedb41a2-f310-4775-af99-01be08adda93', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'17ae4fd4-ab4e-439e-ba1d-2a53b46d112b', N'btnDel', N'删除', N'', N'del()', N'&#xe640;', N'layui-btn-danger', N'', 2, N'0031262c-689c-4b96-bae2-2c9d67076ade', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'18cc3217-28a6-49b2-9a20-080230065984', N'btnEdit', N'编辑', N'', N'edit()', N'&#xe642;', N'layui-btn-normal', N'', 1, N'0031262c-689c-4b96-bae2-2c9d67076ade', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'1a473afd-cbd4-41e9-9471-81f9435aaabe', N'btnEdit', N'编辑', N' ', N'edit()', N'&#xe642;', N'layui-btn-normal', N'编辑分类', 0, N'a94d5648-c2a9-405e-ba6f-f1602ec9b807', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'1c870438-4260-43a5-8996-a6e1dc8bbf6a', N'btnAdd', N'添加', N'', N'add()', N'&#xe654;', N'layui-btn-normal', N'添加部门', 0, N'6a9e1346-0c01-44d2-8eb1-f929fdab542a', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'1c9acc3e-a40d-4d07-b495-6e60eb9b71b9', N'btnEdit', N'编辑', N'', N'edit()', N'&#xe642;', N'layui-btn-normal', N'编辑角色', 1, N'bedb41a2-f310-4775-af99-01be08adda93', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'2d595a2a-5de5-479e-a331-b53c799a6b10', N'btnAdd', N'添加', N'', N'add()', N'&#xe654;', N'layui-btn-normal', N'添加分类', 0, N'a94d5648-c2a9-405e-ba6f-f1602ec9b807', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'2feefce1-e3d8-42ac-b811-2352679628da', N'btnDel', N'删除', N'', N'del()', N'&#xe640;', N'layui-btn-danger', N'刪除用戶', 2, N'ef386d5d-cd58-43c0-a4ab-80afd0dbcd6c', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'34730f5a-d307-457b-9041-5f7de30abfa9', N'btnEdit', N'编辑', N'', N'edit()', N'&#xe642;', N'layui-btn-normal', N'编辑用户', 1, N'ef386d5d-cd58-43c0-a4ab-80afd0dbcd6c', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'362d1eda-c85e-4b14-a80a-b923291e08de', N'btnAdd', N'添加', N'', N'add()', N'&#xe654;', N'layui-btn-normal', N'添加', 0, N'f0f06b8f-0a86-487c-8b0e-0a12573ccd46', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'38109ca0-32ec-44bd-a243-017e591b532b', N'btnEditStock', N'编辑', N' ', N'edit()', N'&#xe642;', N'layui-btn-normal', N'编辑进出库', 0, N'89c3bfbe-246f-4112-8eb1-b6789da54202', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'3dc0ec4d-bf86-4bae-9ec0-1d6c2403fb99', N'btnAdd', N'添加', N'', N'add()', N'&#xe654;', N'layui-btn-normal', N'', 1, N'92b00259-2d15-43e7-9321-adffb29e8bf2', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'44075557-496e-4dde-bb75-7b69f51ab4fe', N'btnEdit', N'编辑', N'', N'edit()', N'&#xe642;', N'layui-btn-normal', N'编辑模块', 2, N'bc80478d-0547-4437-9cff-be4b40144bdf', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'4bfa8ea0-6b0d-426f-8687-b654575ca780', N'btnEdit', N'编辑', N'', N'edit()', N'&#xe642;', N'layui-btn-normal', N'编辑资源', 2, N'e8dc5db6-4fc4-4795-a1cc-681cbcceec91', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'4f2737db-633f-4946-8a71-b08b9885f151', N'btnEdit', N'编辑', N'', N'edit()', N'&#xe642;', N'layui-btn-normal', N'', 2, N'92b00259-2d15-43e7-9321-adffb29e8bf2', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'50c9df24-b233-42cb-9a0d-4ce158c75f86', N'btnAdd', N'添加', N'', N'add()', N'&#xe654;', N'layui-btn-normal', N'添加用戶', 0, N'ef386d5d-cd58-43c0-a4ab-80afd0dbcd6c', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'584c7a3b-d28a-47b4-8648-7797d05d83d1', N'btnDel', N'删除', N'', N'del()', N'&#xe640;', N'layui-btn-danger', N'', 3, N'9486ff22-b696-4d7f-8093-8a3e53c45453', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'5ed1681c-13d2-4c87-8675-a8d95c0b40ae', N'btnAddMenu', N'添加菜单', N'', N'assignButton()', N'&#xe654;', N'layui-btn-normal', N'为模块分配按钮', 4, N'bc80478d-0547-4437-9cff-be4b40144bdf', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'5ed1681c-13d2-4c87-8676-a8d95c0b40ae', N'btnEditMenu', N'编辑菜单', N'', N'', N'&#xe642;', N'layui-btn-normal', N'编辑菜单', 5, N'bc80478d-0547-4437-9cff-be4b40144bdf', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'5ed1681c-13d2-4c87-8677-a8d95c0b40ae', N'btnDelMenu', N'删除菜单', N'', N'', N'', N'layui-btn-danger', N'', 6, N'bc80478d-0547-4437-9cff-be4b40144bdf', N'', N'')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'645b40ac-4223-44a7-aab4-66eb56cf9864', N'btnAdd', N'添加', N'', N'add()', N'&#xe654;', N'layui-btn-normal', N'添加角色', 0, N'bedb41a2-f310-4775-af99-01be08adda93', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'6839a297-350b-4215-b680-4e5dfdae5615', N'btnAssignReource', N'为用户分配资源', N'', N'openUserReourceAccess(this)', N'', N'layui-btn-normal', N'为用户分配资源', 4, N'ef386d5d-cd58-43c0-a4ab-80afd0dbcd6c', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'68484265-7802-4f06-b024-33e8b2f2edcf', N'btnAdd', N'新的申请', N'', N'add()', N'&#xe654;', N'layui-btn-normal', N'申请物品', 0, N'9486ff22-b696-4d7f-8093-8a3e53c45453', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'68fc793f-069f-43e1-a012-42ac2d7c585c', N'btnDel', N'删除', N'', N'del()', N'&#xe640;', N'layui-btn-danger', N'删除角色', 2, N'bedb41a2-f310-4775-af99-01be08adda93', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'6c814946-db5c-48bd-84dd-b1c38196ad74', N'btnAdd', N'添加模版', N'', N'add()', N'&#xe654;', N'layui-btn-normal', N'', 0, N'0031262c-689c-4b96-bae2-2c9d67076ade', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'6db928fe-93df-460f-9472-8bb0b6cae52c', N'btnAdd', N'添加', N'', N'add()', N'&#xe654;', N'layui-btn-normal', N'添加进出库', 0, N'89c3bfbe-246f-4112-8eb1-b6789da54202', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'79dcd3eb-3aaf-4e08-83c9-713d8ff446fe', N'btnVerification', N'处理', N'', N'verificationForm()', N'&#xe610;', N'layui-btn-normal', N'', 5, N'4abafc83-c8f5-452f-9882-e113a86e7a3e', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'7b2b1ffb-398b-4f7b-83da-8f484e1bcea0', N'btnDel', N'删除', N'', N'del()', N'&#xe640;', N'layui-btn-danger', N'删除部门', 0, N'6a9e1346-0c01-44d2-8eb1-f929fdab542a', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'7f071c63-1620-4486-9264-5806b2e63218', N'btnAccessRole', N'为用户分配角色', N'', N'openUserRoleAccess(this)', N'', N'layui-btn-normal', N'为用户分配角色', 5, N'ef386d5d-cd58-43c0-a4ab-80afd0dbcd6c', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'816b12b3-e916-446d-a2fa-329cfd13c831', N'btnDetail', N'进度详情', N'', N'', N'&#xe60a;', N'layui-btn-normal', N'', 4, N'9486ff22-b696-4d7f-8093-8a3e53c45453', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'826b12b3-e916-446d-a2fa-329cfd13c831', N'btnDetail', N'进度详情', N'', N'', N'&#xe60a;', N'layui-btn-normal', N'', 4, N'4abafc83-c8f5-452f-9882-e113a86e7a3e', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'84694ea5-d6e1-4a65-8a59-7b5b779688d4', N'btnAdd', N'添加', N'', N'add()', N'&#xe654;', N'layui-btn-normal', N'添加模块', 1, N'bc80478d-0547-4437-9cff-be4b40144bdf', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'84e38920-f6e5-499c-bf52-a3c6f8499ff7', N'btnDelStock', N'删除', N' ', N'del()', N'&#xe640;', N'layui-btn-danger', N'删除分类', 0, N'a94d5648-c2a9-405e-ba6f-f1602ec9b807', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'8966b04f-8e26-4046-8b03-0c64f9f833dd', N'btnDel', N'删除', N'', N'del()', N'&#xe640;', N'layui-btn-danger', N'', 3, N'92b00259-2d15-43e7-9321-adffb29e8bf2', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'9c96e485-84a6-45f0-b6a7-f01dab94b0c6', N'btnPreview', N'预览', N'', N'preview()', N'', N'layui-btn-normal', N'', 4, N'92b00259-2d15-43e7-9321-adffb29e8bf2', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'9e2c6754-f258-4b14-96a0-b9d981196a65', N'btnAdd', N'添加', N'', N'add()', N'&#xe654;', N'layui-btn-normal', N'添加资源', 0, N'e8dc5db6-4fc4-4795-a1cc-681cbcceec91', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'b3e23ebc-0ff2-41b3-bff0-fd5e93f6828a', N'btnDetail', N'查看详情', N'', N'', N'&#xe60a;', N'layui-btn-normal', N'', 0, N'37bb9414-19a0-4223-9056-71f8c758a930', N'', N'')
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'c3d7b478-21e9-4c1e-b866-a3c80be7909b', N'btnRefresh', N'刷新', N'', N'refresh()', N'&#xe615;', N'layui-btn-normal', N'刷新分类', 0, N'a94d5648-c2a9-405e-ba6f-f1602ec9b807', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'c4c1acbb-9cbf-4b1e-9cc0-ccf5ff544ec2', N'btnDel', N'删除', N'', N'del()', N'&#xe640;', N'layui-btn-danger', N'删除进出库', 0, N'89c3bfbe-246f-4112-8eb1-b6789da54202', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'c7d7daf0-3669-4a22-8bed-b092617deb9c', N'btnDel', N'删除', N'', N'del()', N'&#xe640;', N'layui-btn-danger', N'删除资源', 3, N'e8dc5db6-4fc4-4795-a1cc-681cbcceec91', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'd1ba6a72-ba14-44c0-baba-46d0ad96fe8a', N'btnRefresh', N'刷新', N'', N'refresh()', N'&#xe615;', N'layui-btn-normal', N'刷新用户', 3, N'ef386d5d-cd58-43c0-a4ab-80afd0dbcd6c', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'd352c8ee-3dff-4d28-a0de-903ae68f2533', N'btnPreview', N'预览', N'', N'preview()', N'', N'layui-btn-normal', N'', 1, N'0031262c-689c-4b96-bae2-2c9d67076ade', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'daddf3b9-71b5-45ac-b85d-5a11c522f2f4', N'btnDel', N'删除', N' ', N'del()', N'&#xe640;', N'layui-btn-danger', N'删除模块', 3, N'bc80478d-0547-4437-9cff-be4b40144bdf', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'ef42721f-d223-4a00-a1d9-80b81121f21a', N'btnEdit', N'编辑', N' ', N'edit()', N'&#xe642;', N'layui-btn-normal', N'编辑部门', 0, N'6a9e1346-0c01-44d2-8eb1-f929fdab542a', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'f8dde22a-2a37-47c4-8e67-70fb3af5303e', N'btnRefresh', N'刷新', N'', N'refresh()', N'&#xe615;', N'layui-btn-normal', N'刷新部门', 0, N'6a9e1346-0c01-44d2-8eb1-f929fdab542a', NULL, NULL)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Attr], [Script], [Icon], [Class], [Remark], [Sort], [ModuleId], [TypeName], [TypeId]) VALUES (N'fa816af1-a28d-47b5-9b8b-c46e18f902e9', N'btnAccessModule', N'为用户分配模块', N'', N'openUserModuleAccess(this)', N'', N'layui-btn-normal', N'为用户分配模块', 6, N'ef386d5d-cd58-43c0-a4ab-80afd0dbcd6c', NULL, NULL)
/****** Object:  Table [dbo].[Module]    Script Date: 05/08/2020 17:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Module](
	[Id] [dbo].[PrimaryKey] NOT NULL,
	[CascadeId] [varchar](255) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Url] [varchar](255) NOT NULL,
	[HotKey] [varchar](255) NOT NULL,
	[IsLeaf] [bit] NOT NULL,
	[IsAutoExpand] [bit] NOT NULL,
	[IconName] [varchar](255) NOT NULL,
	[Status] [int] NOT NULL,
	[ParentName] [varchar](255) NOT NULL,
	[Vector] [varchar](255) NOT NULL,
	[SortNo] [int] NOT NULL,
	[ParentId] [dbo].[PrimaryKey] NULL,
	[Code] [varchar](50) NULL,
 CONSTRAINT [PK_MODULE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能模块流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点语义ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'CascadeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能模块名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主页面URL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'Url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'热键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'HotKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否叶子节点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'IsLeaf'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否自动展开' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'IsAutoExpand'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点图标文件名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'IconName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父节点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'ParentName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'矢量图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'Vector'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'SortNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父节点流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能模块表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module'
GO
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo], [ParentId], [Code]) VALUES (N'0031262c-689c-4b96-bae2-2c9d67076ade', N'.0.1.2.', N'流程设计', N'/flowSchemes/index', N'', 0, 0, N'&#xe628;', 0, N'基础配置', N'', 0, N'7580672f-a390-4bb6-982d-9a4570cb5199', N'FlowScheme')
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo], [ParentId], [Code]) VALUES (N'069475e3-c997-487a-9f29-e6a864c5c1d4', N'.0.2.', N'流程中心', N'/', N'', 0, 0, N'&#xe638;', 0, N'根节点', N'', 0, NULL, NULL)
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo], [ParentId], [Code]) VALUES (N'37bb9414-19a0-4223-9056-71f8c758a930', N'.0.2.3.', N'已处理流程', N'/flowinstances/disposed', N'', 0, 0, N'&#xe610;', 0, N'流程中心', N'', 1, N'069475e3-c997-487a-9f29-e6a864c5c1d4', N'FlowInstanceDisposed')
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo], [ParentId], [Code]) VALUES (N'4abafc83-c8f5-452f-9882-e113a86e7a3e', N'.0.2.2.', N'待处理流程', N'/flowinstances/wait', N'', 0, 0, N'&#xe641;', 0, N'流程中心', N'', 1, N'069475e3-c997-487a-9f29-e6a864c5c1d4', N'FlowInstanceWait')
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo], [ParentId], [Code]) VALUES (N'6a9e1346-0c01-44d2-8eb1-f929fdab542a', N'.0.1.8.', N'部门管理', N'/OrgManager/Index', N'', 0, 0, N'&#xe613;', 0, N'基础配置', N'', 0, N'7580672f-a390-4bb6-982d-9a4570cb5199', N'Org')
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo], [ParentId], [Code]) VALUES (N'7580672f-a390-4bb6-982d-9a4570cb5199', N'.0.1.', N'基础配置', N' ', N' ', 1, 0, N'&#xe620;', 1, N'根节点', N' ', 0, NULL, NULL)
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo], [ParentId], [Code]) VALUES (N'92b00259-2d15-43e7-9321-adffb29e8bf2', N'.0.1.5.', N'表单设计', N'/forms/index', N'', 0, 0, N'&#xe63c;', 0, N'基础配置', N'', 0, N'7580672f-a390-4bb6-982d-9a4570cb5199', N'Form')
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo], [ParentId], [Code]) VALUES (N'9486ff22-b696-4d7f-8093-8a3e53c45453', N'.0.2.1.', N'我的流程', N'/flowInstances/Index', N'', 0, 0, N'&#xe618;', 0, N'流程中心', N'', 2, N'069475e3-c997-487a-9f29-e6a864c5c1d4', N'FlowInstance')
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo], [ParentId], [Code]) VALUES (N'a94d5648-c2a9-405e-ba6f-f1602ec9b807', N'.0.1.7.', N'分类管理', N'/Categories/Index', N'', 0, 0, N'&#xe62a;', 0, N'基础配置', N'', 0, N'7580672f-a390-4bb6-982d-9a4570cb5199', N'Category')
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo], [ParentId], [Code]) VALUES (N'bc80478d-0547-4437-9cff-be4b40144bdf', N'.0.1.6.', N'模块管理', N'/ModuleManager/Index', N' ', 1, 0, N'&#xe630;', 0, N'基础配置', N' ', 0, N'7580672f-a390-4bb6-982d-9a4570cb5199', N'Module')
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo], [ParentId], [Code]) VALUES (N'bedb41a2-f310-4775-af99-01be08adda93', N'.0.1.1.', N'角色管理', N'/RoleManager/Index', N'', 1, 0, N'&#xe627;', 0, N'基础配置', N'', 0, N'7580672f-a390-4bb6-982d-9a4570cb5199', N'Role')
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo], [ParentId], [Code]) VALUES (N'e8dc5db6-4fc4-4795-a1cc-681cbcceec91', N'.0.1.3.', N'资源管理', N'/Resources/Index', N'', 0, 0, N'&#xe64c;', 0, N'基础配置', N'', 0, N'7580672f-a390-4bb6-982d-9a4570cb5199', N'Resource')
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo], [ParentId], [Code]) VALUES (N'ef386d5d-cd58-43c0-a4ab-80afd0dbcd6c', N'.0.1.4.', N'用户管理', N'/UserManager/Index', N'', 0, 0, N'&#xe612;', 0, N'基础配置', N'', 0, N'7580672f-a390-4bb6-982d-9a4570cb5199', N'User')
/****** Object:  Default [DF__Test__Id__42E1EEFE]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Test] ADD  DEFAULT (newid()) FOR [Id]
GO
/****** Object:  Default [DF__Test__data_1__43D61337]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Test] ADD  DEFAULT ('') FOR [data_1]
GO
/****** Object:  Default [DF__Test__data_2__44CA3770]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Test] ADD  DEFAULT ('') FOR [data_2]
GO
/****** Object:  Default [DF__Test__data_3__45BE5BA9]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Test] ADD  DEFAULT ('') FOR [data_3]
GO
/****** Object:  Default [DF__Test__checkboxs___46B27FE2]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Test] ADD  DEFAULT ((0)) FOR [checkboxs_0]
GO
/****** Object:  Default [DF__Test__data_7__47A6A41B]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Test] ADD  DEFAULT ('') FOR [data_7]
GO
/****** Object:  Default [DF__Test__data_8__489AC854]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Test] ADD  DEFAULT ('') FOR [data_8]
GO
/****** Object:  Default [DF__Test__data_9__498EEC8D]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Test] ADD  DEFAULT ('') FOR [data_9]
GO
/****** Object:  Default [DF__Test__data_10__4A8310C6]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Test] ADD  DEFAULT ('') FOR [data_10]
GO
/****** Object:  Default [DF__Test__data_11__4B7734FF]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Test] ADD  DEFAULT ('') FOR [data_11]
GO
/****** Object:  Default [DF_Sys_UserLogOn_F_ErrorNum]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Sys_UserLogOn] ADD  CONSTRAINT [DF_Sys_UserLogOn_F_ErrorNum]  DEFAULT ((0)) FOR [F_ErrorNum]
GO
/****** Object:  Default [DF_Sys_ServerState_F_Cout]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Sys_ServerState] ADD  CONSTRAINT [DF_Sys_ServerState_F_Cout]  DEFAULT ((0)) FOR [F_Cout]
GO
/****** Object:  Default [DF__Wct_Reque__IsDef__412EB0B6]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Wct_RequestRule] ADD  DEFAULT ((0)) FOR [IsDefault]
GO
/****** Object:  Default [DF__Wct_Reque__IsLik__4222D4EF]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Wct_RequestRule] ADD  DEFAULT ((0)) FOR [IsLikeSearch]
GO
/****** Object:  Default [DF__Form__Fields__0E6E26BF]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Form] ADD  DEFAULT ((0)) FOR [Fields]
GO
/****** Object:  Default [DF__Form__SortCode__0F624AF8]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Form] ADD  DEFAULT ((0)) FOR [SortCode]
GO
/****** Object:  Default [DF__Form__Delete__10566F31]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Form] ADD  DEFAULT ((0)) FOR [Delete]
GO
/****** Object:  Default [DF__Form__CreateDate__114A936A]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Form] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF__FlowSchem__FrmTy__08B54D69]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[FlowScheme] ADD  DEFAULT ((0)) FOR [FrmType]
GO
/****** Object:  Default [DF__FlowSchem__Autho__09A971A2]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[FlowScheme] ADD  DEFAULT ((0)) FOR [AuthorizeType]
GO
/****** Object:  Default [DF__FlowSchem__SortC__0A9D95DB]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[FlowScheme] ADD  DEFAULT ((0)) FOR [SortCode]
GO
/****** Object:  Default [DF__FlowSchem__Delet__0B91BA14]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[FlowScheme] ADD  DEFAULT ((0)) FOR [DeleteMark]
GO
/****** Object:  Default [DF__FlowSchem__Disab__0C85DE4D]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[FlowScheme] ADD  DEFAULT ((0)) FOR [Disabled]
GO
/****** Object:  Default [DF__FlowSchem__Creat__0D7A0286]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[FlowScheme] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF__FlowInsta__Trans__05D8E0BE]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[FlowInstanceTransitionHistory] ADD  DEFAULT ((0)) FOR [TransitionSate]
GO
/****** Object:  Default [DF__FlowInsta__IsFin__06CD04F7]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[FlowInstanceTransitionHistory] ADD  DEFAULT ((0)) FOR [IsFinish]
GO
/****** Object:  Default [DF__FlowInsta__Creat__07C12930]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[FlowInstanceTransitionHistory] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF__FlowInsta__Creat__04E4BC85]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[FlowInstanceOperationHistory] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF__FlowInsta__FrmTy__00200768]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[FlowInstance] ADD  DEFAULT ((0)) FOR [FrmType]
GO
/****** Object:  Default [DF__FlowInsta__Disab__01142BA1]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[FlowInstance] ADD  DEFAULT ((0)) FOR [Disabled]
GO
/****** Object:  Default [DF__FlowInsta__Creat__02084FDA]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[FlowInstance] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF__FlowInsta__FlowL__02FC7413]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[FlowInstance] ADD  DEFAULT ((0)) FOR [FlowLevel]
GO
/****** Object:  Default [DF__FlowInsta__IsFin__03F0984C]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[FlowInstance] ADD  DEFAULT ((0)) FOR [IsFinish]
GO
/****** Object:  Default [DF__User__Account__4C6B5938]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[User] ADD  DEFAULT (' ') FOR [Account]
GO
/****** Object:  Default [DF__User__Password__4D5F7D71]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[User] ADD  DEFAULT (' ') FOR [Password]
GO
/****** Object:  Default [DF__User__Name__4E53A1AA]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[User] ADD  DEFAULT (' ') FOR [Name]
GO
/****** Object:  Default [DF__User__Sex__4F47C5E3]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[User] ADD  DEFAULT ((0)) FOR [Sex]
GO
/****** Object:  Default [DF__User__Status__503BEA1C]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[User] ADD  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF__User__BizCode__51300E55]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[User] ADD  DEFAULT (' ') FOR [BizCode]
GO
/****** Object:  Default [DF__User__CreateTime__5224328E]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[User] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF__CategoryTy__Name__7E37BEF6]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[CategoryType] ADD  DEFAULT (' ') FOR [Name]
GO
/****** Object:  Default [DF__CategoryT__Creat__7F2BE32F]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[CategoryType] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF__Category__Name__7B5B524B]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Category] ADD  DEFAULT (' ') FOR [Name]
GO
/****** Object:  Default [DF__Category__Disabl__7C4F7684]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Category] ADD  DEFAULT ((0)) FOR [Disabled]
GO
/****** Object:  Default [DF__Category__SortNo__7D439ABD]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Category] ADD  DEFAULT ((0)) FOR [SortNo]
GO
/****** Object:  Default [DF__Applicatio__Name__787EE5A0]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Application] ADD  DEFAULT (' ') FOR [Name]
GO
/****** Object:  Default [DF__Applicati__Disab__797309D9]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Application] ADD  DEFAULT ((0)) FOR [Disable]
GO
/****** Object:  Default [DF__Applicati__Creat__7A672E12]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Application] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF__Stock__Name__3C34F16F]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Stock] ADD  DEFAULT (' ') FOR [Name]
GO
/****** Object:  Default [DF__Stock__Number__3D2915A8]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [Number]
GO
/****** Object:  Default [DF__Stock__Price__3E1D39E1]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [Price]
GO
/****** Object:  Default [DF__Stock__Status__3F115E1A]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF__Stock__Viewable__40058253]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Stock] ADD  DEFAULT (' ') FOR [Viewable]
GO
/****** Object:  Default [DF__Stock__User__40F9A68C]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Stock] ADD  DEFAULT (' ') FOR [User]
GO
/****** Object:  Default [DF__Stock__Time__41EDCAC5]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Stock] ADD  DEFAULT (getdate()) FOR [Time]
GO
/****** Object:  Default [DF__Role__Name__395884C4]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Role] ADD  DEFAULT (' ') FOR [Name]
GO
/****** Object:  Default [DF__Role__Status__3A4CA8FD]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Role] ADD  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF__Role__CreateTime__3B40CD36]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Role] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF__Resource__Cascad__3493CFA7]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Resource] ADD  DEFAULT (' ') FOR [CascadeId]
GO
/****** Object:  Default [DF__Resource__Name__3587F3E0]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Resource] ADD  DEFAULT (' ') FOR [Name]
GO
/****** Object:  Default [DF__Resource__SortNo__367C1819]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Resource] ADD  DEFAULT ((0)) FOR [SortNo]
GO
/****** Object:  Default [DF__Resource__Descri__37703C52]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Resource] ADD  DEFAULT (' ') FOR [Description]
GO
/****** Object:  Default [DF__Resource__Disabl__3864608B]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Resource] ADD  DEFAULT ((0)) FOR [Disable]
GO
/****** Object:  Default [DF__Relevance__Descr__30C33EC3]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Relevance] ADD  DEFAULT (' ') FOR [Description]
GO
/****** Object:  Default [DF__Relevance__Key__31B762FC]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Relevance] ADD  DEFAULT (' ') FOR [Key]
GO
/****** Object:  Default [DF__Relevance__Statu__32AB8735]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Relevance] ADD  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF__Relevance__Opera__339FAB6E]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Relevance] ADD  DEFAULT (getdate()) FOR [OperateTime]
GO
/****** Object:  Default [DF__Org__CascadeId__245D67DE]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Org] ADD  DEFAULT (' ') FOR [CascadeId]
GO
/****** Object:  Default [DF__Org__Name__25518C17]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Org] ADD  DEFAULT (' ') FOR [Name]
GO
/****** Object:  Default [DF__Org__HotKey__2645B050]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Org] ADD  DEFAULT (' ') FOR [HotKey]
GO
/****** Object:  Default [DF__Org__ParentName__2739D489]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Org] ADD  DEFAULT (' ') FOR [ParentName]
GO
/****** Object:  Default [DF__Org__IsLeaf__282DF8C2]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Org] ADD  DEFAULT ((1)) FOR [IsLeaf]
GO
/****** Object:  Default [DF__Org__IsAutoExpan__29221CFB]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Org] ADD  DEFAULT ((0)) FOR [IsAutoExpand]
GO
/****** Object:  Default [DF__Org__IconName__2A164134]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Org] ADD  DEFAULT (' ') FOR [IconName]
GO
/****** Object:  Default [DF__Org__Status__2B0A656D]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Org] ADD  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF__Org__BizCode__2BFE89A6]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Org] ADD  DEFAULT (' ') FOR [BizCode]
GO
/****** Object:  Default [DF__Org__CustomCode__2CF2ADDF]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Org] ADD  DEFAULT (' ') FOR [CustomCode]
GO
/****** Object:  Default [DF__Org__CreateTime__2DE6D218]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Org] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF__Org__CreateId__2EDAF651]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Org] ADD  DEFAULT ((0)) FOR [CreateId]
GO
/****** Object:  Default [DF__Org__SortNo__2FCF1A8A]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Org] ADD  DEFAULT ((0)) FOR [SortNo]
GO
/****** Object:  Default [DF__ModuleEle__DomId__1CBC4616]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[ModuleElement] ADD  DEFAULT (' ') FOR [DomId]
GO
/****** Object:  Default [DF__ModuleElem__Name__1DB06A4F]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[ModuleElement] ADD  DEFAULT (' ') FOR [Name]
GO
/****** Object:  Default [DF__ModuleElem__Attr__1EA48E88]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[ModuleElement] ADD  DEFAULT (' ') FOR [Attr]
GO
/****** Object:  Default [DF__ModuleEle__Scrip__1F98B2C1]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[ModuleElement] ADD  DEFAULT (' ') FOR [Script]
GO
/****** Object:  Default [DF__ModuleElem__Icon__208CD6FA]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[ModuleElement] ADD  DEFAULT (' ') FOR [Icon]
GO
/****** Object:  Default [DF__ModuleEle__Class__2180FB33]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[ModuleElement] ADD  DEFAULT (' ') FOR [Class]
GO
/****** Object:  Default [DF__ModuleEle__Remar__22751F6C]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[ModuleElement] ADD  DEFAULT (' ') FOR [Remark]
GO
/****** Object:  Default [DF__ModuleElem__Sort__236943A5]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[ModuleElement] ADD  DEFAULT ((0)) FOR [Sort]
GO
/****** Object:  Default [DF__Module__CascadeI__123EB7A3]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Module] ADD  DEFAULT (' ') FOR [CascadeId]
GO
/****** Object:  Default [DF__Module__Name__1332DBDC]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Module] ADD  DEFAULT (' ') FOR [Name]
GO
/****** Object:  Default [DF__Module__Url__14270015]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Module] ADD  DEFAULT (' ') FOR [Url]
GO
/****** Object:  Default [DF__Module__HotKey__151B244E]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Module] ADD  DEFAULT (' ') FOR [HotKey]
GO
/****** Object:  Default [DF__Module__IsLeaf__160F4887]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Module] ADD  DEFAULT ((1)) FOR [IsLeaf]
GO
/****** Object:  Default [DF__Module__IsAutoEx__17036CC0]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Module] ADD  DEFAULT ((0)) FOR [IsAutoExpand]
GO
/****** Object:  Default [DF__Module__IconName__17F790F9]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Module] ADD  DEFAULT (' ') FOR [IconName]
GO
/****** Object:  Default [DF__Module__Status__18EBB532]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Module] ADD  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF__Module__ParentNa__19DFD96B]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Module] ADD  DEFAULT (' ') FOR [ParentName]
GO
/****** Object:  Default [DF__Module__Vector__1AD3FDA4]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Module] ADD  DEFAULT (' ') FOR [Vector]
GO
/****** Object:  Default [DF__Module__SortNo__1BC821DD]    Script Date: 05/08/2020 17:00:55 ******/
ALTER TABLE [dbo].[Module] ADD  DEFAULT ((0)) FOR [SortNo]
GO
