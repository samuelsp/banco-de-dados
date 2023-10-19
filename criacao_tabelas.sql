CREATE TABLE usuarios (
  id INT,
  nome VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  data_nascimento DATE NOT NULL,
  endereco VARCHAR(50) NOT NULL
);

COMMENT ON COLUMN usuarios.nome IS 'Nome do usuário';
COMMENT ON COLUMN usuarios.email IS 'Endereço de e-mail do usuário';
COMMENT ON COLUMN usuarios.data_nascimento IS 'Data de nascimento do usuário';
COMMENT ON COLUMN usuarios.endereco IS 'Endereço do Cliente';

CREATE TABLE destinos (
  id INT,
  nome VARCHAR(255) NOT NULL UNIQUE,
  descricao VARCHAR(255) NOT NULL
);

COMMENT ON COLUMN destinos.nome IS 'Nome do destino';
COMMENT ON COLUMN destinos.descricao IS 'Descrição do destino';

CREATE TABLE reservas (
  id INT,
  id_usuario INT,
  id_destino INT,
  data DATE,
  status VARCHAR(255) DEFAULT 'pendente'
);

COMMENT ON COLUMN reservas.id IS 'Identificador único da reserva';
COMMENT ON COLUMN reservas.id_usuario IS 'Referência ao ID do usuário que fez a reserva';
COMMENT ON COLUMN reservas.id_destino IS 'Referência ao ID do destino da reserva';
COMMENT ON COLUMN reservas.data IS 'Data da reserva';
COMMENT ON COLUMN reservas.status IS 'Status da reserva (confirmada, pendente, cancelada, etc.)';

