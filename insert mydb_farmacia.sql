USE mydb_farmacia;

-- Inserindo dados da tabela mysdb_farmacia DML

-- Tipos Produtos
INSERT INTO tipos_produtos(tipo) VALUES ('Medicamentos');
INSERT INTO tipos_produtos(tipo) VALUES ('Cosmédicos');
INSERT INTO tipos_produtos(tipo) VALUES ('Conveniência');

SELECT * FROM tipos_produtos;

-- fabricantes 
INSERT INTO fabricantes(nome) VALUES ('Eurofarma');
INSERT INTO fabricantes(nome) VALUES ('Bayer');
INSERT INTO fabricantes(nome) VALUES ('Aché'); 

SELECT * FROM fabricantes;


-- Medicos
RENAME TABLE medico TO medicos;

INSERT INTO medicos(nome, crm) VALUES ('Alfredo Muniz', '123123SP');
INSERT INTO medicos(nome, crm) VALUES ('Fernanda Silva', '3423423MG');
INSERT INTO medicos(nome, crm) VALUES ('Julieta Santana', '56546SC');

SELECT *FROM medicos;

-- Clientes
INSERT INTO clientes(nome, endereco, cep, telefone, localidade, cpf) VALUES ('Felicity Jones', 'Rua da paz, 34', '34.567-098', '(11) 2345-8899', 'Santos', '234.789.433-98');
INSERT INTO clientes(nome, endereco, cep, telefone, localidade, cpf) VALUES ('Angelina Jolie', 'Rua do Ipiranga, 456', '56.654-567', '(21) 7544-3234', 'Rio de Janeiro', '345.678.234-12');
INSERT INTO clientes(nome, endereco, cep, telefone, localidade, cpf) VALUES ('Ricardo Chaves', 'Rua Certa, 678', '12.4569-223', '(21) 2678-3984', 'Planaltina', '786.123.445-31'); 

SELECT * FROM clientes;

-- Produtos
INSERT INTO produtos(produto, designacao, composicao, preco, id_tipo_produto, id_fabricante) 
VALUES ('Dipirona', 'Dores em geral', 'Metilpropileno', '12.44', 1, 1);

INSERT INTO produtos(produto, designacao, composicao, preco, id_tipo_produto, id_fabricante)
VALUES ('Sabonete', 'Higiene pessoal', 'Sodium Tallowate', '3.56', 2, 2);

INSERT INTO produtos(produto, designacao, composicao, preco, id_tipo_produto, id_fabricante)
VALUES ('Protetor Solar', 'Protecão da pele', 'Oxibenzona', '98.12', 2, 3);

SELECT *  FROM produtos;

-- Compras
ALTER TABLE compras 
CHANGE data data_compra DATE NOT NULL;

INSERT INTO compras(id_cliente, data_compra) VALUES ('1', '2019-03-10');
INSERT INTO compras(id_cliente, data_compra) VALUES ('2', '2019-04-15');
INSERT INTO compras(id_cliente, data_compra) VALUES ('1', '2019-05-18');

SELECT * FROM compras;

-- Produtos Compras
INSERT INTO produtos_compras(id_produto, id_compra, quantidade) VALUES (1, 1, 2);
INSERT INTO produtos_compras(id_produto, id_compra, quantidade) VALUES (1, 2, 3);
INSERT INTO produtos_compras(id_produto, id_compra, quantidade) VALUES (2, 3, 1);

SELECT * FROM produtos_compras;

-- Receitas Médicas 
INSERT INTO receitas_medicas(id_medico, id_produto_compra, receita) VALUES (1, 1, 'Receita1.pdf');
INSERT INTO receitas_medicas(id_medico, id_produto_compra, receita) VALUES (3, 2, 'Receita2.pdf'); 




 

