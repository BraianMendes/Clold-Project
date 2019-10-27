/* Seleção das tabelas criadas até agora */
SELECT * FROM Idoso;
SELECT * FROM QrCode;
SELECT * FROM Cuidador;
SELECT * FROM IteraçãoIdosoCuidador;
SELECT * FROM Doencas;
SELECT * FROM Mensagem;
SELECT * FROM Medicoes;
SELECT * FROM Contato;

/* Consultas usadas na interface do Flutter */
SELECT CAST(COUNT(*) AS CHAR) AS 'Numero de Idosos:' from Idoso;
SELECT USER(),CURRENT_USER();

/* Inserção de 5 QR Codes que serão os ID's dos Idosos */
INSERT INTO QrCode VALUES(1000);
INSERT INTO QrCode VALUES(11);
INSERT INTO QrCode VALUES(10);
INSERT INTO QrCode VALUES(1001);
INSERT INTO QrCode VALUES(12);

/* Inserção de 5 Idosos */
INSERT INTO Idoso VALUES (1000, 'Flavio Bessa', 76, 'flabe5', 'FlaBessa76');
INSERT INTO Idoso VALUES (11, 'Antonio Carlos Tonagga', 60, 'antoca', 'act2708');
INSERT INTO Idoso VALUES (10, 'Cesar Silva Torres', 89, 'cst111', 'acesar1111');
INSERT INTO Idoso VALUES (1001, 'Delisario Nunes', 92, 'delin3', 'delisarionnm');
INSERT INTO Idoso VALUES (12, 'Augusto Marinho Manso', 67, 'aumam2', 'aug21021991');

/* Inserção de 5 Contatos para Idosos diferentes */
INSERT INTO Contato VALUES (1, 'Maria Benedita', '35988742343', 1000);
INSERT INTO Contato VALUES (2, 'Carlos Montana Filho', '35999433774', 11);
INSERT INTO Contato VALUES (3, 'Bettina Layers Friedmann', '11999994790', 10);
INSERT INTO Contato VALUES (4, 'Francine Gomes da Fonseca', '35994455222', 1001);
INSERT INTO Contato VALUES (5, 'Sergio Tamboridguy', '35995555248', 12);

/* Inserção de 2 Cuidadores */
INSERT INTO Cuidador VALUES (1, 'MarianaCaroline', '#ccc1221');
INSERT INTO Cuidador VALUES (2, 'SilMotta55', 'sl17121991');

/* Uma doença para cada idoso, 5 doenças - 5 idosos */
INSERT INTO Doencas VALUES (00001, 'Mal de Alzheimer', 1000);
INSERT INTO Doencas VALUES (00002, 'Cegueira Parcial', 11);
INSERT INTO Doencas VALUES (00003, 'Trombose Avançada', 10);
INSERT INTO Doencas VALUES (00004, 'Hepatite Tipo C', 1001);
INSERT INTO Doencas VALUES (00005, 'Câncer de Mama', 12);

/* Iterações entre idosos e cuidadores, 1 iteração para cada idoso */
INSERT INTO IteraçãoIdosoCuidador VALUES(1, 1000, 1, '2019-10-26 16:30:45');
INSERT INTO IteraçãoIdosoCuidador VALUES(2, 11, 2, '2019-10-26 09:55:59');
INSERT INTO IteraçãoIdosoCuidador VALUES(3, 10, 2, '2019-10-26 12:05:02');
INSERT INTO IteraçãoIdosoCuidador VALUES(4, 1001, 1, '2019-10-26 06:23:23');
INSERT INTO IteraçãoIdosoCuidador VALUES(5, 12, 2, '2019-10-26 05:00:01');

/* Inserção de 3 mensagens entre 2 idosos */
INSERT INTO Mensagem VALUES(1, 1000, 1001, 'Delisario, quanto tempo! Você está bem?');
INSERT INTO Mensagem VALUES(2, 1001, 1000, 'Estou sim Flávio... vamos nos ver no natal?');
INSERT INTO Mensagem VALUES(3, 1000, 1001, 'Vamos sim! Mais perto da data nos falamos.');