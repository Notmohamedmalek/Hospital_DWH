USE [Case_hospital]
GO

/****** Object:  Table [dbo].[DimTime]    Script Date: 12-Oct-23 9:49:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimTime](
	[TimeSK] [int] IDENTITY(1,1) NOT NULL,
	[Time] [char](8) NOT NULL,
	[Hour] [char](2) NOT NULL,
	[MilitaryHour] [char](2) NOT NULL,
	[Minute] [char](2) NOT NULL,
	[Second] [char](2) NOT NULL,
	[AmPm] [char](2) NOT NULL,
	[StandardTime] [char](11) NULL,
 CONSTRAINT [PK_DimTime] PRIMARY KEY CLUSTERED 
(
	[TimeSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


