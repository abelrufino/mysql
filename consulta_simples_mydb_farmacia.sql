USE mydb_farmacia;

-- Realizando Consultas Simples

-- Tipos Produtos
SELECT * FROM tipos_produtos;
SELECT id, tipo FROM tipos_produtos;
SELECT tipo, id FROM tipos_produtos;
SELECT id, tipo FROM tipos_produtos ORDER BY id DESC;

-- Fabricantes
SELECT * FROM fabricantes;

-- Médicos 
SELECT * FROM medicos;

-- Clientes
SELECT * FROM clientes;

-- Compras
SELECT * FROM compras;

-- Produtos_Compras
SELECT * FROM produtos_compras;

-- Receitas Médicas 
SELECT * FROM receitas_medicas;




