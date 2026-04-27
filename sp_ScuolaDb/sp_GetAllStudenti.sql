USE [ScuolaDb]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllStudenti]    Script Date: 27/04/2026 11:55:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		MOUSSA
-- Create date: 27/04/2026
-- Description:	Questa S.P Restituisce la lista deli studenti 
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetAllStudenti]
	
AS
BEGIN
    -- Insert statements for procedure here
	SELECT
        StudenteId,
        Nome + ' - ' + Cognome AS 'Nome completo',
        ISNULL(CONVERT(NVARCHAR, DataNascita, 103), 'N/D') AS DataNascita,
        Email,
        Telefono,
        CodiceFiscale
	FROM Studenti
    ORDER BY Nome ASC;
END
