CREATE DATABASE ScuolaDb;
GO

-- Uso del Database
USE ScuolaDb;
GO

-- Creazione tabella Studenti
CREATE TABLE Studenti(

    -- ID univoco dello studente
    -- INT = numero intero
    -- PRIMARY KEY = chiave primaria (identifica ogni riga)
    -- IDENTITY(1,1) = auto incremento (parte da 1 e aumenta di 1)
    StudenteId INT NOT NULL PRIMARY KEY IDENTITY(1,1),

    -- Nome dello studente
    -- NVARCHAR(50) = testo Unicode (supporta caratteri speciali)
    -- NOT NULL = campo obbligatorio
    Nome NVARCHAR(50) NOT NULL,

    -- Cognome dello studente
    Cognome NVARCHAR(50) NOT NULL,

    -- Data di nascita
    -- DATE = formato YYYY-MM-DD
    -- NULL = opzionale
    DataNascita DATE NULL,

    -- Email
    -- UNIQUE = non possono esistere duplicati
    -- NOT NULL = obbligatorio
    Email NVARCHAR(150) UNIQUE NOT NULL,

    -- Numero di telefono
    -- VARCHAR = testo normale (no Unicode)
    Telefono VARCHAR(50) UNIQUE NOT NULL,

    -- Codice Fiscale
    -- CHAR(16) = lunghezza fissa di 16 caratteri
    CodiceFiscale CHAR(16) UNIQUE NOT NULL
);

-- Creazione tabella Corso
CREATE TABLE Corsi(

    -- ID del corso (auto incrementale)
    CorsoId INT NOT NULL PRIMARY KEY IDENTITY(1,1),

    -- Nome del corso (opzionale perché non c'è NOT NULL)
    NomeCorso NVARCHAR(250),

    -- Descrizione del corso
    DescrizioneCorso NVARCHAR(250),

    -- Crediti formativi (es. CFU)
    Crediti INT,

    -- Durata del corso (es. ore o mesi)
    Durata INT
);

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

-- Tabella Aule
CREATE TABLE Aule(
	-- id aula 
	AulaId INT NOT NULL PRIMARY KEY IDENTITY(1,1),

	--Nome aula (es. aula 1, Lab Informatica)
	NomeAula NVARCHAR(150) NOT NULL,

	-- Capacità massima
	Capacita INT NOT NULL
);

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

-- Tabella TocentiCorso
CREATE TABLE DocentiCorso(
	Id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	DocenteId INT NOT NULL,
	CorsoId INT NOT NULL,

	FOREIGN KEY (DocenteId) REFERENCES Docenti(DocenteId),
	FOREIGN KEY (CorsoId) REFERENCES Corsi(CorsoId)
);