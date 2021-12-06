USE pratica01;

SELECT * FROM produtos;
SELECT * FROM tipos_produto;

-- INSERT
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Notebook', '1200', 1);

INSERT INTO produtos VALUES (NULL, 'Macbook Pro', 7200, 1);

INSERT INTO tipos_produto (descricao) VALUE ('Apple');

INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Mackbook Air', '5200', 3);

-- UPDATE
UPDATE produtos SET codigo_tipo = 3
WHERE codigo = 6;

UPDATE produtos SET codigo_tipo = 1 
WHERE codigo = 6;

UPDATE produtos SET descricao = 'Impressora laser HP', preco = '750' 
WHERE codigo = 4;

UPDATE produtos SET preco = '350' 
WHERE codigo < 3;

UPDATE produtos SET descricao = 'Desktop Dell', preco = '3800'
WHERE codigo = 1;

-- DELETE

DELETE FROM produtos WHERE codigo = 3;
