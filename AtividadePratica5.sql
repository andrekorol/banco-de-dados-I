DROP TABLE IF EXISTS funcionario;
CREATE TABLE funcionario
(
    idFuncionario INT NOT NULL AUTO_INCREMENT,
    nome          VARCHAR(45),
    idade         INT,
    salario       FLOAT,
    departamento  VARCHAR(45),
    cidade        VARCHAR(45),
    bairro        VARCHAR(45),
    PRIMARY KEY (idFuncionario)
);

# 1. Insira 10 funcionários na tabela funcionário.
INSERT INTO funcionario (nome, idade, salario, departamento, cidade, bairro)
VALUES ("Andre", 23, 99999.99, "DevOps", "Bertioga", "Riviera de Sao Lourenco"),
       ("Felipe", 21, 1337, "RH", "Sao Jose dos Campos", "Urbanova"),
       ("Brittany", 20, 4444, "RH", "Sao Jose dos Campos", "Jd. Satelite"),
       ("Megan", 25, 2304.97, "SEO", "Sao Jose dos Campos", "Jd Colinas"),
       ("Camila", 29, 7243.32, "DevOps", "Bertioga", "Vista Linda"),
       ("Sara", 21, 2109.35, "R&D", "Sao Paulo", "Santo Amaro"),
       ("Wesley", 26, 5210, "R&D", "Sao Paulo", "Santo Amaro"),
       ("Gabriel", 24, 8240, "SEO", "Jacarei", "Vila Branca"),
       ("Pedro", 21, 6325, "Seguranca", "Sao Jose dos Campos", "Urbanova"),
       ("Isabela", 20, 6920, "Seguranca", "Sao Jose dos Campos", "Parque Industrial");

# 2. Apresente a média de salário e a média de idade.
SELECT AVG(salario) AS salarioMedio
FROM funcionario;
SELECT AVG(idade) AS idadeMedia
FROM funcionario;

# 3. Apresente o maior e o menor salário.
SELECT MAX(salario) AS maiorSalario
FROM funcionario;
SELECT MIN(salario) AS menorSalario
FROM funcionario;

# 4. Apresente a quantidade de funcionários por departamento.
SELECT COUNT(idFuncionario) AS quantidadeFuncionarios, departamento
FROM funcionario
GROUP BY departamento;

# 5. Apresente a quantidade de funcionários por cidade.
SELECT COUNT(idFuncionario) AS quantidadeFuncionarios, cidade
FROM funcionario
GROUP BY cidade;

# 6. Apresente a quantidade de funcionários por bairro.
SELECT COUNT(idFuncionario) AS quantidadeFuncionarios, bairro
FROM funcionario
GROUP BY bairro;

# 7. Apresente a quantidade de funcionários por bairro da cidade de
# Sao Jose dos Campos.
SELECT COUNT(idFuncionario) AS quantidadeFuncionarios, bairro
FROM funcionario
WHERE cidade = "Sao Jose dos Campos"
GROUP BY bairro;

# 8. Apresente apenas os departamentos que possuem média de salário
# maior que R$2000,00
SELECT departamento
FROM funcionario
GROUP BY departamento
HAVING AVG(salario) > 2000;

# 9. Apresente a soma de salário separado por cada departamento.
SELECT departamento, SUM(salario) AS somaSalario
FROM funcionario
GROUP BY departamento;

# 10. Apresente a média de salário por cada cidade.
SELECT cidade, AVG(salario) AS salarioMedio
FROM funcionario
GROUP BY cidade;