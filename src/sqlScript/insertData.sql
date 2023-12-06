use SchoolBook;
go

-- Professeurs pour les classes de Maternelle (M1 à M3)
INSERT INTO [Prof] ([IdProf], [Psw], [Nom], [idClasseIdClasse], [Email], [Img])
VALUES
('CA1234', 'M1A12345', 'Camille', 'M1A', 'camille@ecole.com', '/profs/cruella.jpg'),
('DA5678', 'M1b12345', 'David', 'M1B', 'david@ecole.com', '/profs/crochet.jpg'),
('EL1234', 'M2A12345', 'Elise', 'M2A', 'elise@ecole.com', '/profs/damedecoeur.jpg'),
('FL5678', 'M2b12345', 'Florian', 'M2B', 'florian@ecole.com', '/profs/facilier.jpg'),
('GI1234', 'M3A12345', 'Giselle', 'M3A', 'giselle@ecole.com', '/profs/malefique.jpg'),
('HU5678', 'M3b12345', 'Hugo', 'M3B', 'hugo@ecole.com', '/profs/febus.jpg');
-- Professeurs pour les classes de Primaire (P1 à P6)
INSERT INTO [Prof] ([IdProf], [Psw], [Nom], [idClasseIdClasse], [Email], [Img])
VALUES
('AL1234', 'P1A12345', 'Alexis', 'P1A', 'alexis@ecole.com', '/profs/jafar.jpg'),
('BE5678', 'P1B12345', 'Béatrice', 'P1B', 'beatrice@ecole.com', '/profs/meregothel.jpg'),
('CL1234', 'P2A12345', 'Clément', 'P2A', 'clement@ecole.com', '/profs/hades.jpg'),
('DE5678', 'P2B12345', 'Delphine', 'P2B', 'delphine@ecole.com', '/profs/mmemime.jpg'),
('EM1234', 'P3A12345', 'Emile', 'P3A', 'emile@ecole.com', '/profs/hans.jpg'),
('FA5678', 'P3B12345', 'Fanny', 'P3B', 'fanny@ecole.com', '/profs/ursula.jpg'),
('GA1234', 'P4A12345', 'Gaston', 'P4A', 'gaston@ecole.com', '/profs/gaston.jpg'),
('HE5678', 'P4B12345', 'Héléne', 'P4B', 'helene@ecole.com', '/profs/vieillereine.jpg'),
('IS1234', 'P5A12345', 'Isabelle', 'P5A', 'isabelle@ecole.com', '/profs/shanyu.jpg'),
('JU5678', 'P5B12345', 'Julien', 'P5B', 'julien@ecole.com', '/profs/ratcliffe.jpg'),
('KA1234', 'P6A12345', 'Karine', 'P6A', 'karine@ecole.com', '/profs/tamatoa.jpg'),
('LO5678', 'P6B12345', 'Louis', 'P6B', 'louis@ecole.com', '/profs/scar.jpg');
-- Directrice
INSERT INTO [Prof] ([IdProf], [Psw], [Nom], [idClasseIdClasse], [Email], [Img])
VALUES
('MA1234', 'DIR12345', 'Maratre', 'DIR', 'directrice@ecole.com', '/profs/maratre.jpg');
-- Secrétaire 1
INSERT INTO [Prof] ([IdProf], [Psw], [Nom], [idClasseIdClasse], [Email], [Img])
VALUES
('AN1234', 'SEC12345', 'Anastasie', 'SEC', 'secretaire1@ecole.com', '/profs/anastasie.jpg');
-- Secrétaire 2
INSERT INTO [Prof] ([IdProf], [Psw], [Nom], [idClasseIdClasse], [Email], [Img])
VALUES
('JA5678', 'SEC12346', 'Javotte', 'SEC', 'secretaire2@ecole.com', '/profs/javotte.jpg');


-- Classes de Maternelle (M1 à M3)
INSERT INTO [Classe] ([IdClasse], [NomClasse], [idProfIdProf], [Desc], [MiniDesc], [Img])
VALUES
('M1A', 'Maternelle 1A', 'CA1234', 'Apprentissage et jeu pour les plus petits.', 'Vive les jeux', '/ecole/Ecole.jpg'),
('M1B', 'Maternelle 1B', 'DA5678', 'Découverte et créativité pour les tout-petits.', 'Quelle créativité', '/ecole/Ecole.jpg'),
('M2A', 'Maternelle 2A', 'EL1234', 'Continuation de lapprentissage et de lexploration.', 'Les explorateurs font des explorations', '/ecole/Ecole.jpg'),
('M2B', 'Maternelle 2B', 'FL5678', 'Jeux et découvertes pour les enfants.', 'On découvre le monde', '/ecole/Ecole.jpg'),
('M3A', 'Maternelle 3A', 'GI1234', 'Préparation pour le primaire.', 'Bientét chez les grands', '/ecole/Ecole.jpg'),
('M3B', 'Maternelle 3B', 'HU5678', 'Derniére étape avant le primaire.', 'Bientét chez les grands', '/ecole/Ecole.jpg');
-- Classes de Primaire (P1 à P6)
INSERT INTO [Classe] ([IdClasse], [NomClasse], [idProfIdProf], [Desc], [MiniDesc], [Img])
VALUES
('P1A', 'Primaire 1A', 'AL1234', 'Premier pas vers le primaire.', 'Je suis un grand', '/ecole/Ecole.jpg'),
('P1B', 'Primaire 1B', 'BE5678', 'Apprentissage et découverte pour les premiers primaires.', 'Je suis un grand', '/ecole/Ecole.jpg'),
('P2A', 'Primaire 2A', 'CL1234', 'Deuxiéme année de primaire.', 'On lit beaucoup', '/ecole/Ecole.jpg'),
('P2B', 'Primaire 2B', 'DE5678', 'Continuation de lapprentissage au primaire.', 'On écrit beaucoup', '/ecole/Ecole.jpg'),
('P3A', 'Primaire 3A', 'EM1234', 'Troisiéme année de primaire.', 'Je suis é la moitié', '/ecole/Ecole.jpg'),
('P3B', 'Primaire 3B', 'FA5678', 'étapes vers le CM1.', 'Plus que la moitié é faire', '/ecole/Ecole.jpg'),
('P4A', 'Primaire 4A', 'GA1234', 'Quatriéme année de primaire.', 'Les examens vont étre durs', '/ecole/Ecole.jpg'),
('P4B', 'Primaire 4B', 'HE5678', 'En route pour un grand voyage.', 'Les examens vont étre durs', '/ecole/Ecole.jpg'),
('P5A', 'Primaire 5A', 'IS1234', 'Cinquiéme année de primaire.', 'Derniére ligne droite', '/ecole/Ecole.jpg'),
('P5B', 'Primaire 5B', 'JU5678', 'Préparation pour la sixiéme année.', 'Derniére ligne droite', '/ecole/Ecole.jpg'),
('P6A', 'Primaire 6A', 'KA1234', 'Derniére année de primaire avant le secondaire.', 'Je suis chez les trés grands', '/ecole/Ecole.jpg'),
('P6B', 'Primaire 6B', 'LO5678', 'Préparation pour le secondaire.', 'Je suis chez les trés grands', '/ecole/Ecole.jpg');
-- Direction
INSERT INTO [Classe] ([IdClasse], [NomClasse], [idProfIdProf], [Desc], [MiniDesc], [Img])
VALUES
('DIR', 'Direction', 'MA1234', 'Direction', 'Direction', '/ecole/ecolehaut.jpg'),
('SEC', 'Secrétaire', 'AN1234', 'Secrétaire', 'Secrétaire', '/ecole/ecolehaut.jpg'),
('SEC', 'Secrétaire', 'JA5678', 'Secrétaire', 'Secrétaire', '/ecole/ecolehaut.jpg');


-- Etudiants pour Maternelle 1A (M1a)
INSERT INTO [Student] ([IdStudent], [Psw1], [Psw2], [Nom], [Prenom], [idClasseIdClasse], [parentsSepares], [Email1], [Email2])
VALUES
('CA12345', 'M1A1234CA', 'M1A5679CA', 'Camille', 'André', 'M1A', 'False', 'parent1@ecole.com', NULL),
('LE12346', 'M1A7890CA', 'M1A2346CA', 'Léa', 'Emile', 'M1A', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('MA12347', 'M1A9123CA', 'M1A4567CA', 'Maxime', 'Antoine', 'M1A', 'False', 'parent4@ecole.com', NULL),
('AL12348', 'M1A3457CA', 'M1A6789CA', 'Alice', 'Louis', 'M1A', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('EV12349', 'M1A5689CA', 'M1A0134CA', 'Eva', 'Victor', 'M1A', 'False', 'parent7@ecole.com', NULL),
('LI12340', 'M1A7891CA', 'M1A2345CA', 'Liam', 'Isabelle', 'M1A', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('ZO12341', 'M1A0124CA', 'M1A3456CA', 'Zoé', 'Oliver', 'M1A', 'False', 'parent10@ecole.com', NULL),
('AN12342', 'M1A2346CA', 'M1A5678CA', 'Anna', 'Nathan', 'M1A', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EM12343', 'M1A4568CA', 'M1A7991CA', 'Emma', 'Mathis', 'M1A', 'False', 'parent13@ecole.com', NULL),
('TI12344', 'M1A5779CA', 'M1A0123CA', 'Tim', 'Inés', 'M1A', 'True', 'parent14@ecole.com', 'parent15@ecole.com');

-- Etudiants pour Maternelle 1B (M1b)
INSERT INTO [Student] ([IdStudent], [Psw1], [Psw2], [Nom], [Prenom], [idClasseIdClasse], [parentsSepares], [Email1], [Email2])
VALUES
('DA12345', 'M1B1234DA', 'M1B5689DA', 'David', 'Alice', 'M1B', 'False', 'parent16@ecole.com', NULL),
('LU12346', 'M1B7891DA', 'M1B2355DA', 'Lucas', 'Ursula', 'M1B', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('SI12347', 'M1B9123DA', 'M1B4567DA', 'Simon', 'Isabelle', 'M1B', 'False', 'parent19@ecole.com', NULL),
('EN12348', 'M1B3457DA', 'M1B6789DA', 'Emma', 'Noah', 'M1B', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('LI12349', 'M1B5639DA', 'M1B0224DA', 'Liam', 'Lina', 'M1B', 'False', 'parent22@ecole.com', NULL),
('EL12340', 'M1B7801DA', 'M1B2345DA', 'Ella', 'Léo', 'M1B', 'True', 'parent23@ecole.com', 'parent24@ecole.com'),
('AL12341', 'M1B0124DA', 'M1B3456DA', 'Alice', 'Léon', 'M1B', 'False', 'parent25@ecole.com', NULL),
('LO12342', 'M1B2346DA', 'M1B5678DA', 'Louis', 'Olivia', 'M1B', 'True', 'parent26@ecole.com', 'parent27@ecole.com'),
('MA12343', 'M1B4568DA', 'M1B7890DA', 'Mia', 'Alexis', 'M1B', 'False', 'parent28@ecole.com', NULL),
('ZI12344', 'M1B5679DA', 'M1B0123DA', 'Zoé', 'Isaac', 'M1B', 'True', 'parent29@ecole.com', 'parent30@ecole.com');

-- Etudiants pour Maternelle 2A (M2a)
INSERT INTO [Student] ([IdStudent], [Psw1], [Psw2], [Nom], [Prenom], [idClasseIdClasse], [parentsSepares], [Email1], [Email2])
VALUES
('EL12345', 'M2A1234EL', 'M2A5778EL', 'Elise', 'Lucas', 'M2A', 'False', 'parent31@ecole.com', NULL),
('AL12346', 'M2A7891EL', 'M2A2445EL', 'Alice', 'Léo', 'M2A', 'True', 'parent32@ecole.com', 'parent33@ecole.com'),
('LO12347', 'M2A9123EL', 'M2A4567EL', 'Louis', 'Olivia', 'M2A', 'False', 'parent34@ecole.com', NULL),
('MI12348', 'M2A2346EL', 'M2A6789EL', 'Mia', 'Isaac', 'M2A', 'True', 'parent35@ecole.com', 'parent36@ecole.com'),
('JA12349', 'M2A4568EL', 'M2A1123EL', 'Jade', 'Aaron', 'M2A', 'False', 'parent37@ecole.com', NULL),
('OL12340', 'M2A7890EL', 'M2A2345EL', 'Olivia', 'Léon', 'M2A', 'True', 'parent38@ecole.com', 'parent39@ecole.com'),
('LU12341', 'M2A0133EL', 'M2A3556EL', 'Lucas', 'Lina', 'M2A', 'False', 'parent40@ecole.com', NULL),
('AM12342', 'M2A2355EL', 'M2A5678EL', 'Amélie', 'Mathis', 'M2A', 'True', 'parent41@ecole.com', 'parent42@ecole.com'),
('EL12343', 'M2A4667EL', 'M2A0123EL', 'Eloése', 'Lucie', 'M2A', 'False', 'parent43@ecole.com', NULL),
('TH12344', 'M2A5679EL', 'M2A3456EL', 'Théo', 'Léa', 'M2A', 'True', 'parent44@ecole.com', 'parent45@ecole.com');

-- Etudiants pour Maternelle 2B (M2b)
INSERT INTO [Student] ([IdStudent], [Psw1], [Psw2], [Nom], [Prenom], [idClasseIdClasse], [parentsSepares], [Email1], [Email2])
VALUES
('FL12345', 'M2B1234FL', 'M2B6678FL', 'Florian', 'Léa', 'M2B', 'False', 'parent46@ecole.com', NULL),
('MI12346', 'M2B7880FL', 'M2B3446FL', 'Mia', 'Isabelle', 'M2B', 'True', 'parent47@ecole.com', 'parent48@ecole.com'),
('OL12347', 'M2B9123FL', 'M2B4567FL', 'Olivia', 'Léo', 'M2B', 'False', 'parent49@ecole.com', NULL),
('LU12348', 'M2B2445FL', 'M2B6789FL', 'Lucas', 'Lina', 'M2B', 'True', 'parent50@ecole.com', 'parent51@ecole.com'),
('AN12349', 'M2B4577FL', 'M2B6123FL', 'Anna', 'Noah', 'M2B', 'False', 'parent52@ecole.com', NULL),
('LO12340', 'M2B7890FL', 'M2B2345FL', 'Louis', 'Oliver', 'M2B', 'True', 'parent53@ecole.com', 'parent54@ecole.com'),
('LE12341', 'M2B1123FL', 'M2B3458FL', 'Léo', 'Elisabeth', 'M2B', 'False', 'parent55@ecole.com', NULL),
('SI12342', 'M2B3445FL', 'M2B5678FL', 'Simon', 'Isabella', 'M2B', 'True', 'parent56@ecole.com', 'parent57@ecole.com'),
('EN12343', 'M2B4587FL', 'M2B0123FL', 'Emma', 'Nathan', 'M2B', 'False', 'parent58@ecole.com', NULL),
('LI12344', 'M2B5778FL', 'M2B3456FL', 'Liam', 'Lina', 'M2B', 'True', 'parent59@ecole.com', 'parent60@ecole.com');

-- Etudiants pour Maternelle 3A (M3a)
INSERT INTO [Student] ([IdStudent], [Psw1], [Psw2], [Nom], [Prenom], [idClasseIdClasse], [parentsSepares], [Email1], [Email2])
VALUES
('EL12345', 'M3A1234GI', 'M3A5698GI', 'Elise', 'Lucas', 'M3A', 'False', 'parent1@ecole.com', NULL),
('AL12346', 'M3A7990GI', 'M3A9345GI', 'Alice', 'Léo', 'M3A', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('LO12347', 'M3A9123GI', 'M3A4567GI', 'Louis', 'Olivia', 'M3A', 'False', 'parent4@ecole.com', NULL),
('MI12348', 'M3A2445GI', 'M3A6789GI', 'Mia', 'Isaac', 'M3A', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('JA12349', 'M3A5567GI', 'M3A8123GI', 'Jade', 'Aaron', 'M3A', 'False', 'parent7@ecole.com', NULL),
('OL12340', 'M3A7890GI', 'M3A2345GI', 'Olivia', 'Léon', 'M3A', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('LU12341', 'M3A9823GI', 'M3A6456GI', 'Lucas', 'Lina', 'M3A', 'False', 'parent10@ecole.com', NULL),
('AM12342', 'M3A2355GI', 'M3A5678GI', 'Amélie', 'Mathis', 'M3A', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EL12343', 'M3A4667GI', 'M3A0123GI', 'Eloése', 'Lucie', 'M3A', 'False', 'parent13@ecole.com', NULL),
('TH12344', 'M3A6678GI', 'M3A3456GI', 'Théo', 'Léa', 'M3A', 'True', 'parent14@ecole.com', 'parent15@ecole.com');

-- Etudiants pour Maternelle 3B (M3b)
INSERT INTO [Student] ([IdStudent], [Psw1], [Psw2], [Nom], [Prenom], [idClasseIdClasse], [parentsSepares], [Email1], [Email2])
VALUES
('FL12345', 'M3B1234HU', 'M3B5778HU', 'Florian', 'Léa', 'M3B', 'False', 'parent16@ecole.com', NULL),
('MI12346', 'M3B7990HU', 'M3B2695HU', 'Mia', 'Isabelle', 'M3B', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('OL12347', 'M3B9123HU', 'M3B4567HU', 'Olivia', 'Léo', 'M3B', 'False', 'parent19@ecole.com', NULL),
('LU12348', 'M3B3345HU', 'M3B6789HU', 'Lucas', 'Lina', 'M3B', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('AN12349', 'M3B4657HU', 'M3B8123HU', 'Anna', 'Noah', 'M3B', 'False', 'parent22@ecole.com', NULL),
('LO12340', 'M3B7890HU', 'M3B2345HU', 'Louis', 'Oliver', 'M3B', 'True', 'parent23@ecole.com', 'parent24@ecole.com'),
('LE12341', 'M3B1023HU', 'M3B3856HU', 'Léo', 'Elisabeth', 'M3B', 'False', 'parent25@ecole.com', NULL),
('SI12342', 'M3B2745HU', 'M3B5678HU', 'Simon', 'Isabella', 'M3B', 'True', 'parent26@ecole.com', 'parent27@ecole.com'),
('EN12343', 'M3B4563HU', 'M3B0123HU', 'Emma', 'Nathan', 'M3B', 'False', 'parent28@ecole.com', NULL),
('LI12344', 'M3B5578HU', 'M3B3456HU', 'Liam', 'Lina', 'M3B', 'True', 'parent29@ecole.com', 'parent30@ecole.com');

-- Etudiants pour Primaire 1A (P1a)
INSERT INTO [Student] ([IdStudent], [Psw1], [Psw2], [Nom], [Prenom], [idClasseIdClasse], [parentsSepares], [Email1], [Email2])
VALUES
('EM12345', 'P1A1234AL', 'P1A5678AL', 'Emma', 'Samuel', 'P1A', 'False', 'parent1@ecole.com', NULL),
('AL12346', 'P1A7890AL', 'P1A2345AL', 'Alex', 'Sophie', 'P1A', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('LI12347', 'P1A9123AL', 'P1A4567AL', 'Liam', 'Isabelle', 'P1A', 'False', 'parent4@ecole.com', NULL),
('OL12348', 'P1A2345AL', 'P1A6789AL', 'Olivia', 'Lucas', 'P1A', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('NO12349', 'P1A4567AL', 'P1A0123AL', 'Noah', 'Océane', 'P1A', 'False', 'parent7@ecole.com', NULL),
('MI12340', 'P1A7890AL', 'P1A2345AL', 'Mia', 'Isaac', 'P1A', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('LE12341', 'P1A0123AL', 'P1A3456AL', 'Léa', 'Ethan', 'P1A', 'False', 'parent10@ecole.com', NULL),
('LI12342', 'P1A2345AL', 'P1A5678AL', 'Liam', 'Inés', 'P1A', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EL12343', 'P1A4567AL', 'P1A0123AL', 'Elise', 'Léo', 'P1A', 'False', 'parent13@ecole.com', NULL),
('TH12344', 'P1A5678AL', 'P1A3456AL', 'Théo', 'Héloése', 'P1A', 'True', 'parent14@ecole.com', 'parent15@ecole.com');

-- Etudiants pour Primaire 1B (P1b)
INSERT INTO [Student] ([IdStudent], [Psw1], [Psw2], [Nom], [Prenom], [idClasseIdClasse], [parentsSepares], [Email1], [Email2])
VALUES
('AL12345', 'P1B1234BE', 'P1B5678BE', 'Alice', 'Léo', 'P1B', 'False', 'parent16@ecole.com', NULL),
('MI12346', 'P1B7890BE', 'P1B2345BE', 'Mia', 'Isabelle', 'P1B', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('OL12347', 'P1B9123BE', 'P1B4567BE', 'Olivia', 'Léo', 'P1B', 'False', 'parent19@ecole.com', NULL),
('LU12348', 'P1B2345BE', 'P1B6789BE', 'Lucas', 'Lina', 'P1B', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('AN12349', 'P1B4567BE', 'P1B0123BE', 'Anna', 'Noah', 'P1B', 'False', 'parent22@ecole.com', NULL),
('LO12340', 'P1B7890BE', 'P1B2345BE', 'Louis', 'Oliver', 'P1B', 'True', 'parent23@ecole.com', 'parent24@ecole.com'),
('LE12341', 'P1B0123BE', 'P1B3456BE', 'Léo', 'Elisabeth', 'P1B', 'False', 'parent25@ecole.com', NULL),
('SI12342', 'P1B2345BE', 'P1B5678BE', 'Simon', 'Isabella', 'P1B', 'True', 'parent26@ecole.com', 'parent27@ecole.com'),
('EN12343', 'P1B4567BE', 'P1B0123BE', 'Emma', 'Nathan', 'P1B', 'False', 'parent28@ecole.com', NULL),
('LI12344', 'P1B5678BE', 'P1B3456BE', 'Liam', 'Lina', 'P1B', 'True', 'parent29@ecole.com', 'parent30@ecole.com');

-- Etudiants pour Primaire 2A (P2a)
INSERT INTO [Student] ([IdStudent], [Psw1], [Psw2], [Nom], [Prenom], [idClasseIdClasse], [parentsSepares], [Email1], [Email2])
VALUES
('EL12345', 'P2A1234CL', 'P2A5678CL', 'Elise', 'Samuel', 'P2A', 'False', 'parent1@ecole.com', NULL),
('AL12346', 'P2A7890CL', 'P2A2345CL', 'Alex', 'Sophie', 'P2A', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('LI12347', 'P2A9123CL', 'P2A4567CL', 'Liam', 'Isabelle', 'P2A', 'False', 'parent4@ecole.com', NULL),
('OL12348', 'P2A2345CL', 'P2A6789CL', 'Olivia', 'Lucas', 'P2A', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('NO12349', 'P2A4567CL', 'P2A0123CL', 'Noah', 'Océane', 'P2A', 'False', 'parent7@ecole.com', NULL),
('MI12340', 'P2A7890CL', 'P2A2345CL', 'Mia', 'Isaac', 'P2A', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('LE12341', 'P2A0123CL', 'P2A3456CL', 'Léa', 'Ethan', 'P2A', 'False', 'parent10@ecole.com', NULL),
('LI12342', 'P2A2345CL', 'P2A5678CL', 'Liam', 'Inés', 'P2A', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EL12343', 'P2A4567CL', 'P2A0123CL', 'Elise', 'Léo', 'P2A', 'False', 'parent13@ecole.com', NULL),
('TH12344', 'P2A5678CL', 'P2A3456CL', 'Théo', 'Héloése', 'P2A', 'True', 'parent14@ecole.com', 'parent15@ecole.com');

-- Etudiants pour Primaire 2B (P2b)
INSERT INTO [Student] ([IdStudent], [Psw1], [Psw2], [Nom], [Prenom], [idClasseIdClasse], [parentsSepares], [Email1], [Email2])
VALUES
('AL12345', 'P2B1234DE', 'P2B5678DE', 'Alice', 'Léo', 'P2B', 'False', 'parent16@ecole.com', NULL),
('MI12346', 'P2B7890DE', 'P2B2345DE', 'Mia', 'Isabelle', 'P2B', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('OL12347', 'P2B9123DE', 'P2B4567DE', 'Olivia', 'Léo', 'P2B', 'False', 'parent19@ecole.com', NULL),
('LU12348', 'P2B2345DE', 'P2B6789DE', 'Lucas', 'Lina', 'P2B', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('AN12349', 'P2B4567DE', 'P2B0123DE', 'Anna', 'Noah', 'P2B', 'False', 'parent22@ecole.com', NULL),
('LO12340', 'P2B7890DE', 'P2B2345DE', 'Louis', 'Oliver', 'P2B', 'True', 'parent23@ecole.com', 'parent24@ecole.com'),
('LE12341', 'P2B0123DE', 'P2B3456DE', 'Léo', 'Elisabeth', 'P2B', 'False', 'parent25@ecole.com', NULL),
('SI12342', 'P2B2345DE', 'P2B5678DE', 'Simon', 'Isabella', 'P2B', 'True', 'parent26@ecole.com', 'parent27@ecole.com'),
('EN12343', 'P2B4567DE', 'P2B0123DE', 'Emma', 'Nathan', 'P2B', 'False', 'parent28@ecole.com', NULL),
('LI12344', 'P2B5678DE', 'P2B3456DE', 'Liam', 'Lina', 'P2B', 'True', 'parent29@ecole.com', 'parent30@ecole.com');

-- Etudiants pour Primaire 3A (P3a)
INSERT INTO [Student] ([IdStudent], [Psw1], [Psw2], [Nom], [Prenom], [idClasseIdClasse], [parentsSepares], [Email1], [Email2])
VALUES
('EM12345', 'P3A1234EM', 'P3A5678EM', 'Emma', 'Samuel', 'P3A', 'False', 'parent1@ecole.com', NULL),
('AL12346', 'P3A7890EM', 'P3A2345EM', 'Alex', 'Sophie', 'P3A', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('LI12347', 'P3A9123EM', 'P3A4567EM', 'Liam', 'Isabelle', 'P3A', 'False', 'parent4@ecole.com', NULL),
('OL12348', 'P3A2345EM', 'P3A6789EM', 'Olivia', 'Lucas', 'P3A', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('NO12349', 'P3A4567EM', 'P3A0123EM', 'Noah', 'Océane', 'P3A', 'False', 'parent7@ecole.com', NULL),
('MI12340', 'P3A7890EM', 'P3A2345EM', 'Mia', 'Isaac', 'P3A', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('LE12341', 'P3A0123EM', 'P3A3456EM', 'Léa', 'Ethan', 'P3A', 'False', 'parent10@ecole.com', NULL),
('LI12342', 'P3A2345EM', 'P3A5678EM', 'Liam', 'Inés', 'P3A', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EL12343', 'P3A4567EM', 'P3A0123EM', 'Elise', 'Léo', 'P3A', 'False', 'parent13@ecole.com', NULL),
('TH12344', 'P3A5678EM', 'P3A3456EM', 'Théo', 'Héloése', 'P3A', 'True', 'parent14@ecole.com', 'parent15@ecole.com'),
('AM12345', 'P3A1234EM', 'P3A5678EM', 'Amélie', 'Mathis', 'P3A', 'False', 'parent16@ecole.com', NULL),
('RO12346', 'P3A7890EM', 'P3A2345EM', 'Rose', 'Olivier', 'P3A', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('TH12347', 'P3A9123EM', 'P3A4567EM', 'Thomas', 'Héloése', 'P3A', 'False', 'parent19@ecole.com', NULL),
('VI12348', 'P3A2345EM', 'P3A6789EM', 'Victor', 'Isabella', 'P3A', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('AN12349', 'P3A4567EM', 'P3A0123EM', 'Anna', 'Nathan', 'P3A', 'False', 'parent22@ecole.com', NULL),
('LI12340', 'P3A7890EM', 'P3A2345EM', 'Liam', 'Lina', 'P3A', 'True', 'parent23@ecole.com', 'parent24@ecole.com');

-- Etudiants pour Primaire 3B (P3B)
INSERT INTO [Student] ([IdStudent], [Psw1], [Psw2], [Nom], [Prenom], [idClasseIdClasse], [parentsSepares], [Email1], [Email2])
VALUES
('EL12345', 'P3B1234FA', 'P3B5678FA', 'Elise', 'Samuel', 'P3B', 'False', 'parent1@ecole.com', NULL),
('AL12346', 'P3B7890FA', 'P3B2345FA', 'Alex', 'Sophie', 'P3B', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('LI12347', 'P3B9123FA', 'P3B4567FA', 'Liam', 'Isabelle', 'P3B', 'False', 'parent4@ecole.com', NULL),
('OL12348', 'P3B2345FA', 'P3B6789FA', 'Olivia', 'Lucas', 'P3B', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('NO12349', 'P3B4567FA', 'P3B0123FA', 'Noah', 'Océane', 'P3B', 'False', 'parent7@ecole.com', NULL),
('MI12340', 'P3B7890FA', 'P3B2345FA', 'Mia', 'Isaac', 'P3B', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('LE12341', 'P3B0123FA', 'P3B3456FA', 'Léa', 'Ethan', 'P3B', 'False', 'parent10@ecole.com', NULL),
('LI12342', 'P3B2345FA', 'P3B5678FA', 'Liam', 'Inés', 'P3B', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EL12343', 'P3B4567FA', 'P3B0123FA', 'Elise', 'Léo', 'P3B', 'False', 'parent13@ecole.com', NULL),
('TH12344', 'P3B5678FA', 'P3B3456FA', 'Théo', 'Héloése', 'P3B', 'True', 'parent14@ecole.com', 'parent15@ecole.com'),
('AM12345', 'P3B1234FA', 'P3B5678FA', 'Amélie', 'Mathis', 'P3B', 'False', 'parent16@ecole.com', NULL),
('RO12346', 'P3B7890FA', 'P3B2345FA', 'Rose', 'Olivier', 'P3B', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('TH12347', 'P3B9123FA', 'P3B4567FA', 'Thomas', 'Héloése', 'P3B', 'False', 'parent19@ecole.com', NULL),
('VI12348', 'P3B2345FA', 'P3B6789FA', 'Victor', 'Isabella', 'P3B', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('AN12349', 'P3B4567FA', 'P3B0123FA', 'Anna', 'Nathan', 'P3B', 'False', 'parent22@ecole.com', NULL),
('LI12340', 'P3B7890FA', 'P3B2345FA', 'Liam', 'Lina', 'P3B', 'True', 'parent23@ecole.com', 'parent24@ecole.com');

-- Etudiants pour Primaire 4A (P4A)
INSERT INTO [Student] ([IdStudent], [Psw1], [Psw2], [Nom], [Prenom], [idClasseIdClasse], [parentsSepares], [Email1], [Email2])
VALUES
('EM12345', 'P4A1234GA', 'P4A5678GA', 'Emma', 'Samuel', 'P4A', 'False', 'parent1@ecole.com', NULL),
('AL12346', 'P4A7890GA', 'P4A2345GA', 'Alex', 'Sophie', 'P4A', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('LI12347', 'P4A9123GA', 'P4A4567GA', 'Liam', 'Isabelle', 'P4A', 'False', 'parent4@ecole.com', NULL),
('OL12348', 'P4A2345GA', 'P4A6789GA', 'Olivia', 'Lucas', 'P4A', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('NO12349', 'P4A4567GA', 'P4A0123GA', 'Noah', 'Océane', 'P4A', 'False', 'parent7@ecole.com', NULL),
('MI12340', 'P4A7890GA', 'P4A2345GA', 'Mia', 'Isaac', 'P4A', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('LE12341', 'P4A0123GA', 'P4A3456GA', 'Léa', 'Ethan', 'P4A', 'False', 'parent10@ecole.com', NULL),
('LI12342', 'P4A2345GA', 'P4A5678GA', 'Liam', 'Inés', 'P4A', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EL12343', 'P4A4567GA', 'P4A0123GA', 'Elise', 'Léo', 'P4A', 'False', 'parent13@ecole.com', NULL),
('TH12344', 'P4A5678GA', 'P4A3456GA', 'Théo', 'Héloése', 'P4A', 'True', 'parent14@ecole.com', 'parent15@ecole.com'),
('AM12345', 'P4A1234GA', 'P4A5678GA', 'Amélie', 'Mathis', 'P4A', 'False', 'parent16@ecole.com', NULL),
('RO12346', 'P4A7890GA', 'P4A2345GA', 'Rose', 'Olivier', 'P4A', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('TH12347', 'P4A9123GA', 'P4A4567GA', 'Thomas', 'Héloése', 'P4A', 'False', 'parent19@ecole.com', NULL),
('VI12348', 'P4A2345GA', 'P4A6789GA', 'Victor', 'Isabella', 'P4A', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('AN12349', 'P4A4567GA', 'P4A0123GA', 'Anna', 'Nathan', 'P4A', 'False', 'parent22@ecole.com', NULL),
('LI12340', 'P4A7890GA', 'P4A2345GA', 'Liam', 'Lina', 'P4A', 'True', 'parent23@ecole.com', 'parent24@ecole.com');

-- Etudiants pour Primaire 4B (P4B)
INSERT INTO [Student] ([IdStudent], [Psw1], [Psw2], [Nom], [Prenom], [idClasseIdClasse], [parentsSepares], [Email1], [Email2])
VALUES
('EL12345', 'P4B1234HE', 'P4B5678HE', 'Elise', 'Samuel', 'P4B', 'False', 'parent1@ecole.com', NULL),
('AL12346', 'P4B7890HE', 'P4B2345HE', 'Alex', 'Sophie', 'P4B', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('LI12347', 'P4B9123HE', 'P4B4567HE', 'Liam', 'Isabelle', 'P4B', 'False', 'parent4@ecole.com', NULL),
('OL12348', 'P4B2345HE', 'P4B6789HE', 'Olivia', 'Lucas', 'P4B', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('NO12349', 'P4B4567HE', 'P4B0123HE', 'Noah', 'Océane', 'P4B', 'False', 'parent7@ecole.com', NULL),
('MI12340', 'P4B7890HE', 'P4B2345HE', 'Mia', 'Isaac', 'P4B', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('LE12341', 'P4B0123HE', 'P4B3456HE', 'Léa', 'Ethan', 'P4B', 'False', 'parent10@ecole.com', NULL),
('LI12342', 'P4B2345HE', 'P4B5678HE', 'Liam', 'Inés', 'P4B', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EL12343', 'P4B4567HE', 'P4B0123HE', 'Elise', 'Léo', 'P4B', 'False', 'parent13@ecole.com', NULL),
('TH12344', 'P4B5678HE', 'P4B3456HE', 'Théo', 'Héloése', 'P4B', 'True', 'parent14@ecole.com', 'parent15@ecole.com'),
('AM12345', 'P4B1234HE', 'P4B5678HE', 'Amélie', 'Mathis', 'P4B', 'False', 'parent16@ecole.com', NULL),
('RO12346', 'P4B7890HE', 'P4B2345HE', 'Rose', 'Olivier', 'P4B', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('TH12347', 'P4B9123HE', 'P4B4567HE', 'Thomas', 'Héloése', 'P4B', 'False', 'parent19@ecole.com', NULL),
('VI12348', 'P4B2345HE', 'P4B6789HE', 'Victor', 'Isabella', 'P4B', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('AN12349', 'P4B4567HE', 'P4B0123HE', 'Anna', 'Nathan', 'P4B', 'False', 'parent22@ecole.com', NULL),
('LI12340', 'P4B7890HE', 'P4B2345HE', 'Liam', 'Lina', 'P4B', 'True', 'parent23@ecole.com', 'parent24@ecole.com');

-- Etudiants pour Primaire 5A (P5A)
INSERT INTO [Student] ([IdStudent], [Psw1], [Psw2], [Nom], [Prenom], [idClasseIdClasse], [parentsSepares], [Email1], [Email2])
VALUES
('EM12345', 'P5A1234IS', 'P5A5678IS', 'Emma', 'Samuel', 'P5A', 'False', 'parent1@ecole.com', NULL),
('AL12346', 'P5A7890IS', 'P5A2345IS', 'Alex', 'Sophie', 'P5A', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('LI12347', 'P5A9123IS', 'P5A4567IS', 'Liam', 'Isabelle', 'P5A', 'False', 'parent4@ecole.com', NULL),
('OL12348', 'P5A2345IS', 'P5A6789IS', 'Olivia', 'Lucas', 'P5A', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('NO12349', 'P5A4567IS', 'P5A0123IS', 'Noah', 'Océane', 'P5A', 'False', 'parent7@ecole.com', NULL),
('MI12340', 'P5A7890IS', 'P5A2345IS', 'Mia', 'Isaac', 'P5A', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('LE12341', 'P5A0123IS', 'P5A3456IS', 'Léa', 'Ethan', 'P5A', 'False', 'parent10@ecole.com', NULL),
('LI12342', 'P5A2345IS', 'P5A5678IS', 'Liam', 'Inés', 'P5A', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EL12343', 'P5A4567IS', 'P5A0123IS', 'Elise', 'Léo', 'P5A', 'False', 'parent13@ecole.com', NULL),
('TH12344', 'P5A5678IS', 'P5A3456IS', 'Théo', 'Héloése', 'P5A', 'True', 'parent14@ecole.com', 'parent15@ecole.com'),
('AM12345', 'P5A1234IS', 'P5A5678IS', 'Amélie', 'Mathis', 'P5A', 'False', 'parent16@ecole.com', NULL),
('RO12346', 'P5A7890IS', 'P5A2345IS', 'Rose', 'Olivier', 'P5A', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('TH12347', 'P5A9123IS', 'P5A4567IS', 'Thomas', 'Héloése', 'P5A', 'False', 'parent19@ecole.com', NULL),
('VI12348', 'P5A2345IS', 'P5A6789IS', 'Victor', 'Isabella', 'P5A', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('AN12349', 'P5A4567IS', 'P5A0123IS', 'Anna', 'Nathan', 'P5A', 'False', 'parent22@ecole.com', NULL),
('LI12340', 'P5A7890IS', 'P5A2345IS', 'Liam', 'Lina', 'P5A', 'True', 'parent23@ecole.com', 'parent24@ecole.com');

-- Etudiants pour Primaire 5B (P5B)
INSERT INTO [Student] ([IdStudent], [Psw1], [Psw2], [Nom], [Prenom], [idClasseIdClasse], [parentsSepares], [Email1], [Email2])
VALUES
('EL12345', 'P5B1234JU', 'P5B5678JU', 'Elise', 'Samuel', 'P5B', 'False', 'parent1@ecole.com', NULL),
('AL12346', 'P5B7890JU', 'P5B2345JU', 'Alex', 'Sophie', 'P5B', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('LI12347', 'P5B9123JU', 'P5B4567JU', 'Liam', 'Isabelle', 'P5B', 'False', 'parent4@ecole.com', NULL),
('OL12348', 'P5B2345JU', 'P5B6789JU', 'Olivia', 'Lucas', 'P5B', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('NO12349', 'P5B4567JU', 'P5B0123JU', 'Noah', 'Océane', 'P5B', 'False', 'parent7@ecole.com', NULL),
('MI12340', 'P5B7890JU', 'P5B2345JU', 'Mia', 'Isaac', 'P5B', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('LE12341', 'P5B0123JU', 'P5B3456JU', 'Léa', 'Ethan', 'P5B', 'False', 'parent10@ecole.com', NULL),
('LI12342', 'P5B2345JU', 'P5B5678JU', 'Liam', 'Inés', 'P5B', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EL12343', 'P5B4567JU', 'P5B0123JU', 'Elise', 'Léo', 'P5B', 'False', 'parent13@ecole.com', NULL),
('TH12344', 'P5B5678JU', 'P5B3456JU', 'Théo', 'Héloése', 'P5B', 'True', 'parent14@ecole.com', 'parent15@ecole.com'),
('AM12345', 'P5B1234JU', 'P5B5678JU', 'Amélie', 'Mathis', 'P5B', 'False', 'parent16@ecole.com', NULL),
('RO12346', 'P5B7890JU', 'P5B2345JU', 'Rose', 'Olivier', 'P5B', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('TH12347', 'P5B9123JU', 'P5B4567JU', 'Thomas', 'Héloése', 'P5B', 'False', 'parent19@ecole.com', NULL),
('VI12348', 'P5B2345JU', 'P5B6789JU', 'Victor', 'Isabella', 'P5B', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('AN12349', 'P5B4567JU', 'P5B0123JU', 'Anna', 'Nathan', 'P5B', 'False', 'parent22@ecole.com', NULL),
('LI12340', 'P5B7890JU', 'P5B2345JU', 'Liam', 'Lina', 'P5B', 'True', 'parent23@ecole.com', 'parent24@ecole.com');

-- Etudiants pour Primaire 6A (P6A)
INSERT INTO [Student] ([IdStudent], [Psw1], [Psw2], [Nom], [Prenom], [idClasseIdClasse], [parentsSepares], [Email1], [Email2])
VALUES
('EM12345', 'P6A1234KA', 'P6A5678KA', 'Emma', 'Samuel', 'P6A', 'False', 'parent1@ecole.com', NULL),
('AL12346', 'P6A7890KA', 'P6A2345KA', 'Alex', 'Sophie', 'P6A', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('LI12347', 'P6A9123KA', 'P6A4567KA', 'Liam', 'Isabelle', 'P6A', 'False', 'parent4@ecole.com', NULL),
('OL12348', 'P6A2345KA', 'P6A6789KA', 'Olivia', 'Lucas', 'P6A', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('NO12349', 'P6A4567KA', 'P6A0123KA', 'Noah', 'Océane', 'P6A', 'False', 'parent7@ecole.com', NULL),
('MI12340', 'P6A7890KA', 'P6A2345KA', 'Mia', 'Isaac', 'P6A', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('LE12341', 'P6A0123KA', 'P6A3456KA', 'Léa', 'Ethan', 'P6A', 'False', 'parent10@ecole.com', NULL),
('LI12342', 'P6A2345KA', 'P6A5678KA', 'Liam', 'Inés', 'P6A', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EL12343', 'P6A4567KA', 'P6A0123KA', 'Elise', 'Léo', 'P6A', 'False', 'parent13@ecole.com', NULL),
('TH12344', 'P6A5678KA', 'P6A3456KA', 'Théo', 'Héloése', 'P6A', 'True', 'parent14@ecole.com', 'parent15@ecole.com'),
('AM12345', 'P6A1234KA', 'P6A5678KA', 'Amélie', 'Mathis', 'P6A', 'False', 'parent16@ecole.com', NULL),
('RO12346', 'P6A7890KA', 'P6A2345KA', 'Rose', 'Olivier', 'P6A', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('TH12347', 'P6A9123KA', 'P6A4567KA', 'Thomas', 'Héloése', 'P6A', 'False', 'parent19@ecole.com', NULL),
('VI12348', 'P6A2345KA', 'P6A6789KA', 'Victor', 'Isabella', 'P6A', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('AN12349', 'P6A4567KA', 'P6A0123KA', 'Anna', 'Nathan', 'P6A', 'False', 'parent22@ecole.com', NULL),
('LI12340', 'P6A7890KA', 'P6A2345KA', 'Liam', 'Lina', 'P6A', 'True', 'parent23@ecole.com', 'parent24@ecole.com');

-- Etudiants pour Primaire 6B (P6B)
INSERT INTO [Student] ([IdStudent], [Psw1], [Psw2], [Nom], [Prenom], [idClasseIdClasse], [parentsSepares], [Email1], [Email2])
VALUES
('EL12345', 'P6B1234LO', 'P6B5678LO', 'Elise', 'Samuel', 'P6B', 'False', 'parent1@ecole.com', NULL),
('AL12346', 'P6B7890LO', 'P6B2345LO', 'Alex', 'Sophie', 'P6B', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('LI12347', 'P6B9123LO', 'P6B4567LO', 'Liam', 'Isabelle', 'P6B', 'False', 'parent4@ecole.com', NULL),
('OL12348', 'P6B2345LO', 'P6B6789LO', 'Olivia', 'Lucas', 'P6B', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('NO12349', 'P6B4567LO', 'P6B0123LO', 'Noah', 'Océane', 'P6B', 'False', 'parent7@ecole.com', NULL),
('MI12340', 'P6B7890LO', 'P6B2345LO', 'Mia', 'Isaac', 'P6B', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('LE12341', 'P6B0123LO', 'P6B3456LO', 'Léa', 'Ethan', 'P6B', 'False', 'parent10@ecole.com', NULL),
('LI12342', 'P6B2345LO', 'P6B5678LO', 'Liam', 'Inés', 'P6B', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EL12343', 'P6B4567LO', 'P6B0123LO', 'Elise', 'Léo', 'P6B', 'False', 'parent13@ecole.com', NULL),
('TH12344', 'P6B5678LO', 'P6B3456LO', 'Théo', 'Héloése', 'P6B', 'True', 'parent14@ecole.com', 'parent15@ecole.com'),
('AM12345', 'P6B1234LO', 'P6B5678LO', 'Amélie', 'Mathis', 'P6B', 'False', 'parent16@ecole.com', NULL),
('RO12346', 'P6B7890LO', 'P6B2345LO', 'Rose', 'Olivier', 'P6B', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('TH12347', 'P6B9123LO', 'P6B4567LO', 'Thomas', 'Héloése', 'P6B', 'False', 'parent19@ecole.com', NULL),
('VI12348', 'P6B2345LO', 'P6B6789LO', 'Victor', 'Isabella', 'P6B', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('AN12349', 'P6B4567LO', 'P6B0123LO', 'Anna', 'Nathan', 'P6B', 'False', 'parent22@ecole.com', NULL),
('LI12340', 'P6B7890LO', 'P6B2345LO', 'Liam', 'Lina', 'P6B', 'True', 'parent23@ecole.com', 'parent24@ecole.com');
