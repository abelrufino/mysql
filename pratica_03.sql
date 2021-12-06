USE pratica;

CREATE TABLE pessoas(
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
PRIMARY KEY(id)
);

ALTER TABLE pessoas ADD data_nasc DATE;

INSERT INTO pessoas(nome) VALUES ('Abel João');
INSERT INTO pessoas(nome) VALUES ('Lúcia Rufino');

UPDATE pessoas SET nome = 'Abel João Rufino Neto' 
WHERE id = 1; 

UPDATE pessoas SET nome = 'Lúcia de Fátima Cavalcanti Rufino'
WHERE id = 2;

UPDATE pessoas SET data_nasc = '1981-05-27'
WHERE id = 1;

UPDATE pessoas SET data_nasc = '1954-04-15'
WHERE id = 2;

SELECT * FROM pessoas;

DELETE FROM pessoas 
WHERE id = 1;

DROP TABLE pessoas;