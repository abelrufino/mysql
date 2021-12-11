CREATE DATABASE pratica06;
USE pratica06;

CREATE TABLE escritorios(
id INT NOT NULL AUTO_INCREMENT,
pais VARCHAR(30) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE funcionarios(
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(20) NOT NULL,
sobrenome VARCHAR(20) NOT NULL,
id_escritorio INT NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(id_escritorio) REFERENCES escritorios(id)
);

CREATE TABLE pagamentos(
id INT NOT NULL AUTO_INCREMENT,
id_funcionario INT NOT NULL,
salario DECIMAL(8,2) NOT NULL,
data_pg DATE NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(id_funcionario) REFERENCES funcionarios(id)
);


INSERT INTO escritorios(pais) VALUES ('Brasil');
INSERT INTO escritorios(pais) VALUES ('Estados Unidos');
INSERT INTO escritorios(pais) VALUES ('Alemanha');
INSERT INTO escritorios(pais) VALUES ('França');

SELECT * FROM escritorios;

INSERT INTO funcionarios(nome, sobrenome, id_escritorio) VALUES ('Pedro', 'Souza', 1);
INSERT INTO funcionarios(nome, sobrenome, id_escritorio) VALUES ('Sandra', 'Rubin', 2);
INSERT INTO funcionarios(nome, sobrenome, id_escritorio) VALUES ('Mikail', 'Schumer', 3);
INSERT INTO funcionarios(nome, sobrenome, id_escritorio) VALUES ('Olivier', 'Gloçan', 4);

SELECT * FROM funcionarios;

INSERT INTO pagamentos(id_funcionario, salario, data_pg) VALUES (1, '5347.55', '2019-03-17');
INSERT INTO pagamentos(id_funcionario, salario, data_pg) VALUES (2, '9458.46', '2019-03-17');
INSERT INTO pagamentos(id_funcionario, salario, data_pg) VALUES (3, '4669.67', '2019-03-17');
INSERT INTO pagamentos(id_funcionario, salario, data_pg) VALUES (4, '2770.32', '2019-03-17');

SELECT * FROM pagamentos;

-- Exemplo 1
SELECT nome, sobrenome FROM funcionarios 
WHERE id_escritorio IN (SELECT id FROM escritorios WHERE pais = 'Brasil');

-- Sem subconsulta
SELECT nome, sobrenome FROM funcionarios f, escritorios e 
WHERE f.id_escritorio = e.id AND e.pais = 'Brasil'; 

-- Exemplo 2

SELECT f.nome, f.sobrenome, e.pais, p.salario 
FROM pagamentos AS p, funcionarios AS f, escritorios AS e
WHERE f.id_escritorio = e.id 
AND f.id = p.id_funcionario
AND salario = (SELECT MAX(salario) FROM pagamentos);

-- Exemplo 3

SELECT f.nome, f.sobrenome, e.pais, p.salario 
FROM pagamentos AS p, funcionarios AS f, escritorios AS e
WHERE f.id_escritorio = e.id 
AND f.id = p.id_funcionario
AND salario < (SELECT AVG(salario) FROM pagamentos);


