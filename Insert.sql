--Insert Studenti
INSERT INTO Studenti (Nome, Cognome, Email, Telefono, CodiceFiscale)
VALUES
('Mario', 'Rossi', 'mario2.rossi@libero.it', '+393874665', 'HFJFNVJIEIWJSFB'),
('Luca', 'Bianchi', 'luca.bianchi@libero.it', '+393874659', 'LCABNC01A01H501'),
('Giulia', 'Verdi', 'giulia.verdi@gmail.com', '+393874660', 'GLIVRD02B12F205'),
('Anna', 'Ferrari', 'anna.ferrari@yahoo.it', '+393874661', 'NNAFRR03C23L219'),
('Marco', 'Romano', 'marco.romano@outlook.it', '+393874662', 'MRCRMN04D14G273'),
('Sara', 'Gallo', 'sara.gallo@icloud.com', '+393874663', 'SRAGLL05E55C351'),
('Davide', 'Conti', 'davide.conti@virgilio.it', '+393874664', 'DVDCNT06F66D612'),
('Mario','Rossi','mario.rossi@libero.it','+393823493834','RSIMRT45E33T494K');
Select * from Studenti

INSERT INTO Studenti (Nome, Cognome, DataNascita, Email, Telefono, CodiceFiscale)
VALUES
('Mario','Rossi','2000-01-10','mario.rossi1@email.com','300000001','RSSMRA00A10H501A'),
('Luca','Bianchi','1999-03-15','luca.bianchi2@email.com','300000002','BNCLCU99C15F205B'),
('Anna','Verdi','2001-07-20','anna.verdi3@email.com','300000003','VRDANN01L20H501C'),
('Marco','Neri','1998-11-05','marco.neri4@email.com','300000004','NRIMRC98S05F205D'),
('Sara','Blu','2002-02-28','sara.blu5@email.com','300000005','BLUSRA02B28H501E'),
('Paolo','Gialli',NULL,'paolo.gialli6@email.com','300000006','GLLPLA90A01H501F'),
('Giulia','Rosa','2000-06-12','giulia.rosa7@email.com','300000007','RSOGLI00H12F205G'),
('Davide','Conti','1997-09-09','davide.conti8@email.com','300000008','CNTDVD97P09H501H'),
('Elena','Ferrari','2001-04-18','elena.ferrari9@email.com','300000009','FRRLNE01D18F205I'),
('Simone','Greco','1999-12-30','simone.greco10@email.com','300000010','GRCSMN99T30H501J'),

('Alessia','Romano','2002-08-14','alessia.romano11@email.com','300000011','RMNLSS02M14F205K'),
('Matteo','Colombo','2000-10-01','matteo.colombo12@email.com','300000012','CLMMTT00R01H501L'),
('Francesca','Ricci','1998-01-22','francesca.ricci13@email.com','300000013','RCCFNC98A22F205M'),
('Andrea','Marino','2001-05-05','andrea.marino14@email.com','300000014','MRNNDR01E05H501N'),
('Chiara','Lombardi','1999-07-17','chiara.lombardi15@email.com','300000015','LMBCHR99L17F205O'),
('Stefano','Moretti',NULL,'stefano.moretti16@email.com','300000016','MRTSFN90A01H501P'),
('Valentina','Barbieri','2000-03-03','valentina.barbieri17@email.com','300000017','BRBVLT00C03F205Q'),
('Giorgio','Fontana','1997-06-25','giorgio.fontana18@email.com','300000018','FNTGRG97H25H501R'),
('Martina','Santoro','2002-09-11','martina.santoro19@email.com','300000019','SNTMRT02P11F205S'),
('Alberto','Rinaldi','1998-02-07','alberto.rinaldi20@email.com','300000020','RNLALB98B07H501T'),

('Federica','Caruso','2001-11-19','federica.caruso21@email.com','300000021','CRSFDR01S19F205U'),
('Daniele','Leone','1999-04-23','daniele.leone22@email.com','300000022','LNEDNL99D23H501V'),
('Silvia','Serra','2000-12-12','silvia.serra23@email.com','300000023','SRRSLV00T12F205W'),
('Roberto','Testa','1997-08-30','roberto.testa24@email.com','300000024','TSTRRT97M30H501X'),
('Laura','De Luca','2002-01-09','laura.deluca25@email.com','300000025','DLCLRA02A09F205Y'),
('Antonio','Pellegrini','1998-05-16','antonio.pellegrini26@email.com','300000026','PLLNTN98E16H501Z'),
('Claudia','Fiore','2001-06-06','claudia.fiore27@email.com','300000027','FIOCLD01H06F205A'),
('Fabio','Costa',NULL,'fabio.costa28@email.com','300000028','CSTFBA90A01H501B'),
('Irene','Gatti','2000-09-27','irene.gatti29@email.com','300000029','GTTIRN00P27F205C'),
('Emanuele','Villa','1999-10-10','emanuele.villa30@email.com','300000030','VLLMNL99R10H501D');

-- Insert Corsi
INSERT INTO Corsi (NomeCorso, DescrizioneCorso, Crediti, Durata)
VALUES
('SQL Base','Introduzione ai database e SQL',6,40),
('SQL Avanzato','Query complesse e ottimizzazione',8,60),
('C# Base','Fondamenti di programmazione C#',8,50),
('C# Avanzato','OOP e sviluppo applicazioni',10,70),
('Python Base','Introduzione a Python',6,40),
('Python Data Analysis','Analisi dati con Python',9,60),
('Java Base','Fondamenti di Java',7,45),
('Java Spring','Sviluppo backend con Spring',10,80),
('Web HTML CSS','Creazione pagine web statiche',5,30),
('JavaScript Base','Programmazione lato client',6,40),

('JavaScript Avanzato','Framework e async programming',9,65),
('React','Sviluppo frontend moderno',10,70),
('Angular','Framework Angular completo',10,75),
('Database Design','Progettazione database relazionali',8,50),
('SQL Server','Gestione database Microsoft',9,60),
('MySQL','Database open source',7,45),
('PostgreSQL','Database avanzato open source',8,55),
('Cybersecurity Base','Fondamenti sicurezza informatica',6,40),
('Cybersecurity Avanzato','Tecniche di difesa avanzate',10,80),
('Networking','Reti informatiche base',7,50),

('Cloud Computing','Introduzione al cloud',8,60),
('Azure','Servizi cloud Microsoft Azure',9,65),
('AWS','Servizi cloud Amazon',9,65),
('Docker','Containerizzazione applicazioni',8,55),
('Kubernetes','Orchestrazione container',10,75),
('Machine Learning','Introduzione ML',10,70),
('Intelligenza Artificiale','AI e modelli avanzati',10,80),
('Data Science','Analisi e visualizzazione dati',9,65),
('Git e Versioning','Controllo versione',5,30),
('DevOps','Integrazione e deployment continuo',10,75);

SELECT * FROM Corsi;

-- INSERT DOCENTI
INSERT INTO Docenti (Nome, Cognome, Email, Specializzazione)
VALUES
('Lorenzo','Riva','doc1@email.com','Database'),
('Giovanni','Testa','doc2@email.com','Programmazione'),
('Marco','Sala','doc3@email.com','Cybersecurity'),
('Andrea','Villa','doc4@email.com','Cloud'),
('Stefano','Gallo','doc5@email.com','Networking'),
('Paolo','Ferrari','doc6@email.com','Java'),
('Davide','Greco','doc7@email.com','Python'),
('Luca','Conti','doc8@email.com','C#'),
('Alessandro','Marini','doc9@email.com','Web'),
('Simone','Barbieri','doc10@email.com','AI'),

('Matteo','Fontana','doc11@email.com','Data Science'),
('Fabio','Rossi','doc12@email.com','DevOps'),
('Antonio','Ricci','doc13@email.com','SQL'),
('Emanuele','Serra','doc14@email.com','Backend'),
('Giorgio','Leone','doc15@email.com','Frontend'),
('Claudio','Moretti','doc16@email.com','Docker'),
('Daniele','Colombo','doc17@email.com','Kubernetes'),
('Franco','Costa','doc18@email.com','Azure'),
('Roberto','De Luca','doc19@email.com','AWS'),
('Michele','Romano','doc20@email.com','Machine Learning'),

('Enrico','Gatti','doc21@email.com','AI'),
('Riccardo','Caruso','doc22@email.com','Python'),
('Christian','Fiore','doc23@email.com','JavaScript'),
('Tommaso','Bianchi','doc24@email.com','React'),
('Nicola','Pellegrini','doc25@email.com','Angular'),
('Alberto','Villa','doc26@email.com','C++'),
('Federico','Lombardi','doc27@email.com','Sicurezza'),
('Gabriele','Testa','doc28@email.com','Reti'),
('Salvatore','Greco','doc29@email.com','Cloud'),
('Vincenzo','Russo','doc30@email.com','Database');

-- INSERT AULE
INSERT INTO Aule (NomeAula, Capacita)
VALUES
('Aula 1',30),('Aula 2',25),('Aula 3',20),('Aula 4',35),('Aula 5',40),
('Lab 1',20),('Lab 2',20),('Lab 3',15),('Lab 4',25),('Lab 5',30),
('Aula Magna',100),('Aula 6',30),('Aula 7',25),('Aula 8',20),('Aula 9',35),
('Aula 10',40),('Lab 6',20),('Lab 7',20),('Lab 8',15),('Lab 9',25),
('Lab 10',30),('Aula 11',30),('Aula 12',25),('Aula 13',20),('Aula 14',35),
('Aula 15',40),('Aula 16',30),('Aula 17',25),('Aula 18',20),('Aula 19',35);


SELECT * FROM Iscrizioni;
SELECT * FROM Studenti
SELECT * FROM Corsi
--INSERT ISCRIZIONI
INSERT INTO Iscrizioni (StudenteID, CorsoID, DataIscrizione)
VALUES
--(1,1,'2024-01-10'),(2,2,'2024-01-11'),(3,3,'2024-01-12'),
--(4,4,'2024-01-13'),
(7,7,'2024-01-16'),
(8,8,'2024-01-17'),
(9,9,'2024-01-18'),
(10,10,'2024-01-19'),

(11,11,'2024-01-20'),(12,12,'2024-01-21'),(13,13,'2024-01-22'),
(14,14,'2024-01-23'),(15,15,'2024-01-24'),(16,16,'2024-01-25'),
(17,17,'2024-01-26'),(18,18,'2024-01-27'),(19,19,'2024-01-28'),
(20,20,'2024-01-29'),

(21,21,'2024-01-30'),(22,22,'2024-01-31'),(23,23,'2024-02-01'),
(24,24,'2024-02-02'),(25,25,'2024-02-03'),(26,26,'2024-02-04'),
(27,27,'2024-02-05'),(28,28,'2024-02-06'),(29,29,'2024-02-07'),
(30,30,'2024-02-08');


--INSERT DOCENTI-CORSO
INSERT INTO DocentiCorso (DocenteID, CorsoID)
VALUES
(1,1),(2,2),(3,3),(4,4),(5,5),
(6,6),(7,7),(8,8),(9,9),(10,10),

(11,11),(12,12),(13,13),(14,14),(15,15),
(16,16),(17,17),(18,18),(19,19),(20,20),

(21,21),(22,22),(23,23),(24,24),(25,25),
(26,26),(27,27),(28,28),(29,29),(30,30);

select * from DocentiCorso;

-- INSERT LEZIONI
INSERT INTO Lezioni (CorsoID, AulaID, DataLezione, OraInizio, OraFine)
VALUES
(1,1,'2024-03-01','09:00','11:00'),
(2,2,'2024-03-01','11:00','13:00'),
(3,3,'2024-03-02','09:00','11:00'),
(4,4,'2024-03-02','11:00','13:00'),
(5,5,'2024-03-03','09:00','11:00'),
(6,6,'2024-03-03','11:00','13:00'),

(11,11,'2024-03-06','09:00','11:00'),
(12,12,'2024-03-06','11:00','13:00'),
(13,13,'2024-03-07','09:00','11:00'),
(14,14,'2024-03-07','11:00','13:00'),
(15,15,'2024-03-08','09:00','11:00'),
(16,16,'2024-03-08','11:00','13:00'),
(17,17,'2024-03-09','09:00','11:00'),
(18,18,'2024-03-09','11:00','13:00'),
(19,19,'2024-03-10','09:00','11:00'),
(20,20,'2024-03-10','11:00','13:00'),

(21,21,'2024-03-11','09:00','11:00'),
(22,22,'2024-03-11','11:00','13:00'),
(23,23,'2024-03-12','09:00','11:00'),
(24,24,'2024-03-12','11:00','13:00'),
(25,25,'2024-03-13','09:00','11:00'),
(26,26,'2024-03-13','11:00','13:00'),
(27,27,'2024-03-14','09:00','11:00'),
(28,28,'2024-03-14','11:00','13:00'),
(29,29,'2024-03-15','09:00','11:00'),
(30,30,'2024-03-15','11:00','13:00');

