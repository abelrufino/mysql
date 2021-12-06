USE pratica01;

# DML

-- Insert 
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Notebook', '1200', 1);
INSERT INTO produtos VALUES (NULL, 'Macbook Pro', '7200', 1);

INSERT INTO tipos_produto (descricao) VALUES ('Apple');
INSERT INTO produtos VALUES (NULL, 'Macbook Air', '5200', 3);

INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Notebook Gamer', '5800',1);

UPDATE produtos set preco = '6000' where codigo = 9;

SELECT * FROM produtos;
SELECT * FROM tipos_produto;

-- Update
-- Cuidado Update (sem o WHERE)
UPDATE produtos SET codigo_tipo = 3 WHERE codigo = 6;
UPDATE produtos SET descricao = 'Impressora Laser Epson', preco = '700' WHERE codigo = 4;
UPDATE produtos SET preco = '7999' WHERE codigo = 6;


UPDATE produtos SET preco = '250'; 
UPDATE produtos SET preco = '250' WHERE codigo < 4;

UPDATE produtos SET preco = '2800' WHERE codigo = 5;
	
-- Delete 
-- Cuidado Delete (sem o WHERE)
DELETE FROM produtos WHERE codigo = 3; 











