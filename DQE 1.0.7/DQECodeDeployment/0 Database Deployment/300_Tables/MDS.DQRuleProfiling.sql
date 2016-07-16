USE [DataQualityDB]
GO

IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'DQRuleProfiling'
		 AND TABLE_SCHEMA = 'MDS' ) 

BEGIN 

CREATE TABLE [MDS].[DQRuleProfiling](
	[ID] [int] NULL,
	[MUID] [uniqueidentifier] NULL,
	[VersionName] [nvarchar](50) NULL,
	[VersionNumber] [int] NULL,
	[VersionFlag] [nvarchar](50) NULL,
	[Name] [nvarchar](250) NULL,
	[Code] [nvarchar](250) NULL,
	[ChangeTrackingMask] [int] NULL,
	[EnterDateTime] [datetime2](3) NULL,
	[EnterUserName] [nvarchar](100) NULL,
	[EnterVersionNumber] [int] NULL,
	[LastChgDateTime] [datetime2](3) NULL,
	[LastChgUserName] [nvarchar](100) NULL,
	[LastChgVersionNumber] [int] NULL,
	[ValidationStatus] [nvarchar](250) NULL,
	[IsActive_Code] [nvarchar](250) NULL,
	[IsActive_Name] [nvarchar](250) NULL,
	[IsActive_ID] [int] NULL,
	[Ruleset_Code] [nvarchar](250) NULL,
	[Ruleset_Name] [nvarchar](250) NULL,
	[Ruleset_ID] [int] NULL,
	[ProfileType_Code] [nvarchar](250) NULL,
	[ProfileType_Name] [nvarchar](250) NULL,
	[ProfileType_ID] [int] NULL,
	[DataType] [nvarchar](255) NULL,
	[Length] [numeric](38, 0) NULL,
	[Scale] [numeric](38, 0) NULL,
	[Precision] [numeric](38, 0) NULL,
	[IsNullable_Code] [nvarchar](250) NULL,
	[IsNullable_Name] [nvarchar](250) NULL,
	[IsNullable_ID] [int] NULL,
	[Severity_Code] [nvarchar](250) NULL,
	[Severity_Name] [nvarchar](250) NULL,
	[Severity_ID] [int] NULL,
	[Threshold] [numeric](38, 4) NULL
) ON [PRIMARY]

END

GO