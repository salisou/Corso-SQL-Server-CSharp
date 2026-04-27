-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE sp_GetStudenteByName
	-- Add the parameters for the stored procedure here
	@nome NVARCHAR(150)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
		StudenteId,
		Nome,
		Cognome,
		Telefono,
		Email,
		CodiceFiscale,
		ISNULL(DATEDIFF(YEAR, DataNascita, GETDATE()), 0) as Età
	FROM Studenti
	WHERE Nome = @nome
	ORDER BY StudenteId DESC
END
GO
