USE [Case_hospital]
GO

/****** Object:  Table [dbo].[FactBillings]    Script Date: 12-Oct-23 9:49:55 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactBillings](
	[Service_SK] [int] NULL,
	[patient_id_SK] [int] NULL,
	[Episode_Key_SK] [int] NULL,
	[DateSK] [int] NULL,
	[Cash_Amount] [float] NULL,
	[Credit_Amount] [float] NULL,
	[Total_Amount] [float] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FactBillings]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Bill_Items_DimEpisodes] FOREIGN KEY([Episode_Key_SK])
REFERENCES [dbo].[DimEpisodes] ([Episode_Key_SK])
GO

ALTER TABLE [dbo].[FactBillings] CHECK CONSTRAINT [FK_Fact_Bill_Items_DimEpisodes]
GO

ALTER TABLE [dbo].[FactBillings]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Bill_Items_DimPatient] FOREIGN KEY([patient_id_SK])
REFERENCES [dbo].[DimPatients] ([patient_id_SK])
GO

ALTER TABLE [dbo].[FactBillings] CHECK CONSTRAINT [FK_Fact_Bill_Items_DimPatient]
GO

ALTER TABLE [dbo].[FactBillings]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Bill_Items_DimService] FOREIGN KEY([Service_SK])
REFERENCES [dbo].[DimServices] ([Service_SK])
GO

ALTER TABLE [dbo].[FactBillings] CHECK CONSTRAINT [FK_Fact_Bill_Items_DimService]
GO

ALTER TABLE [dbo].[FactBillings]  WITH CHECK ADD  CONSTRAINT [FK_FactBillings_DimDate] FOREIGN KEY([DateSK])
REFERENCES [dbo].[DimDate] ([DateSK])
GO

ALTER TABLE [dbo].[FactBillings] CHECK CONSTRAINT [FK_FactBillings_DimDate]
GO


