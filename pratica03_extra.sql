CREATE DATABASE pratica02;
USE pratica02;

CREATE TABLE pessoas(
 id INT NOT NULL AUTO_INCREMENT,
 nome VARCHAR(80) NOT NULL,
 PRIMARY KEY(id)
 );
 
 INSERT INTO pessoas (nome) VALUES ('Abel João Rufino Neto');
 INSERT INTO pessoas (nome) VALUES ('Esther Machado Rufino');
 INSERT INTO pessoas (nome) VALUES ('Lucia de Fatima C Rufino');
 
 SELECT * FROM pessoas;
 
 ALTER TABLE pessoas ADD cpf VARCHAR(14);
 
 UPDATE pessoas SET cpf = '009.220.314-50' WHERE id = 1;
 UPDATE pessoas SET cpf = '009.218.314-60' WHERE id = 2;
 UPDATE pessoas SET cpf = '009.219.314-70' WHERE id = 3;
 
 DROP TABLE pessoas;
 DROP DATABASE pratica02;