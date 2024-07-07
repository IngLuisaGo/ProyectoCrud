USE [DBCRUDE]
GO

/****** Object:  StoredProcedure [dbo].[sp_EliminarUsuario]    Script Date: 6/07/2024 8:47:38 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_EliminarUsuario](@Id int)
AS
BEGIN
	DELETE FROM usuario WHERE Id = @Id
END
GO


