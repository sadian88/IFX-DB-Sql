USE [IFXDataBase]
GO

/****** Object:  Table [dbo].[EmpleadosEntidades]    Script Date: 26/03/2021 08:25:19 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EmpleadosEntidades](
	[EmpleadoId] [int] NOT NULL,
	[EntidadId] [int] NOT NULL,
 CONSTRAINT [PK_EmpleadosEntidades] PRIMARY KEY CLUSTERED 
(
	[EmpleadoId] ASC,
	[EntidadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[EmpleadosEntidades]  WITH CHECK ADD  CONSTRAINT [FK_EmpleadosEntidades_Empleado_EmpleadoId] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleado] ([Id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[EmpleadosEntidades] CHECK CONSTRAINT [FK_EmpleadosEntidades_Empleado_EmpleadoId]
GO

ALTER TABLE [dbo].[EmpleadosEntidades]  WITH CHECK ADD  CONSTRAINT [FK_EmpleadosEntidades_Entidad_EntidadId] FOREIGN KEY([EntidadId])
REFERENCES [dbo].[Entidad] ([Id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[EmpleadosEntidades] CHECK CONSTRAINT [FK_EmpleadosEntidades_Entidad_EntidadId]
GO


