CREATE DATABASE pratica04;
USE pratica04;

CREATE TABLE categorias(
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(60) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE produtos(
id INT NOT NULL AUTO_INCREMENT,
descricao VARCHAR(60) NOT NULL,
preco_venda NUMERIC(8,2) NOT NULL,
preco_custo NUMERIC(8,2) NOT NULL,
id_categoria INT NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(id_categoria) REFERENCES categorias(id)
);



INSERT INTO categorias(nome) VALUES ('Material Escolar');
INSERT INTO categorias(nome) VALUES ('Acessórios de Informática');
INSERT INTO categorias(nome) VALUES ('Material de Escritório');
INSERT INTO categorias(nome) VALUES ('Game');

SELECT * FROM categorias; 

INSERT INTO produtos(descricao, preco_venda, preco_custo, id_categoria) VALUES ('Caderno', '5.45', '2.30', 1);
INSERT INTO produtos(descricao, preco_venda, preco_custo, id_categoria) VALUES ('Caneta', '1.20', '0.45', 1);
INSERT INTO produtos(descricao, preco_venda, Preco_custo, id_categoria) VALUES ('Pendrive 32GB', '120.54', '32.55', 2);
INSERT INTO produtos(descricao, preco_venda, preco_custo, id_categoria) VALUES ('Mouse', '17.00','4.30', 2);

SELECT * FROM produtos;

-- max
SELECT MAX(preco_venda) FROM produtos;
SELECT MAX(preco_venda) AS 'Preco Máximo' FROM produtos; 

-- min
SELECT MIN(preco_venda) FROM produtos;
SELECT MIN (preco_vendas) AS 'Preco Mínimo' FROM produtos;

-- avg
SELECT AVG(preco_venda) FROM produtos;
SELECT round(AVG(preco_venda)) FROM produtos;

-- round
SELECT round(AVG(preco_custo)) FROM produtos;
SELECT round(AVG(preco_venda)) FROM produtos;

-- count
SELECT count(preco_venda) AS 'Quantidade' FROM produtos
WHERE id_categoria = 1;

SELECT COUNT(preco_venda) AS 'Quantidade', c.nome FROM produtos p, categorias c
WHERE p.id_categoria = 1 and p.id_categoria = c.id;

-- group by
SELECT id_categoria, MAX(preco_venda) FROM produtos
GROUP BY id_categoria;

SELECT p.id_categoria, c.nome, MAX(p.preco_venda) FROM produtos p, categorias c
WHERE p.id_categoria = c.id
GROUP BY id_categoria;

-- having
SELECT id_categoria, MAX(preco_venda) FROM produtos
GROUP BY id_categoria
HAVING MAX(preco_venda) > 10;

SELECT p.id_categoria, c.nome, MAX(p.preco_venda) FROM produtos p, categorias c
WHERE p.id_categoria = c.id
GROUP BY id_categoria 
HAVING MAX(preco_venda) > 10;






