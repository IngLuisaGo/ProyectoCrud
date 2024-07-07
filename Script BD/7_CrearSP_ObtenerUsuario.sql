USE [DBCRUDE]
GO

/****** Object:  StoredProcedure [dbo].[sp_ObtenerUsuarios]    Script Date: 6/07/2024 8:51:26 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_ObtenerUsuarios](@Id int)
AS
BEGIN
SELECT * FROM usuario where Id = @Id
END
GO


