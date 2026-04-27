use ScuolaDb;

/*
	Funzioni aggregate SQL
		SUM, AVG, COUNT, MIN e MAX permettono calcoli su gruppi di dati in SQL Server.

	Having: 
		SELECT  
			....
		FROM ....
		GROUP BY ...
		HAVING condizione

	JOIN / INNER JOIN
	LEFT JOIN -> mostra tutti i dati della tabella a sinistra e quelli corrispondenti della tabella a destra, se non ci sono corrispondenze mostra NULL
	REIGHT JOIN -> mostra tutti i dati della tabella a destra e quelli corrispondenti della tabella a sinistra, se non ci sono corrispondenze mostra NULL
	
	group by
	order by

	Alter Tabele
	Alter column

	Update e Delete

	RIASSUNTO:
		AGGREGATE → COUNT, SUM, AVG, MIN, MAX
		GROUP BY  → raggruppa
		HAVING    → filtra gruppi
		JOIN	  → collega tabelle
		ORDER BY  → ordina
		ALTER     → modifica struttura
		UPDATE    → modifica dati
		DELETE    → elimina dati
*/


-- COUNT()

-- COUNT CON JOIN
-- Contare gli studenti per coso(Left Join, GROUP by)
SELECT
	c.NomeCorso,
	COUNT(i.StudenteId) AS TotaleStudenti
FROM Corsi c       
LEFT JOIN Iscrizioni AS i ON i.CorsoId = c.CorsoId
GROUP BY c.NomeCorso
HAVING COUNT(i.StudenteId) >= 1
ORDER BY TotaleStudenti DESC, c.NomeCorso ASC

-- RIGHT JOIN 
-- Mostra tutti i dati della tabella a mdestra, anche senza corispondenza
/*
	SELECT (Colonne e righe)
	FROM (Tabella 1)
	RIGHT JOIN (Tablella 2)
		ON (Condizione)
*/
SELECT 
	s.Nome, 
	s.Cognome
FROM Studenti AS s
RIGHT JOIN Iscrizioni AS i
	ON s.StudenteId = i.StudenteId


-- Tutti i corsi senza studenti
SELECT * FROM Corsi;
SELECT * FROM Iscrizioni;
SELECT * FROM Studenti;


SELECT 
	s.Nome + ' - ' + s.Cognome AS 'Nome completo',
	YEAR(s.DataNascita) AS 'Data di nascita',
	c.NomeCorso AS 'Nome del corso',
	ISNULL(c.DescrizioneCorso, 'Descrizione non presente') AS Descrizone
FROM Corsi c
Join Iscrizioni i On c.CorsoId = i.CorsoId
join Studenti s On s.StudenteId = i.StudenteId;

/*
	ISNULL sostituisce nalori NULL nella tabella
	Es:
		ISNULL(valore, sostituzione)
*/

SELECT 
	s.Nome + ' - ' + s.Cognome AS 'Nome completo',
	--YEAR(s.DataNascita) AS 'Data di nascita',
	ISNULL(CONVERT(NVARCHAR, s.DataNascita, 103), 'N/D') AS DataNascita,
	c.NomeCorso AS 'Nome del corso',
	ISNULL(c.DescrizioneCorso, 'Descrizione non presente') AS Descrizone
FROM Corsi c
Join Iscrizioni i On c.CorsoId = i.CorsoId
join Studenti s On s.StudenteId = i.StudenteId;

SELECT 
	-- Nome completo
	s.Nome + ' - ' + s.Cognome AS 'Nome completo',

	-- Anno
	ISNULL(CONVERT(NVARCHAR, YEAR(s.DataNascita)), 'Manca l''anno') as Anno,

	-- Mese
	ISNULL(CONVERT(NVARCHAR, MONTH(s.DataNascita)), 'Manca il Mese') AS Mese,

	-- Giorno
	ISNULL(CONVERT(NVARCHAR, DAY(s.DataNascita)), 'Manca il Giorno')  AS Giorno

FROM Studenti s;


-- Colola l'età dello studente
SELECT 
	-- Nome completo
	s.Nome + ' - ' + s.Cognome AS 'Nome completo',

	-- Anno
	ISNULL(CONVERT(NVARCHAR, s.DataNascita, 103), 'yyy') as Anno,

	-- Età
 	--DATEDIFF(YEAR, s.DataNascita, GETDATE()) AS Età
	ISNULL(DATEDIFF(YEAR, s.DataNascita, GETDATE()), 0) as Età

FROM Studenti AS s

-- Formattazione
SELECT 
	FORMAT(DataLezione, 'dd/MM/yyyy') AS DataItaliana
FROM Lezioni


-- CHIAMARTA DELLA sp_GetALlStudenti
EXEC sp_GetAllStudenti;


-- Restituisce lo studente con l'id (0,1,2,3.....)
EXEC sp_GetStudenteById 2;


