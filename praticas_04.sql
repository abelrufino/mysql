USE pratica01;
SELECT * FROM produtos;
SELECT * FROM tipos_produto;

ALTER TABLE produtos ADD preco DECIMAL(8,2);

UPDATE produtos SET preco = '3174' 
WHERE codigo = 8;

START TRANSACTION;
	INSERT INTO tipos_produto (descricao) VALUES ('Jogos');
    INSERT INTO tipos_produto (codigo, descricao) VALUES (7,'Eletro');
    
COMMIT;

ROLLBACK;
 
UPDATE tipos_produto set descricao = 'Pepelaria e Escritório'
WHERE codigo = 4;
