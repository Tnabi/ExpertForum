/*
 Navicat Premium Dump SQL

 Source Server         : MS Local
 Source Server Type    : SQL Server
 Source Server Version : 15002000 (15.00.2000)
 Source Host           : localhost:1433
 Source Catalog        : public
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002000 (15.00.2000)
 File Encoding         : 65001

 Date: 02/10/2024 16:59:35
*/


-- ----------------------------
-- Table structure for category
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[category]') AND type IN ('U'))
	DROP TABLE [dbo].[category]
GO

CREATE TABLE [dbo].[category] (
  [category_id] int  IDENTITY(1,1) NOT NULL,
  [parent_id] int  NULL,
  [category_name] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [created_at] datetime  NULL
)
GO

ALTER TABLE [dbo].[category] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of category
-- ----------------------------
SET IDENTITY_INSERT [dbo].[category] ON
GO

SET IDENTITY_INSERT [dbo].[category] OFF
GO


-- ----------------------------
-- Table structure for media
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[media]') AND type IN ('U'))
	DROP TABLE [dbo].[media]
GO

CREATE TABLE [dbo].[media] (
  [media_id] int  IDENTITY(1,1) NOT NULL,
  [media_url] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[media] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of media
-- ----------------------------
SET IDENTITY_INSERT [dbo].[media] ON
GO

SET IDENTITY_INSERT [dbo].[media] OFF
GO


-- ----------------------------
-- Table structure for message
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[message]') AND type IN ('U'))
	DROP TABLE [dbo].[message]
GO

CREATE TABLE [dbo].[message] (
  [message_id] int  IDENTITY(1,1) NOT NULL,
  [content] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [created_at] datetime  NOT NULL,
  [media_id] int  NULL,
  [thread_id] int  NOT NULL,
  [created_id] varchar(13) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[message] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of message
-- ----------------------------
SET IDENTITY_INSERT [dbo].[message] ON
GO

SET IDENTITY_INSERT [dbo].[message] OFF
GO


-- ----------------------------
-- Table structure for qa_store
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[qa_store]') AND type IN ('U'))
	DROP TABLE [dbo].[qa_store]
GO

CREATE TABLE [dbo].[qa_store] (
  [question_id] int  IDENTITY(1,1) NOT NULL,
  [question] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [answer] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [created_id] varchar(13) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [created_at] datetime  NOT NULL,
  [thread_id] int  NULL,
  [category_id] int  NOT NULL
)
GO

ALTER TABLE [dbo].[qa_store] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of qa_store
-- ----------------------------
SET IDENTITY_INSERT [dbo].[qa_store] ON
GO

SET IDENTITY_INSERT [dbo].[qa_store] OFF
GO


-- ----------------------------
-- Table structure for thread
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[thread]') AND type IN ('U'))
	DROP TABLE [dbo].[thread]
GO

CREATE TABLE [dbo].[thread] (
  [thread_id] int  IDENTITY(1,1) NOT NULL,
  [adviser_id] varchar(13) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [client_id] varchar(13) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [created_at] datetime  NULL,
  [rate] int  NOT NULL,
  [comment] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [deadline] datetime  NULL,
  [finished_at] datetime  NULL
)
GO

ALTER TABLE [dbo].[thread] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of thread
-- ----------------------------
SET IDENTITY_INSERT [dbo].[thread] ON
GO

SET IDENTITY_INSERT [dbo].[thread] OFF
GO


-- ----------------------------
-- Table structure for user
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[user]') AND type IN ('U'))
	DROP TABLE [dbo].[user]
GO

CREATE TABLE [dbo].[user] (
  [user_id] varchar(13) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [email] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [password] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [role_id] int  NOT NULL,
  [birthday] date  NULL,
  [address] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [user_name] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [delete_flg] bit DEFAULT 0 NOT NULL,
  [change_pw_flg] bit DEFAULT 0 NOT NULL,
  [last_login] datetime  NULL,
  [created_id] varchar(13) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [created_at] datetime  NULL,
  [updated_id] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [updated_at] datetime  NULL
)
GO

ALTER TABLE [dbo].[user] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO [dbo].[user] ([user_id], [email], [password], [role_id], [birthday], [address], [user_name], [delete_flg], [change_pw_flg], [last_login], [created_id], [created_at], [updated_id], [updated_at]) VALUES (N'036255555555', N'test@gmail.com', N'abc', N'1', N'1999-06-24', N'Ha Noi', N'anhbt', N'0', N'0', N'2024-09-17 16:45:59.743', NULL, NULL, N'036255555555', N'2024-09-17 16:45:59.743')
GO


-- ----------------------------
-- Table structure for user_role
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[user_role]') AND type IN ('U'))
	DROP TABLE [dbo].[user_role]
GO

CREATE TABLE [dbo].[user_role] (
  [role_id] int  NOT NULL,
  [role_name] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[user_role] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO [dbo].[user_role] ([role_id], [role_name]) VALUES (N'1', N'admin')
GO

INSERT INTO [dbo].[user_role] ([role_id], [role_name]) VALUES (N'2', N'staff')
GO

INSERT INTO [dbo].[user_role] ([role_id], [role_name]) VALUES (N'3', N'expert')
GO

INSERT INTO [dbo].[user_role] ([role_id], [role_name]) VALUES (N'4', N'user')
GO


-- ----------------------------
-- Table structure for visitors
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[visitors]') AND type IN ('U'))
	DROP TABLE [dbo].[visitors]
GO

CREATE TABLE [dbo].[visitors] (
  [visitor_count] int  NULL,
  [date] date  NULL
)
GO

ALTER TABLE [dbo].[visitors] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of visitors
-- ----------------------------
INSERT INTO [dbo].[visitors] ([visitor_count], [date]) VALUES (N'1649', N'2024-08-29')
GO

INSERT INTO [dbo].[visitors] ([visitor_count], [date]) VALUES (N'1649', N'2024-08-29')
GO

INSERT INTO [dbo].[visitors] ([visitor_count], [date]) VALUES (N'984', N'2024-09-26')
GO

INSERT INTO [dbo].[visitors] ([visitor_count], [date]) VALUES (N'19688', N'2024-10-01')
GO

INSERT INTO [dbo].[visitors] ([visitor_count], [date]) VALUES (N'18', N'2024-10-02')
GO

INSERT INTO [dbo].[visitors] ([visitor_count], [date]) VALUES (N'9854', N'2024-10-07')
GO


-- ----------------------------
-- Auto increment value for category
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[category]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table category
-- ----------------------------
ALTER TABLE [dbo].[category] ADD CONSTRAINT [PK__category__D54EE9B4127BE3FB] PRIMARY KEY CLUSTERED ([category_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for media
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[media]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table media
-- ----------------------------
ALTER TABLE [dbo].[media] ADD CONSTRAINT [PK__media__D0A840F4823B943B] PRIMARY KEY CLUSTERED ([media_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for message
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[message]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table message
-- ----------------------------
ALTER TABLE [dbo].[message] ADD CONSTRAINT [PK__message__0BBF6EE649B7932A] PRIMARY KEY CLUSTERED ([message_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for qa_store
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[qa_store]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table qa_store
-- ----------------------------
ALTER TABLE [dbo].[qa_store] ADD CONSTRAINT [PK__qa_store__2EC21549CEAB65C1] PRIMARY KEY CLUSTERED ([question_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for thread
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[thread]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table thread
-- ----------------------------
ALTER TABLE [dbo].[thread] ADD CONSTRAINT [PK__conversa__311E7E9A653204AA] PRIMARY KEY CLUSTERED ([thread_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table user
-- ----------------------------
ALTER TABLE [dbo].[user] ADD CONSTRAINT [PK__user__B9BE370F3CE83543] PRIMARY KEY CLUSTERED ([user_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table user_role
-- ----------------------------
ALTER TABLE [dbo].[user_role] ADD CONSTRAINT [PK__user_rol__760965CCB69C8BDD] PRIMARY KEY CLUSTERED ([role_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table message
-- ----------------------------
ALTER TABLE [dbo].[message] ADD CONSTRAINT [FK_media_id] FOREIGN KEY ([media_id]) REFERENCES [dbo].[media] ([media_id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[message] ADD CONSTRAINT [FK_thread_id] FOREIGN KEY ([thread_id]) REFERENCES [dbo].[thread] ([thread_id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[message] ADD CONSTRAINT [FK_created_id] FOREIGN KEY ([created_id]) REFERENCES [dbo].[user] ([user_id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

