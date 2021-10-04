# Consultas em multiplas tabelas

SELECT * FROM tipos_produto; 
SELECT * FROM produtos;

SELECT p.codigo, p.descricao, p.preco, tp.descricao FROM produtos p, tipos_produto tp 
WHERE p.codigo_tipo = tp.codigo;



# Consultas em multiplas tabelas

SELECT * FROM tipos_produto; 
SELECT * FROM produtos;

SELECT p.codigo AS 'Código', p.descricao AS 'Descrição', p.preco AS 'Preço', tp.descricao AS 'Tipo Produto'FROM produtos p, tipos_produto tp 
WHERE p.codigo_tipo = tp.codigo;
