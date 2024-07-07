USE [DBCRUDE]
GO

/****** Object:  StoredProcedure [dbo].[sp_InsertarUsuario]    Script Date: 6/07/2024 8:48:41 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_InsertarUsuario](@Nombre varchar(100),@Fecha date,@Sexo varchar(1))
AS
BEGIN
	INSERT INTO usuario(Nombre,Fecha,Sexo) VALUES (@Nombre,@Fecha,@Sexo)
END
GO


