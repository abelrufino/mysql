CREATE DATABASE pratica02;
USE pratica02;

CREATE TABLE tipos_produto(
codigo INT NOT NULL AUTO_INCREMENT,
descricao VARCHAR(40) NOT NULL,
PRIMARY KEY (codigo)
);

CREATE TABLE produtos(
codigo INT NOT NULL AUTO_INCREMENT,
descricao VARCHAR(40) NOT NULL,
preco NUMERIC(8,2) NOT NULL,
codigo_tipo int NOT NULL,
PRIMARY KEY (codigo), 
FOREIGN KEY (codigo_tipo) REFERENCES tipos_produto (codigo)
);

-- Alter tipo do atributo
ALTER TABLE produtos MODIFY preco DECIMAL (8,2);


INSERT INTO tipos_produto (descricao) VALUES ('Computador');
INSERT INTO tipos_produto (descricao) VALUES ('Impressora');

SELECT * FROM tipos_produto;

UPDATE tipos_produto SET descricao = 'Computador' WHERE codigo = 1;
UPDATE tipos_produto SET descricao = 'Impressora' WHERE codigo = 2;


INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Desktop', '1200', 1);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Laptop', '1800', 1);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Impressora HP Jato Tinta', '300', 2);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Impressoa HP Laser', '500', 2);

SELECT * FROM produtos;

-- Select filtrando com Where
SELECT * FROM tipos_produto WHERE codigo = 1;

SELECT * FROM produtos WHERE codigo_tipo = 1;

SELECT codigo, descricao FROM tipos_produto WHERE codigo = 2; 

SELECT * FROM produtos WHERE descricao = 'Laptop';

SELECT codigo, descricao, preco, codigo_tipo FROM produtos WHERE preco <= 500;

SELECT * FROM produtos WHERE codigo_tipo = 2 AND preco > 300;

