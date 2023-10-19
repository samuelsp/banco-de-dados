-- Adicionar colunas de endereço à tabela "Usuarios"
ALTER TABLE Usuarios
ADD rua VARCHAR(100),
ADD numero VARCHAR(10),
ADD cidade VARCHAR(50),
ADD estado VARCHAR(50);

-- Copia os dados da tabela original para a nova tabela
UPDATE usuarios
SET rua = SPLIT_PART(SPLIT_PART(endereco, ',', 1), ',', -1),
    numero = SPLIT_PART(SPLIT_PART(endereco, ',', 2), ',', -1),
    cidade = SPLIT_PART(SPLIT_PART(endereco, ',', 3), ',', -1),
    estado = SPLIT_PART(endereco, ',', -1);
	
UPDATE usuarios
    SET estado = ''
	WHERE id IN (1, 2);

-- Exclusão da coluna "endereco" da tabela original
ALTER TABLE usuarios
DROP COLUMN endereco;