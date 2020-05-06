DROP TABLE IF EXISTS Aluno;
-- Tabela Aluno(idAluno, rg, dataNascimento, dataMatricula, cpf)
CREATE TABLE Aluno(
  idAluno int NOT NULL AUTO_INCREMENT,
  -- e.g rg = '40.429.226-6'
  rg varchar(12) NOT NULL,
  -- YYYY-MM-DD
  dataNascimento DATE NOT NULL,
  dataMatricula DATE,
  -- contando '.'s e '-'
  -- ver: 'https://pt.stackoverflow.com/questions/121593/quantidade-de-caracteres-do-cpf-cnpj-e-rg'
  cpf varchar(17) NOT NULL,
  PRIMARY KEY (idAluno)
);
DROP TABLE IF EXISTS Cliente;
-- Cliente(idCliente, nome, rg, cpf, salario, nomeMae, nomePai, e-mail, senha)
CREATE TABLE Cliente(
  idCliente int NOT NULL AUTO_INCREMENT,
  nome varchar(255) NOT NULL,
  rg varchar(12) NOT NULL,
  cpf varchar(17) NOT NULL,
  salario float(53),
  nomeMae varchar(255),
  nomePai varchar(255),
  email varchar(255),
  -- salvando apenas um hash da senha no banco de dados
  senha binary(64),
  PRIMARY KEY (idCliente)
);
DROP TABLE IF EXISTS Anamnese;
-- (Nome,Sexo,Idade, Estado Civil, Cor, Naturalidade, Profissão, Endereço,
-- Telefone, Acompanhante, Queixa Principal, Razões da consulta)
CREATE TABLE Anamnese(
  Nome varchar(255) NOT NULL,
  Sexo char NOT NULL,
  Idade tinyint unsigned NOT NULL,
  EstadoCivil varchar(255),
  Cor varchar(128),
  Naturalidade varchar(255),
  Profissao varchar(255),
  Endereco varchar(1024),
  Telefone varchar(32),
  Acompanhante varchar(255),
  QueixaPrincipal varchar(1024),
  RazoesDaConsulta varchar(4096)
);