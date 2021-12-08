CREATE DATABASE pratica02;
USE pratica02;

CREATE TABLE tipos_produto(
codigo INT NOT NULL AUTO_INCREMENT,
descricao VARCHAR(50) NOT NULL,
PRIMARY KEY(codigo)
);

CREATE TABLE produtos(
codigo INT NOT NULL AUTO_INCREMENT,
descricao VARCHAR(80) NOT NULL,
preco NUMERIC(8,2) NOT NULL,
codigo_tipo INT NOT NULL,
PRIMARY KEY(codigo),
FOREIGN KEY(codigo_tipo) REFERENCES tipos_produto(codigo)
);

INSERT INTO tipos_produto(descricao) VALUES ('Computador');
INSERT INTO tipos_produto(descricao) VALUES ('Impressora');

INSERT INTO produtos(descricao, preco, codigo_tipo) VALUES ('Notebook Dell', '3800', 1);
INSERT INTO produtos(descricao, preco, codigo_tipo) VALUES ('Desktop HP', 2399, 1);
INSERT INTO produtos(descricao, preco, codigo_tipo) VALUES ('Impressora Epson Ecotank L3110', '1299', 2);
INSERT INTO produtos(descricao, preco, codigo_tipo) VALUES ('Impressora HP Laser 107W', '92907', 2); 

SELECT * FROM tipos_produto;
SELECT * FROM produtos;

SELECT * FROM produtos 
WHERE codigo_tipo = 2;

SELECT * FROM produtos
WHERE preco > 3500;

SELECT * FROM produtos
WHERE descricao = 'Notebook Dell';

SELECT codigo_tipo, descricao, preco FROM produtos
WHERE codigo_tipo = 2 AND preco > 1000;

SELECT codigo, descricao, codigo_tipo FROM produtos 
WHERE preco <= 1000;

UPDATE produtos set preco = 929.07
WHERE codigo = 4;

SELECT codigo AS 'CodProduto', descricao AS 'Produto' ,Preco AS 'Preço Prod', codigo_tipo AS 'Cod Tipo Prod' FROM produtos p;