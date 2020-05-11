-- Insere 10 registros na tabela Aluno
INSERT INTO Aluno (nome, rg, dataNascimento, dataMatricula, cpf)
VALUES
  (
    "Hélio Silva",
    "417.535.712-27",
    "1934-08-08",
    "2019-03-22",
    "938.472.506-47"
  ),
  (
    "Maria Silva",
    "366.721.621-19",
    "1934-07-07",
    "2016-08-25",
    "902.657.143-70"
  ),
  (
    "Eduardo Costa Filho",
    "24.402.855-95",
    "1994-10-19",
    "2002-02-14",
    "521.943.806-98"
  ),
  (
    "Guilherme Santos",
    "406.530.085-11",
    "1976-08-28",
    "2018-05-25",
    "136.079.248-13"
  ),
  (
    "Núbia Martins",
    "161.855.865-09",
    "2004-09-10",
    "2005-06-07",
    "068.971.352-59"
  ),
  (
    "Suélen Carvalho",
    "23.603.585-10",
    "1900-11-23",
    "2015-04-03",
    "580.674.319-57"
  ),
  (
    "Maria Franco",
    "32.471.684-27",
    "2003-12-15",
    "2007-08-10",
    "721.940.356-99"
  ),
  (
    "Isabela Nogueira",
    "242.726.743-07",
    "1970-02-26",
    "2008-04-28",
    "624.905.187-20"
  ),
  (
    "Natália Franco",
    "483.702.163-82",
    "1934-04-07",
    "2019-08-07",
    "710.826.345-90"
  ),
  (
    "Júlio César Braga",
    "404.175.781-99",
    "1977-10-25",
    "2016-05-04",
    "856.134.270-62"
  );
-- Insere 10 registros na tabela Cliente
INSERT INTO Cliente (
    nome,
    rg,
    cpf,
    salario,
    nomeMae,
    nomePai,
    email,
    senha
  )
VALUES
  (
    "Sílvia Moreira",
    "530.007.177-30",
    "394.627.015-80",
    7099.45,
    "Fabrício Batista",
    "Joana Reis Jr.",
    "Tertuliano_Saraiva35@yahoo.com",
    "5kUPi9Adh_OFgbF"
  ),
  (
    "Felícia Saraiva",
    "277.500.201-36",
    "104.356.928-60",
    8369.36,
    "Lucas Albuquerque",
    "Srta. Alessandra Oliveira",
    "Hlio75@hotmail.com",
    "5d4HUJ0jViUw4QV"
  ),
  (
    "Eduarda Pereira",
    "407.062.162-88",
    "730.864.912-13",
    10604.13,
    "Carla Albuquerque",
    "Heitor Pereira Filho",
    "Natlia_Martins@gmail.com",
    "U5suabXszv1pnkn"
  ),
  (
    "Margarida Franco",
    "448.373.800-34",
    "712.359.684-64",
    3289.1,
    "Marli Braga",
    "Lorraine Braga",
    "Morgana59@gmail.com",
    "MyOpRndlbeur9Wo"
  ),
  (
    "Tertuliano Carvalho",
    "418.300.606-60",
    "401.379.582-50",
    9148.14,
    "Mércia Costa",
    "Guilherme Batista",
    "Alexandre.Pereira3@live.com",
    "ffw16U9I1VpwurI"
  ),
  (
    "Fábio Martins",
    "811.666.703-33",
    "938.067.412-04",
    12197.47,
    "Kléber Barros",
    "Antônio Martins Filho",
    "Paula.Souza@bol.com.br",
    "p1KZp5NLJWGUQmZ"
  ),
  (
    "Bruna Carvalho",
    "167.255.247-88",
    "621.379.480-87",
    5358.03,
    "Sra. Ofélia Nogueira",
    "Vitória Xavier",
    "Marcela.Saraiva@bol.com.br",
    "MiB_WIwG1GMCaZj"
  ),
  (
    "Nataniel Santos",
    "241.023.428-34",
    "532.491.078-32",
    9926.3,
    "Júlio César Carvalho",
    "Marcelo Batista",
    "Ricardo_Pereira@hotmail.com",
    "XvEz8CS8X7nqAls"
  ),
  (
    "Marcela Reis Neto",
    "267.240.122-52",
    "380.546.271-90",
    3345.87,
    "Yago Franco",
    "Eduardo Batista",
    "Vctor_Silva18@yahoo.com",
    "EDG46oLsclFphgK"
  ),
  (
    "Fábio Franco Filho",
    "338.206.566-50",
    "925.763.018-86",
    8113.55,
    "Ladislau Santos",
    "Talita Carvalho Neto",
    "Morgana.Nogueira81@live.com",
    "fLKK7j6PEkVAWY2"
  );
-- Insere 10 registros na tabela Anamnese
INSERT INTO Anamnese (
    Nome,
    Sexo,
    Idade,
    EstadoCivil,
    Cor,
    Naturalidade,
    Profissao,
    Endereco,
    Telefone,
    Acompanhante,
    QueixaPrincipal,
    RazoesDaConsulta
  )
VALUES
  (
    "Carla Nogueira",
    "F",
    23,
    "solteiro",
    "branco",
    "Santa Catarina",
    "Engenheiro Biomedico",
    "Avenida Jose Longo",
    "(27) 0182-4008",
    "Marli Moreira",
    "Dor de garganta",
    "Vel enim nihil consequatur veniam."
  ),
  (
    "Alessandro Martins",
    "M",
    54,
    "casado",
    "negro",
    "Minas Gerais",
    "Engenheiro da Computacao",
    "Avenida Major Miguel Naked",
    "(12) 4271-7750",
    "Ígor Franco",
    "Tosse",
    "Sint facilis et est excepturi deserunt."
  ),
  (
    "Félix Martins",
    "M",
    25,
    "solteiro",
    "pardo",
    "Rondônia",
    "Analista de Sistemas",
    "Avenida 9 de Julho",
    "(39) 7567-5857",
    "Ricardo Macedo Neto",
    "Gripe",
    "Sed quos aut rerum rerum."
  ),
  (
    "Karla Carvalho",
    "F",
    63,
    "divorciado",
    "negro",
    "Sergipe",
    "Engenheiro Agronomo",
    "Rua dos Tubaroes",
    "(01) 8564-0309",
    "Carlos Carvalho",
    "Dor de ouvido",
    "Qui harum veniam eum fugit velit."
  ),
  (
    "Félix Oliveira",
    "M",
    36,
    "separado",
    "pardo",
    "Mato Grosso do Sul",
    "Engenheiro da Computacao",
    "Rua das Arraias",
    "+55 (42) 0542-5061",
    "Dr. Feliciano Oliveira",
    "Enxaqueca",
    "Accusantium natus quo cum aliquam."
  ),
  (
    "Srta. Guilhermina Barros",
    "F",
    31,
    "solteiro",
    "branco",
    "Paraná",
    "Chief Executive Officer",
    "Avenida Major Miguel Naked",
    "(92) 33815-7488",
    "Roberto Santos Neto",
    "Gripe",
    "Aut dicta corporis at inventore unde."
  ),
  (
    "Gustavo Santos",
    "M",
    16,
    "solteiro",
    "branco",
    "Bahia",
    "DJ",
    "Avenida Jose Longo",
    "+55 (03) 6494-9607",
    "Sr. Marcos Saraiva",
    "Febre",
    "Tempora voluptatem et consequatur."
  ),
  (
    "Washington Nogueira",
    "M",
    72,
    "viuvo",
    "pardo",
    "Alagoas",
    "Chairman of the Board",
    "Alameda Mozart",
    "(52) 64130-3373",
    "Pedro Franco",
    "Dores no corpo",
    "Voluptatum ut voluptate dolor ducimus inventore et cum omnis dolorum."
  ),
  (
    "Mércia Franco",
    "F",
    49,
    "divorciado",
    "branco",
    "Maranhão",
    "Chief Technology Officer",
    "Alameda Vivaldi",
    "(59) 26030-8546",
    "Ladislau Melo",
    "Gripe",
    "Quisquam impedit velit atque hic laboriosam doloribus."
  ),
  (
    "Dr. Marcos Santos",
    "M",
    53,
    "casado",
    "negro",
    "Distrito Federal",
    "Medico",
    "Avenida Jorge Zarur",
    "+55 (57) 8368-4087",
    "Ígor Souza",
    "Tosse seca",
    "In quos ducimus laboriosam quidem enim saepe impedit sunt."
  );