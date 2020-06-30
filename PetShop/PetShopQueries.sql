# 1. Preencha cada uma das tabelas com 10 registros
INSERT INTO funcionario (nome, cpf)
VALUES ("Srta. Isabel Albuquerque", "059.627.813-68"),
       ("Dr. Breno Reis", "695.482.173-09"),
       ("Marli Nogueira", "427.861.935-91"),
       ("Fabrício Pereira", "509.761.384-84"),
       ("Nataniel Albuquerque Filho", "059.682.471-85"),
       ("Guilherme Franco", "140.758.639-48"),
       ("Dr. Morgana Saraiva", "695.843.021-24"),
       ("Dr. Hugo Oliveira", "539.467.802-29"),
       ("Suélen Moraes", "902.857.641-01"),
       ("Vitória Pereira", "386.794.052-56");

INSERT INTO cliente (nome, cpf, dataNascimento, telefone)
VALUES ("Larissa Nogueira", "954.067.183-39", "1997-07-25", "(27) 0182-4008"),
       ("Washington Silva Neto", "710.942.853-23", "1974-12-27", "(12) 4271-7750"),
       ("Paulo Oliveira", "138.524.670-71", "2008-08-25", "(39) 7567-5857"),
       ("Rafaela Santos", "804.723.619-96", "1973-09-03", "(01) 8564-0309"),
       ("Gúbio Braga", "789.246.015-20", "1977-10-22", "+55 (42) 0542-5061"),
       ("Sílvia Souza", "352.074.986-65", "1981-12-27", "(92) 33815-7488"),
       ("Helio Batista Filho", "984.361.570-01", "1974-09-28", "+55 (03) 6494-9607"),
       ("Morgana Batista", "650.921.438-51", "1963-02-14", "(52) 64130-3373"),
       ("Rafael Santos", "312.854.670-35", "2003-09-25", "(59) 26030-8546"),
       ("Ofélia Reis", "631.079.825-12", "1986-10-27", "+55 (57) 8368-4087");

INSERT INTO animal (nome, raca, cliente_idcliente)
VALUES ("Herbie", "Lhasa Apso", 1),
       ("Rex", "Akita", 2),
       ("Jimmy", "Beagle", 3),
       ("Toddy", "Basset", 4),
       ("Woody", "Boxer", 5),
       ("Duque", "Dalmata", 6),
       ("Mike", "Corgi", 7),
       ("Simba", "Bull Terrier", 8),
       ("Loki", "Doberman", 9),
       ("Sushi", "Golden Retriever", 10);

INSERT INTO servico (nomeServico, valor)
VALUES ("Triagem", 70),
       ("Vacinas", 100),
       ("Pet Taxi", 50),
       ("Banho", 30),
       ("Tosa", 45),
       ("Hospedagem", 80),
       ("Adestramento", 400),
       ("Hidratacao", 50),
       ("Aromaterapia", 75),
       ("Ofuro", 40);

INSERT INTO ordemServico (data, hora, funcionario_idfuncionario, servico_idservico, animal_idanimal)
VALUES ("2019-11-02", "11:23:08", 1, 1, 1),
       ("2020-06-15", "21:49:39", 2, 2, 2),
       ("2019-11-14", "15:49:34", 3, 3, 3),
       ("2019-08-10", "23:41:48", 4, 4, 4),
       ("2020-05-11", "18:25:11", 5, 5, 5),
       ("2020-03-20", "20:32:56", 6, 5, 6),
       ("2020-02-15", "01:45:29", 7, 7, 7),
       ("2020-05-31", "17:52:24", 8, 7, 7),
       ("2020-04-12", "18:39:31", 9, 9, 9),
       ("2019-10-06", "07:23:26", 10, 10, 10);

# 2. Apresente todos os animais do cliente Helio
SELECT *
FROM animal,
     cliente
WHERE idcliente = cliente_idcliente
  AND cliente.nome LIKE "%Helio%"

# 3. Apresente todos os animais do cliente Helio e todos os dados referentes a
# todos os servicos prestados
SELECT *
FROM animal,
     cliente,
     servico,
     ordemServico,
     funcionario
WHERE idcliente = cliente_idcliente
  AND idanimal = animal_idanimal
  AND idservico = servico_idservico
  AND idfuncionario = funcionario_idfuncionario
  AND cliente.nome LIKE "%Helio%";

# 4. Apresente o total gasto pelo cliente Helio
SELECT SUM(valor) as totalGasto,
       cliente.nome,
       valor,
       idcliente,
       cliente_idcliente,
       idanimal,
       animal_idanimal,
       idservico,
       servico_idservico,
       idfuncionario,
       funcionario_idfuncionario
FROM cliente,
     animal,
     servico,
     ordemServico,
     funcionario
WHERE idcliente = cliente_idcliente
  AND idanimal = animal_idanimal
  AND idservico = servico_idservico
  AND idfuncionario = funcionario_idfuncionario
  AND cliente.nome LIKE "%Helio%";

# 5. Apresente o servico mais lucrativo do petshop
SELECT idservico, nomeServico, servico_idservico, SUM(valor) AS lucroServico
FROM servico,
     ordemServico
WHERE idservico = servico_idservico
GROUP BY idservico, nomeServico, servico_idservico
ORDER BY lucroServico DESC
LIMIT 1;

# 6. Apresente o cliente mais ativo do petshop
SELECT cliente.nome,
       idcliente,
       cliente_idcliente,
       idanimal,
       animal_idanimal,
       servico_idservico,
       idservico,
       COUNT(idanimal) AS numServicos
FROM cliente,
     animal,
     ordemServico,
     servico
WHERE idcliente = cliente_idcliente
  AND idanimal = animal_idanimal
  AND idservico = servico_idservico
GROUP BY idcliente, cliente.nome, cliente_idcliente, idanimal, animal_idanimal, servico_idservico, idservico
ORDER BY numServicos DESC
LIMIT 1;