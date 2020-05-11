-- Selecione todos os alunos que tem o nome igual a Maria.
SELECT
  *
FROM Aluno
WHERE
  nome LIKE "%Maria%";
-- Selecione todos os Pacientes que procuraram atendimento
  -- médico por conta de gripes.
SELECT
  *
FROM Anamnese
WHERE
  QueixaPrincipal = "Gripe";
-- Selecione todos os pacientes pardos e negros.
SELECT
  *
FROM Anamnese
WHERE
  Cor = "pardo"
  OR Cor = "negro";
-- Selecione todos os pacientes que são engenheiros da computação.
SELECT
  *
FROM Anamnese
WHERE
  Profissao = "Engenheiro da Computacao";
-- Selecione todos os pacientes que são engenheiras e engenheiros
  --  da computação.
SELECT
  *
FROM Anamnese
WHERE
  (
    Sexo = "F"
    AND Profissao LIKE "%Engenheiro%"
  )
  OR Profissao = "Engenheiro da Computacao";
-- Selecione todos os pacientes que são engenheiros ou engenheiras
  --  e moram na avenida José Longo.
SELECT
  *
FROM Anamnese
WHERE
  Profissao LIKE "%Engenheiro%"
  AND Endereco LIKE "%Jose Longo%";
-- Selecione todos os clientes que ganham até um salário mínimo.
SELECT
  *
FROM Cliente
WHERE
  salario <= 1039;
-- Selecione todos os clientes que ganham entre 1200 $ e 3000 $.
SELECT
  *
FROM Cliente
WHERE
  salario >= 1200
  AND salario <= 3000;
-- Selecione os cientes que ganham menos de 1200 $ e mais que 3000 $
SELECT
  *
FROM Cliente
WHERE
  salario < 1200
  OR salario > 3000;
-- Selecione todos os alunos que fizeram matrícula em 2007
SELECT
  *
FROM Aluno
WHERE
  YEAR(dataMatricula) = "2007";