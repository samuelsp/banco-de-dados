-- Update --
UPDATE usuarios SET endereco = 'Nova Rua, 123' WHERE email = 'joao@example.com';
select * from usuarios;

-- delete --
select * from reservas;
DELETE FROM reservas WHERE status = 'cancelada';