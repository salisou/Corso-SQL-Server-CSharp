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





select * from Studenti;

select 
	Nome
from Studenti;


select 
	Nome,
	Cognome
from Studenti;

select 
	Nome,
	Cognome,
	Email
from Studenti;

select 
	Nome,
	Cognome,
	Email,
	CodiceFiscale
from Studenti;

select 
	Nome,
	Cognome,
	Email,
	CodiceFiscale
from Studenti
ORDER BY Nome DESC

select 
	Nome,
	Cognome,
	Email,
	CodiceFiscale
from Studenti
ORDER BY Nome ASC


select 
	COUNT(*) AS 'Numero righe' -- PER CONTARE LE RIGHE E AS = Aliass
from Studenti;

select 
	 *
from Studenti
WHERE StudenteId = 2;


select 
	 *
from Studenti
WHERE StudenteId = 2 OR StudenteId = 20;

SELECT 
 * 
FROM Studenti
WHERE Nome = 'Mario' OR Nome = 'Luca' OR Nome = 'Rossi'
ORDER BY Nome asc

-- IN(1,2,3...) = PER LA LISTA
SELECT 
 * 
FROM Studenti
WHERE StudenteId IN (1,25,30,4,8,3,10,7)
ORDER BY StudenteId asc

select 
	 *
from Studenti
WHERE Nome = 'Mario' 


-- like '....%'
-- like '%...'
-- like '&....%'
select 
	 *
from Studenti
WHERE Nome like 'M%';

select 
	 *
from Studenti
WHERE Cognome like '%i'

select 
	 *
from Studenti
WHERE Nome like '%a'


select 
	 *
from Studenti
WHERE Nome like '%o%'


select 
	 *
from Corsi
WHERE NomeCorso like 'P%' AND DescrizioneCorso is null


select 
	 *
from Corsi
WHERE NomeCorso like 'P%' AND DescrizioneCorso is NOT null

select 
	 TOP 5 *
from Corsi
ORDER BY NomeCorso asc

-- gli operatori
-- somma +
SELECT 
	Crediti + 2 as creditiAumentati
FROM Corsi;

-- * / %
select 
	Crediti * 2 as Doppio,
	Crediti / 2 as Meta,
	Crediti % 2 as Resto
from Corsi;

-- CONCATENAZIONE (stringhe)
-- in SQL server i usa + 
select 
	Nome + ' - ' + Cognome AS 'Nome completo'
from Studenti;

select 
	*
from Studenti s
INNER JOIN Iscrizioni i
	ON i.StudenteId = s.StudenteId -- On Usa l'operatore di confronto =
where s.Nome like 'A%';

SELECT *
FROM Studenti
WHERE (Nome like 'M%' OR Nome like 'L%') 
	  AND DataNascita >= '2000' 
	  AND Email is not null
-- Alter table
/*
	ALTER TABLE NOME DELLA TABLLA
	ADD NOME DELLA COLONNA CON IL TIPO 
*/
ALTER TABLE Studenti
ADD Genere CHAR(1); -- M = Maschio, F = Femmina

SELECT * FROM Studenti;

-- ALTER COLUMN -> per modificare 
ALTER TABLE Studenti
ALTER COLUMN Nome NVARCHAR(100);


-- Eliminare la colonna Genere 
ALTER TABLE Studenti
DROP COLUMN Genere 

-- Update  Delete con nstore procedure