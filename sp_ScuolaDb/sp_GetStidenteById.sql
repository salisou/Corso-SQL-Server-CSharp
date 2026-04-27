-- =============================================
-- Author:		MOUSSA
-- Create date: 27/04/2026
-- Description: Restituisce lo studente con l'id apssato nel parametro
-- =============================================
CREATE PROCEDURE sp_GetStidenteById
	-- Add the parameters for the stored procedure here
	@studenteId INT
AS
BEGIN
    -- Insert statements for procedure here
	SELECT
       Nome + ' ' + Cognome AS 'Nome completo'
      ,ISNULL(CONVERT(NVARCHAR, DataNascita, 103), 'yyy') as DataNascita
      ,Email
      ,Telefono
       CodiceFiscale
    FROM Studenti
    WHERE StudenteId = @studenteId
END
GO
