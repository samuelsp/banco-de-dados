-- Criando nova tabela --

CREATE TABLE usuarios_nova (
   id INT,
   nome VARCHAR(255) NOT NULL,
   email VARCHAR(255) NOT NULL UNIQUE,
   data_nascimento DATE NOT NULL,
   endereco VARCHAR(50) NOT NULL
);


COMMENT ON COLUMN usuarios_nova.nome IS 'Nome do usuário';
COMMENT ON COLUMN usuarios_nova.email IS 'Endereço de e-mail do usuário';
COMMENT ON COLUMN usuarios_nova.data_nascimento IS 'Data de nascimento do usuário';
COMMENT ON COLUMN usuarios_nova.endereco IS 'Endereço do Cliente';

-- Migrando os dados --

INSERT INTO usuarios_nova SELECT * from usuarios;

SELECT * from usuarios_nova;

-- Excluindo tabela anterior --
DROP table usuarios;

-- Renomeando nova tabela --
ALTER TABLE usuarios_nova RENAME TO usuarios;

-- Ou opção 2 : Alterar tamanho da coluna endereço -- 
ALTER TABLE usuarios ALTER COLUMN endereco TYPE VARCHAR(100);