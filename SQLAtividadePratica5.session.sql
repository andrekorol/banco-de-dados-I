-- 1. Insira 10 funcionários na tabela funcionário.
DROP TABLE IF EXISTS funcionario;
CREATE TABLE funcionario(
    idFuncionario INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45),
    idade INT,
    salario FLOAT,
    departamento VARCHAR(45),
    cidade VARCHAR(45),
    bairro VARCHAR(45),
    PRIMARY KEY (idFuncionario)
);