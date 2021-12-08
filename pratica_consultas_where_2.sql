USE pratica02;

SELECT * FROM produtos;
SELECT * FROM tipos_produto;

SELECT p.codigo AS 'Codigo' , p.descricao AS 'Descrição', p.preco AS 'Preço', tp.descricao AS 'Tipo Produto'  
FROM produtos p , tipos_produto tp
WHERE p.codigo_tipo = tp.codigo