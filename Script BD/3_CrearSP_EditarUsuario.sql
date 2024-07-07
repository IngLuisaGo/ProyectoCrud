USE [DBCRUDE]
GO

/****** Object:  StoredProcedure [dbo].[sp_EditarUsuario]    Script Date: 6/07/2024 8:46:44 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_EditarUsuario](@Id int,@Nombre varchar(100),@Fecha date,@Sexo varchar(1))
AS
BEGIN
	UPDATE usuario SET Nombre = @Nombre, Fecha = @Fecha, Sexo = @Sexo
	WHERE Id = @Id
END
GO


