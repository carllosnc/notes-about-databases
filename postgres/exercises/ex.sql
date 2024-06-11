CREATE TABLE empregados (
  matricula VARCHAR(255) NOT NULL UNIQUE PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  data_nascimento DATE NOT NULL,
  endereco VARCHAR(255) NOT NULL,
  sexo CHAR CHECK(sexo in ('m', 'f')) NOT NULL,
  salario NUMERIC(5, 2),
  dpto INT NOT NULL,
  supervisor VARCHAR(255) NOT NULL
);

CREATE TABLE departamentos (
  depto_num INT NOT NULL UNIQUE PRIMARY KEY,
  depto_nome VARCHAR(255) NOT NULL,
  matr_gerente VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE projetos (
  p_codigo INT NOT NULL UNIQUE PRIMARY KEY,
  p_nome VARCHAR(255) NOT NULL UNIQUE,
  p_localizacao TEXT NOT NULL,
  dpto INT NOT NULL
);

CREATE TABLE dependentes (
  matricula VARCHAR(255) NOT NULL,
  nome VARCHAR(255) NOT NULL,
  sexo CHAR CHECK(sexo in ('m', 'f')) NOT NULL,
  data_nascimento DATE NOT NULL,
  parentesco VARCHAR(255) NOT NULL
);

-- adding fk =============================

ALTER TABLE empregados
ADD CONSTRAINT fk_empregados_departamentos FOREIGN KEY(dpto) REFERENCES departamentos(depto_num);

ALTER TABLE empregados
ADD CONSTRAINT fk_supervisor_empregados FOREIGN KEY(supervisor) REFERENCES empregados(matricula);

ALTER TABLE projetos
ADD CONSTRAINT fk_projetos_departamentos FOREIGN KEY(dpto) REFERENCES departamentos(depto_num);

ALTER TABLE dependentes
ADD CONSTRAINT fk_dependentes_empregados FOREIGN KEY(matricula) REFERENCES empregados(matricula)

-- =============================

DROP TABLE IF EXISTS empregados, departamentos, projetos, dependentes;