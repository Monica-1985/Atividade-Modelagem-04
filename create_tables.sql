CREATE DATABASE IF NOT EXISTS ong_vida_esperanca;
USE ong_vida_esperanca;

-- TABELA VOLUNTARIO
CREATE TABLE Voluntario (
  ID_Voluntario INT AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(100) NOT NULL,
  CPF VARCHAR(14) UNIQUE NOT NULL,
  Email VARCHAR(100) UNIQUE,
  Telefone VARCHAR(15),
  Especializacao VARCHAR(100),
  Tipo_Usuario VARCHAR(20) NOT NULL
);

-- TABELA DOADOR
CREATE TABLE Doador (
  ID_Doador INT AUTO_INCREMENT PRIMARY KEY,
  Nome_RazaoSocial VARCHAR(150) NOT NULL,
  CPF_CNPJ VARCHAR(20) UNIQUE NOT NULL,
  Email VARCHAR(100),
  Tipo_Doador VARCHAR(10) NOT NULL
);

-- TABELA BENEFICIARIO
CREATE TABLE Beneficiario (
  ID_Beneficiario INT AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(100) NOT NULL,
  CPF VARCHAR(14) UNIQUE,
  Data_Nascimento DATE,
  Endereco VARCHAR(255),
  Renda_Familiar DECIMAL(10,2)
);

-- TABELA PROJETO
CREATE TABLE Projeto (
  ID_Projeto INT AUTO_INCREMENT PRIMARY KEY,
  ID_Voluntario_Lider INT,
  Nome_Projeto VARCHAR(100) NOT NULL,
  Descricao TEXT,
  Data_Inicio DATE NOT NULL,
  Data_Fim_Prevista DATE,
  Status VARCHAR(20) NOT NULL,
  Orcamento_Estimado DECIMAL(10,2),
  FOREIGN KEY (ID_Voluntario_Lider) REFERENCES Voluntario(ID_Voluntario)
);

-- TABELA DOACAO
CREATE TABLE Doacao (
  ID_Doacao INT AUTO_INCREMENT PRIMARY KEY,
  ID_Doador INT NOT NULL,
  ID_Projeto INT,
  Tipo_Doacao VARCHAR(20) NOT NULL,
  Valor_Ou_Estimado DECIMAL(10,2) NOT NULL,
  Descricao_Item VARCHAR(150),
  Data_Recebimento DATE NOT NULL,
  FOREIGN KEY (ID_Doador) REFERENCES Doador(ID_Doador),
  FOREIGN KEY (ID_Projeto) REFERENCES Projeto(ID_Projeto)
);

-- TABELA ATENDIMENTO
CREATE TABLE Atendimento (
  ID_Atendimento INT AUTO_INCREMENT PRIMARY KEY,
  ID_Beneficiario INT NOT NULL,
  ID_Voluntario INT NOT NULL,
  Data_Atendimento DATETIME NOT NULL,
  Tipo_Servico VARCHAR(100) NOT NULL,
  Observacoes TEXT,
  FOREIGN KEY (ID_Beneficiario) REFERENCES Beneficiario(ID_Beneficiario),
  FOREIGN KEY (ID_Voluntario) REFERENCES Voluntario(ID_Voluntario)
);
