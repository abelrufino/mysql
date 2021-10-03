USE pratica01;
SELECT * FROM tipos_produto;

# DTL

-- Transaction 
START TRANSACTION;
INSERT INTO tipos_produto (descricao, peso) VALUE ('Acessorios e Suprimentos', 1.00);
INSERT INTO tipos_produto (descricao, peso) VALUE ('Papelaria e Livraria', 2.00);

-- COMMIT
COMMIT;
-- ROLLBACK
ROLLBACK; 