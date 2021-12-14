USE mydb_farmacia;

-- Trazer compras
SELECT * FROM compras;

-- Colocar o nome dos clientes nas compras
SELECT co.id AS 'ID Compra', co.data_compra AS 'Data da Compra', cl.nome AS 'Nome Cliente' 
FROM compras co , clientes cl
WHERE co.id_cliente = cl.id;

-- Trazer todos dados dos clientes e compras 
SELECT * FROM compras co , clientes cl
WHERE co.id_cliente = cl.id;

-- Produtos compras
SELECT * FROM produtos_compras;

SELECT * FROM produtos_compras pc, produtos p
WHERE pc.id_produto = p.id;

SELECT pc.id_produto AS 'Id Produto', p.produto AS 'Nome Produto', pc.quantidade AS 'Quantidade' FROM produtos_compras pc, produtos p
WHERE pc.id_produto = p.id;

-- Total de Valores do produtos
SELECT p.produto, p.preco, pc.quantidade, (p.preco * pc.quantidade) AS 'Valor Total' FROM produtos p, produtos_compras pc
WHERE p.id = pc.id_produto 
GROUP BY pc.id; 
 
 
SELECT  com.id AS 'Compra', 
    cli.nome AS 'Cliente',
    SUM(prod.preco * proc.quantidade) AS 'Total',
    com.data_compra AS 'Data da Compra'
    FROM produtos_compras AS proc, produtos AS prod, compras AS com, clientes AS cli
    WHERE com.id = proc.id_compra AND prod.id = proc.id_produto AND cli.id = com.id_cliente
    GROUP BY com.id; 



