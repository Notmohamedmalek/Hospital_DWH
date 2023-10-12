USE [Case_hospital]
GO

/****** Object:  Table [dbo].[DimServices]    Script Date: 12-Oct-23 9:48:45 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimServices](
	[Service_SK] [int] IDENTITY(1,1) NOT NULL,
	[Category_Key_BK] [int] NOT NULL,
	[Category_Name] [nvarchar](255) NULL,
	[Service_Key_BK] [int] NOT NULL,
	[Service_Name] [nvarchar](255) NULL,
	[_ValidFrom] [datetime] NULL,
	[_ValidTo] [datetime] NULL,
 CONSTRAINT [PK_Service_1] PRIMARY KEY CLUSTERED 
(
	[Service_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


