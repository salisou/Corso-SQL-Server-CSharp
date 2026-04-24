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
    StudentiID INT NOT NULL PRIMARY KEY IDENTITY(1,1),

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
CREATE TABLE Corso(

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



-- Inserimento di un nuovo studente
INSERT INTO Studenti (
    Nome,           -- Nome dello studente
    Cognome,        -- Cognome dello studente
    DataNascita,    -- Data di nascita
    Email,          -- Email (deve essere unica)
    Telefono,       -- Telefono (unico)
    CodiceFiscale   -- Codice fiscale (unico)
)
VALUES (
    'Mario',                    -- Nome
    'Rossi',                    -- Cognome
    '2000-05-10',               -- Data (formato YYYY-MM-DD)
    'mario.rossi@email.com',    -- Email
    '1234567890',               -- Telefono
    'RSSMRA00E10H501Z'          -- Codice fiscale
);

-- NOTA:
-- StudentiID NON viene inserito perché è automatico (IDENTITY)


-- Inserimento senza DataNascita (è NULL automaticamente)
INSERT INTO Studenti (
    Nome,
    Cognome,
    Email,
    Telefono,
    CodiceFiscale
)
VALUES (
    'Luca',
    'Bianchi',
    'luca@email.com',
    '333222111',
    'BNCLCU99A01F205X'
);

-- DataNascita verrà impostata a NULL automaticamente

-- Inserimento di più studenti in una sola query
INSERT INTO Studenti (
    Nome,
    Cognome,
    Email,
    Telefono,
    CodiceFiscale
)
VALUES
(
    'Anna',
    'Verdi',
    'anna@email.com',
    '111222333',
    'VRDANN90A01H501X'
),
(
    'Marco',
    'Neri',
    'marco@email.com',
    '444555666',
    'NRIMRC85B12F205Z'
);

-- Vantaggio:
-- Più veloce e usato in ambito professionale

-- Inserimento di un corso completo
INSERT INTO Corso 
    (NomeCorso,DescrizioneCorso,Crediti,Durata)
VALUES (
    'Database SQL',             -- Nome del corso
    'Corso base di SQL',        -- Descrizione
    6,                          -- Crediti
    40                          -- Durata (es. ore)
);

SELECT * FROM Studenti;
SELECT * FROM Corso;


-- Inserimento con solo il nome del corso
INSERT INTO Corso (
    NomeCorso
)
VALUES (
    'Programmazione C#'
);

-- Tutti gli altri campi saranno NULL


-- ERRORE: Email duplicata (violazione UNIQUE)
INSERT INTO Studenti 
    (Nome, Cognome, Email, Telefono, CodiceFiscale)
VALUES (
    'Mario',
    'Rossi',
    'mario.rossi@email.com', -- già esistente
    '999999999',
    'RSSMRA00E10H501Z'
);

-- ERRORE: campo obbligatorio mancante
INSERT INTO Studenti (Nome)
VALUES ('Anna');

-- Mancano Cognome, Email, Telefono, CodiceFiscale
-- → SQL restituisce errore


-- Seleziona TUTTE le colonne e TUTTE le righe della tabella Studenti
SELECT * 
FROM Studenti;

-- * = tutte le colonne
-- FROM = da quale tabella leggere

-- Seleziona solo Nome e Cognome
SELECT Nome, Cognome
FROM Studenti;

-- Utile per migliorare performance e leggibilità


-- Studenti con nome Mario
SELECT *
FROM Studenti
WHERE Nome = 'Mario';

-- WHERE = condizione
-- = confronto esatto




SELECT * FROM Studenti --Serve a visualizare il contenuto dalla tabella studenti dove l'id è uguale a 2
	WHERE StudentiID = 2;


SELECT Nome, Cognome, CodiceFiscale FROM Studenti --Serve a visualizare Nome Cognome e CodiceFiscale dalla tabella Studenti
	WHERE StudentiID = 2;


SELECT * FROM Corso;



select * from Studenti;

-- Studenti nati dopo il 2000
SELECT *
FROM Studenti
WHERE DataNascita > '2000-01-01';

-- > maggiore
-- < minore
-- >= maggiore o uguale
-- <= minore o uguale
-- <> diverso