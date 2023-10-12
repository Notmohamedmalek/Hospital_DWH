USE [Case_hospital]
GO

/****** Object:  Table [dbo].[DimEpisodes]    Script Date: 12-Oct-23 9:47:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimEpisodes](
	[Episode_Key_SK] [int] IDENTITY(1,1) NOT NULL,
	[Episode_Key_BK] [int] NOT NULL,
	[Start_Date] [datetime] NULL,
	[End_Date] [datetime] NULL,
	[Episode_Type_Key] [int] NULL,
	[Episode_Type] [nvarchar](255) NULL,
	[Bed_Key] [int] NULL,
	[Bed_Clinic] [nvarchar](255) NULL,
	[_ValidFrom] [datetime] NULL,
	[_ValidTo] [datetime] NULL,
 CONSTRAINT [PK_Episodes] PRIMARY KEY CLUSTERED 
(
	[Episode_Key_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


