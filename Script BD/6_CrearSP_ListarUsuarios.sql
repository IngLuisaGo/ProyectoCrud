USE [DBCRUDE]
GO

/****** Object:  StoredProcedure [dbo].[sp_ListarUsuarios]    Script Date: 6/07/2024 8:49:33 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_ListarUsuarios]
AS
BEGIN
	SELECT * FROM usuario
END
GO


