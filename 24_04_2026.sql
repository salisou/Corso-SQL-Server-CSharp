use ScuolaDb;
go

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
SELECT 
	COUNT(StudenteId) as 'Totale righe' 
FROM Studenti 


SELECT 
	COUNT(*) AS 'Totale righe' ,
	COUNT(DataNascita) AS TotaleStudentiConData
FROM Studenti 
WHERE DataNascita IS NOT NULL;

SELECT 
	COUNT(DataNascita) AS Totale
FROM Studenti
WHERE DataNascita IS NOT NULL;

SELECT 
    YEAR(DataNascita) AS Anno,
    COUNT(*) AS Totale
FROM Studenti
WHERE DataNascita IS NOT NULL
GROUP BY YEAR(DataNascita)
ORDER BY Anno;


select * from Studenti;
select * from Corsi;
select * from Studenti;
select * from Studenti;

-- SUM(SOMMA)
-- Sommare il totale dei crediti di tutti i corsi
SELECT 
	SUM(Crediti) AS 'totale dei crediti'
FROM Corsi;

-- AVG(MEDIA)
-- Media crediti dei corsi
SELECT 
	AVG(Crediti) AS 'Media dei crediti'
FROM Corsi;

--MIN/Max
SELECT 
	COUNT(*) AS 'totale Corsi',
	SUM(Crediti) AS 'totale dei crediti',
	AVG(Crediti) AS 'Media dei crediti',
	MIN(Crediti) AS 'Minimo dei crediti',
	MAX(Crediti) AS 'Massimo dei crediti'
FROM Corsi;


-- INNER JOIN / JOIN
-- Studenti con corsi
SELECT 
	s.Nome + ' - ' + s.Cognome AS 'Nome completo',
	c.NomeCorso AS 'Nome del Corso'
FROM Studenti AS s
INNER JOIN Iscrizioni i ON i.StudenteId = s.StudenteId
INNER JOIN Corsi c ON c.CorsoId = i.CorsoId


SELECT 
	s.Nome + ' - ' + s.Cognome AS 'Nome completo',
	c.NomeCorso AS 'Nome del Corso'
FROM Studenti AS s
JOIN Iscrizioni i ON i.StudenteId = s.StudenteId
JOIN Corsi c ON c.CorsoId = i.CorsoId



-- LEFT JOIN
-- Tutti gli studenti anche senza corso
SELECT
	s.Nome + ' - ' + s.Cognome AS 'Nome completo',
	c.NomeCorso AS 'Nome del Corso'
FROM Studenti s
LEFT JOIN Iscrizioni i ON i.StudenteId = s.StudenteId
LEFT JOIN Corsi c ON c.CorsoId = i.CorsoId
