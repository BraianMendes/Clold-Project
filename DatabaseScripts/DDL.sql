USE manuelDB;

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
