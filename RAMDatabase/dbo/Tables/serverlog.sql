﻿CREATE TABLE [dbo].[serverlog] (
    [ServerLogID]   BIGINT          IDENTITY (1, 1) NOT NULL,
    [logdate]       NVARCHAR (50)   NULL,
    [logtime]       NVARCHAR (50)   NULL,
    [serverip]      NVARCHAR (50)   NULL,
    [csmethod]      NVARCHAR (50)   NULL,
    [csuristem]     NVARCHAR (4000) NULL,
    [f1]            NVARCHAR (50)   NULL,
    [f2]            NVARCHAR (50)   NULL,
    [f3]            NVARCHAR (50)   NULL,
    [f4]            NVARCHAR (50)   NULL,
    [f5]            NVARCHAR (50)   NULL,
    [f6]            NVARCHAR (50)   NULL,
    [f7]            NVARCHAR (50)   NULL,
    [f8]            NVARCHAR (50)   NULL,
    [f9]            NVARCHAR (50)   NULL,
    [f10]           NVARCHAR (50)   NULL,
    [f11]           NVARCHAR (50)   NULL,
    [f12]           NVARCHAR (50)   NULL,
    [f13]           NVARCHAR (50)   NULL,
    [f14]           NVARCHAR (50)   NULL,
    [f15]           NVARCHAR (50)   NULL,
    [csuriquery]    NVARCHAR (4000) NULL,
    [sport]         INT             NULL,
    [csusername]    NVARCHAR (4000) NULL,
    [cip]           NVARCHAR (50)   NULL,
    [cip_int]       AS              (((CONVERT([bigint],parsename([cip],(4)))*(16777216)+CONVERT([bigint],parsename([cip],(3)))*(65536))+CONVERT([bigint],parsename([cip],(2)))*(256))+CONVERT([bigint],parsename([cip],(1)))),
    [csuseragent]   NVARCHAR (4000) NULL,
    [csreferer]     NVARCHAR (4000) NULL,
    [scstatus]      INT             NULL,
    [scsubstatus]   INT             NULL,
    [scwin32status] INT             NULL,
    [timetaken]     INT             NULL,
    [changeddate]   DATETIME        NULL,
    [createdate]    DATETIME        CONSTRAINT [DF_serverlog_createdate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_serverlog] PRIMARY KEY CLUSTERED ([ServerLogID] ASC)
);

