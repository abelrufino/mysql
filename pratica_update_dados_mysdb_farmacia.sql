USE mydb_farmacia;

-- Atualizandos Dados (Update)
 
SELECT * FROM tipos_produtos;

UPDATE tipos_produtos set tipo = 'Fitness e Nutrição' 
WHERE id = 04;

UPDATE tipos_produtos SET tipo = 'Medicamentos Especiais'
WHERE id = 6;

UPDATE tipos_produtos SET tipo = 'Higiene e Beleza'
WHERE id = 5;

UPDATE tipos_produtos SET tipo = 'Medicamentos e Saúde'
WHERE id = 1;

UPDATE tipos_produtos SET tipo = 'Dermocosmédicos'
WHERE id = 2;