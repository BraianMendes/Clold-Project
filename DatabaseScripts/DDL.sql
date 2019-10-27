USE hackathon1;

/* Criação da tabela de idosos separando campos de restrições */
CREATE TABLE IF NOT EXISTS Idoso (
	idIdoso INT NOT NULL,
    nomeIdoso VARCHAR(240) NOT NULL,
    idadeIdoso INT NOT NULL,
    senhaIdoso VARCHAR(6) NOT NULL,
    loginIdoso VARCHAR(30) NOT NULL
) ENGINE=INNODB;
ALTER TABLE Idoso ADD CONSTRAINT pk_idoso PRIMARY KEY(senhaIdoso, loginIdoso); 
ALTER TABLE Idoso ADD CONSTRAINT fk_idoso_qrCode FOREIGN KEY(idIdoso) REFERENCES QrCode(chaveIdoso); 
ALTER TABLE Idoso ADD COLUMN active VARCHAR(3);

/* Criação da tabela de qrCodes, com campos e restrições inline */
CREATE TABLE IF NOT EXISTS QrCode (
	chaveIdoso INT PRIMARY KEY NOT NULL
) ENGINE=INNODB;

/* Criação da tabela de Cuidador campos e restrições inline*/
CREATE TABLE IF NOT EXISTS Cuidador (
	 idCuidador INT AUTO_INCREMENT PRIMARY KEY,
     loginCuidador VARCHAR(240) UNIQUE NOT NULL,
     senhaCuidador VARCHAR(10) UNIQUE NOT NULL
) ENGINE=INNODB;

/* Criação da tabela de Contato com campos e restrições, relacao com idoso 1:N*/
CREATE TABLE IF NOT EXISTS Contato (
	 idContato INT AUTO_INCREMENT PRIMARY KEY,
     nomeContato VARCHAR(240) NOT NULL,
     telefoneContato VARCHAR(11) UNIQUE NOT NULL,
     fkContatoIdoso INT NOT NULL
) ENGINE=INNODB;
ALTER TABLE Contato ADD CONSTRAINT fk_contato_idoso FOREIGN KEY(fkContatoIdoso) REFERENCES Idoso(idIdoso);

/* Criação da tabela de IteraçãoIdosoCuidador separando campos de restrições */
CREATE TABLE IF NOT EXISTS IteraçãoIdosoCuidador (
	idIteracao INT AUTO_INCREMENT PRIMARY KEY,
	chaveIdoso INT NOT NULL,
    chaveCuidador INT NOT NULL,
    dataMod DATETIME NOT NULL
) ENGINE=INNODB;
ALTER TABLE IteraçãoIdosoCuidador ADD CONSTRAINT fk_idoso_iteracao FOREIGN KEY(chaveIdoso) REFERENCES Idoso(idIdoso); 
ALTER TABLE IteraçãoIdosoCuidador ADD CONSTRAINT fk_cuidador_iteracao FOREIGN KEY(chaveCuidador) REFERENCES Cuidador(idCuidador);

/* Criação da tabela de Doenças separando campos de restrições */
CREATE TABLE IF NOT EXISTS Doencas (
	idDoenca INT AUTO_INCREMENT PRIMARY KEY,
    nomeDoenca VARCHAR(240) NOT NULL,
    refIdoso INT NOT NULL
) ENGINE=INNODB;
ALTER TABLE Doencas ADD CONSTRAINT fk_idoso_doenca FOREIGN KEY(refIdoso) REFERENCES Idoso(idIdoso) ON DELETE CASCADE;  

/* Criação da tabela de Mensagem separando campos de restrições */
CREATE TABLE IF NOT EXISTS Mensagem (
	idMensagem INT AUTO_INCREMENT PRIMARY KEY,
	idosoRemetente INT NOT NULL,
    idosoDestinatario INT NOT NULL,
    conteudoMsg TEXT NOT NULL
) ENGINE=INNODB;
ALTER TABLE Mensagem ADD CONSTRAINT fk_idoso_remetente FOREIGN KEY(idosoRemetente) REFERENCES Idoso(idIdoso) ON UPDATE CASCADE;  
ALTER TABLE Mensagem ADD CONSTRAINT fk_idoso_destinatario FOREIGN KEY(idosoDestinatario) REFERENCES Idoso(idIdoso) ON UPDATE CASCADE; 

/* Criação da tabela de Medicoes que esperarão os dados colhidos do Idoso*/
CREATE TABLE IF NOT EXISTS Medicoes (
	fkIdoso INT NOT NULL,
	temperatura FLOAT NOT NULL,
    umidade FLOAT NOT NULL
) ENGINE=INNODB;
ALTER TABLE Medicoes ADD CONSTRAINT fk_idoso_medicao FOREIGN KEY(fkIdoso) REFERENCES Idoso(idIdoso) ON DELETE CASCADE; 