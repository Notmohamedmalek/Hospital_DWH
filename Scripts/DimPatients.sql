USE [Case_hospital]
GO

/****** Object:  Table [dbo].[DimPatients]    Script Date: 12-Oct-23 9:48:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimPatients](
	[patient_id_SK] [int] IDENTITY(1,1) NOT NULL,
	[patient_id_BK] [int] NOT NULL,
	[Gov_Code] [int] NULL,
	[Governance] [nvarchar](255) NULL,
	[Gender_Key] [int] NULL,
	[gender] [nvarchar](255) NULL,
	[Nationality] [nvarchar](255) NULL,
	[Nationality_Code] [int] NULL,
	[Arabic_Name] [nvarchar](255) NULL,
	[English_Name] [nvarchar](255) NULL,
	[PatType] [int] NULL,
	[Patient_Type] [nvarchar](255) NULL,
	[FileID] [int] NULL,
	[mobile_phone] [int] NULL,
	[district_key] [int] NULL,
	[District_Name] [nvarchar](255) NULL,
	[pat_nrst_relv] [nvarchar](255) NULL,
	[pat_addr] [nvarchar](255) NULL,
	[_ValidFrom] [datetime] NULL,
	[_ValidTo] [datetime] NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[patient_id_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


