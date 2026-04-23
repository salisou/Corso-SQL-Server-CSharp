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

