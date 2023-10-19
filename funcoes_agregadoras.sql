SELECT COUNT(*) FROM usuarios;

SELECT id, nome, email, data_nascimento, AGE(CURRENT_TIMESTAMP, data_nascimento) idade FROM usuarios;

-- Media da idade dos usuarios
SELECT AVG(AGE(CURRENT_TIMESTAMP, data_nascimento)) AS media_idade
FROM usuarios;

-- Soma da idade dos usuarios
SELECT SUM(AGE(CURRENT_TIMESTAMP, data_nascimento)) AS soma_idade
FROM usuarios;

-- Menor Idade
SELECT MIN(AGE(CURRENT_TIMESTAMP, data_nascimento)) AS menor_idade
FROM usuarios;

-- Maior Idade
SELECT MAX(AGE(CURRENT_TIMESTAMP, data_nascimento)) AS maior_idade
FROM usuarios;

-- Calcula quantidade de reservas por destino --
SELECT d.nome, COUNT(*) AS total_reservas 
	FROM reservas r
    INNER JOIN destinos d
    ON r.id_destino = d.id
	GROUP BY d.nome;
	
SELECT * FROM reservas;

-- Limit
SELECT id_destino, COUNT(*) AS total_reservas FROM reservas GROUP BY id_destino LIMIT 10 OFFSET 0;
-- LIMIT restringe a quantidade de registros retornados pela query e OFFSET pula o registro a partir do valor

SELECT id_destino, COUNT(*) AS total_reservas FROM reservas GROUP BY id_destino LIMIT 1;

-- Ordenação
SELECT nome
FROM usuarios
ORDER BY nome;

SELECT nome, data_nascimento
FROM usuarios
ORDER BY data_nascimento, nome;

SELECT nome, data_nascimento, EXTRACT(YEAR FROM AGE(CURRENT_TIMESTAMP, data_nascimento)) idade
FROM usuarios
ORDER BY data_nascimento, nome DESC;



