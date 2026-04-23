USE ScuolaDb;


-- AND / OR

-- Studenti di Nome Mario E Cognome Rossi
SELECT *
FROM Studenti 

WHERE Nome = 'Mario' AND Cognome = 'Rossi';

SELECT * 
FROM Corso 
where NomeCorso = 'Programmazione C#' and DescrizioneCorso is null

/*
	Restituire la lista dei corsi dove la descrizione è diverso da null
	con la durata maggiore di 40 ore

	 AND / Or
	 > maggiore
	 < minore
	 >= maggiore o uguale
	 <= minore o uguale
	 != /  <> diverso
*/


-- AND entrambi le condizione sono vere  
SELECT TOP 5
	*
FROM Corso
WHERE DescrizioneCorso is not null AND Durata > 40;

--  Restituire la lista degli Studenti dove il nome  = Marco o Luca 
SELECT 
	*
From Studenti 
where Nome = 'Luca' OR Nome = 'Marco'
-- OR = Almeno una condizione vera



-- Order by (Dornida per) ASC / Desc
SELECT 
	*
From Studenti 
where Nome = 'Luca' OR Nome = 'Marco'
Order by StudentiID DESC

-- IN (1,2,3-... Più valori nella lista)  
SELECT 
	*
From Studenti 
where Nome IN ( 'Luca', 'Marco', 'Anna', 'Paolo', 'Laura', 'Davide', 'moussa')
Order by Nome 


-- BETWEEN = INVERVALLO INCLUSIVO
-- Lista degli studenti nati tra due anni
SELECT * 
FROM Studenti
where DataNascita BETWEEN '1999' AND '2002' 
Order by DataNascita


-- Concattenazione (+) / AS = Aliass
select 
	Nome + ' - ' + Cognome AS 'Nome completo degli Studenti'
from Studenti


select 
	StudentiId AS Matreicola,
	Nome + ' - ' + Cognome AS 'Nome completo degli Studenti',
	Email,
	CodiceFiscale AS 'Codice fiscale'
from Studenti
WHERE DataNascita IS NULL

-- Studenti --< Iscrizioni >-- Corso
-- Lezioni  --> Aule
-- Docenti  --< DocentiCorso >-- Corso

-- Tabella Decenti
CREATE TABLE Docenti(
	-- Id Docente (auto incrementale)
	DocenteId INT NOT NULL PRIMARY KEY IDENTITY(1,1),

	-- Nome e Cognome del docente obbligati Tipo String (Nvarchar)
	Nome NVARCHAR(50) NOT NULL,
	Cognome NVARCHAR(50) NOT NULL,

	--Email Unica del docente 
	Email NVARCHAR(150) UNIQUE NULL,

	-- Specializzazione (es. Database, programmazione, Scurezza)
	Specializzazione NVARCHAR(100)
);

SELECT * FROM Docenti;


-- Tabella Aule
CREATE TABLE Aule(
	-- id aula 
	AulaId INT NOT NULL PRIMARY KEY IDENTITY(1,1),

	--Nome aula (es. aula 1, Lab Informatica)
	NomeAula NVARCHAR(150) NOT NULL,

	-- Capacità massima
	Capacita INT NOT NULL
);

SELECT * FROM Aule;
SELECT * FROM Studenti;


-- Modifica della colonna StudentiID a StudenteId
-- EXEC sp_rename 'vecchia colonna con il nome della tabella', 'il nuovo nome della colonna'
EXEC sp_rename 'Studenti.StudentiID', 'StudenteId'; -- Modifica il solo la colonna

EXEC sp_rename 'Corso', 'Corsi'; -- Modifica del nome della tabella


-- Tabella Iscrizioni
CREATE TABLE Iscrizioni(
	-- Id Iscrizione
	IscrizioneId INT NOT NULL PRIMARY KEY IDENTITY(1,1),

	-- Collegamento allo studente
	StudenteId INT NOT NULL,

	-- Collegamento al corso
	CorsoId INT NOT NULL,
	
	-- Data Iscrizione
	DataIscrizione Date NOT NULL,

	-- Vincoli di relazioni (FOREIGN KEY)
	FOREIGN KEY (StudenteId) REFERENCES Studenti(StudenteId),
	--Moussa (3) -> Davide (3) 

	FOREIGN KEY (CorsoId) REFERENCES Corsi(CorsoId)
);


/*
	Significato 👆
		Uno studente Può iscriversi a più corsi
		Un corso può avere più studenti
	    💡 = relazione molti a molti 
*/

SELECT * FROM Iscrizioni;


-- Tablella Lezzioni
CREATE TABLE Lezioni(
	LezioneId INT NOT NULL PRIMARY KEY IDENTITY(1,1),

	CorsoId INT NOT NULL,
	AulaId INT NOT NULL,

	DataLezione Date NOT NULL,
	OraInizio TIME,
	OraFine TIME

	FOREIGN KEY (CorsoId) REFERENCES Corsi(CorsoId),
	FOREIGN KEY (AulaId)  REFERENCES Aule(AulaId)
);

SELECT * FROM Lezioni;

-- Tabella TocentiCorso
CREATE TABLE DocentiCorso(
	Id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	DocenteId INT NOT NULL,
	CorsoId INT NOT NULL,

	FOREIGN KEY (DocenteId) REFERENCES Docenti(DocenteId),
	FOREIGN KEY (CorsoId) REFERENCES Corsi(CorsoId)
);