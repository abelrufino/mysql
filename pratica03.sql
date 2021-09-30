USE pratica01;

-- Alter
ALTER TABLE tipos_produto ADD peso DECIMAL(8,2);

SELECT * FROM tipos_produto; 

UPDATE tipos_produto set peso = '5.00' WHERE codigo = 1;   
UPDATE tipos_produto set peso = '4.80' WHERE codigo = 2;
UPDATE tipos_produto set peso = '4.00' WHERE codigo = 3;

-- Drop
DROP TABLE tipos_produto;

DROP DATABASE tipos_produto; 



