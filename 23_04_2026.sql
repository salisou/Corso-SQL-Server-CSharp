/*
	INNER JOIN O JOIN (BASE FONDAMENTALE)
		Mostra solo i dati collegati

		Come funziona la join?
			prende solo i deti che combinano entrambi le tabelle
	->1 select
	->2	 colonne da visualizzare 
	->3 from tabella1
	->4 inner join tabella2 on condizione di relazioni(id);
*/

SELECT * FROM Aule;
SELECT * FROM Corsi;
SELECT * FROM Docenti;
SELECT * FROM DocentiCorso; -->Docenti e Corsi<--
SELECT * FROM Studenti;
SELECT * FROM Iscrizioni; -->Corsi e Studenti<--
SELECT * FROM Lezioni; -->Corsi e aule<--

-- restituire la lista delle aule con capacita <= 25 
-- Nome, capacità,orario delle lezioni
SELECT 
	a.NomeAula AS 'nome dell''laula',
	a.Capacita AS Capacità,
	l.OraInizio, 
	l.OraFine
FROM Aule AS a
INNER JOIN Lezioni AS l ON a.AulaId = l.AulaId
WHERE a.Capacita <= 25;

-- restituire la lista delle aule con capacita <= 25 
-- Nome, capacità,Nome del corso, Data e orari delle lezioni
-- Con il corso
SELECT 
	a.NomeAula AS 'nome dell''laula',
	a.Capacita AS Capacità,
	c.NomeCorso AS 'Nome del Corso',
	l.DataLezione AS 'Data',
	l.OraInizio, 
	l.OraFine
FROM Aule AS a
JOIN Lezioni AS l ON a.AulaId = l.AulaId
JOIN Corsi AS c On l.CorsoId = c.CorsoId
WHERE a.Capacita <= 25;



-- Converzioni(Format Convert) e Casting della data e ora  => 09:00:00.0000000 a (09:00 oppure 09:00:00)    
-- SQL Server ti mostra l'ora con i millisecondi(09:00:00.0000000) perché il tipo è TIME
/*
	SELECT 
		DataType
		
	FROM Tabella ()
	Where Tabella  = lezione
	And OraInizio
*/

SELECT 
	CONVERT(varchar(5), l.OraInizio, 108) as OraInizio
FROM Lezioni as l;

SELECT 
	LEFT(CONVERT(varchar, l.OraInizio, 108), 5) as OraInizio
FROM Lezioni as l;


SELECT 
	CAST(l.OraInizio as TIME(0)) as OraInizio
FROM Lezioni as l;

SELECT 
	CONVERT(NVARCHAR, GETDATE(), 120) AS Data
FROM Lezioni as l;


SELECT 
	a.NomeAula AS 'nome dell"aula',
	a.Capacita AS Capacità,
	c.NomeCorso AS 'Nome del Corso',
	l.DataLezione AS 'Data',
	LEFT(CONVERT(varchar, l.OraInizio, 108), 5) + ' - ' + LEFT(CONVERT(varchar, l.OraFine, 108), 5) as Orario
FROM Aule AS a
JOIN Lezioni AS l ON a.AulaId = l.AulaId
JOIN Corsi AS c On l.CorsoId = c.CorsoId
WHERE a.Capacita <= 25;


/*
	Visualizzare la lista degli studenti con i corsi a cui sono iscritti
		Tabelle da usare Studenti, Iscrizioni, Corsi
		Compi da visualizzare:
			Nome completo dello studente,
			corso
*/
SELECT 
	s.Nome + ' - ' + s.Cognome AS 'Nome completo dello studente',
	c.NomeCorso
FROM Studenti AS s	
INNER JOIN Iscrizioni AS i ON s.StudenteId = i.StudenteId
INNER JOIN Corsi AS c ON c.CorsoId = i.CorsoId;



SELECT * FROM Aule;
SELECT * FROM Corsi;
SELECT * FROM Docenti;
SELECT * FROM DocentiCorso; -->Docenti e Corsi<--
SELECT * FROM Studenti;
SELECT * FROM Iscrizioni; -->Corsi e Studenti<--
SELECT * FROM Lezioni; -->Corsi e aule<--



-- Esercizio 
-- Lista dei Degli studenti che sono scritti almeno ad un corso: 
-- Nome completo dello studente, CF,  Nome del corso
SELECT 
    s.Nome + ' ' + s.Cognome AS NomeCompleto,  -- unisce nome e cognome
    s.CodiceFiscale,                           -- CF dello studente
    c.NomeCorso                                -- nome del corso
FROM Studenti s

-- collega studenti alle iscrizioni
INNER JOIN Iscrizioni i 
    ON s.StudenteID = i.StudenteID

-- collega iscrizioni ai corsi
INNER JOIN Corsi c 
    ON i.CorsoID = c.CorsoId;

-- INNER JOIN = prende solo studenti che hanno almeno un corso

SELECT 
    s.Nome + ' ' + s.Cognome AS NomeCompleto,
    s.CodiceFiscale,
    c.NomeCorso,
    CONVERT(VARCHAR(10), i.DataIscrizione, 103) AS DataIscrizione
FROM Studenti s
JOIN Iscrizioni i ON s.StudenteID = i.StudenteID
JOIN Corsi c ON i.CorsoID = c.CorsoId;