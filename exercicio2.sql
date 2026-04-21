create database Eletronicos;
use Eletronicos;


CREATE TABLE perifericos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    modelo VARCHAR(150) NOT NULL,
    marca VARCHAR(50),
    categoria VARCHAR(50),
    preco DECIMAL(10,2),
    sem_fio BOOLEAN,
    quantidade_estoque INT
);

INSERT INTO perifericos (modelo, marca, categoria, preco, sem_fio, quantidade_estoque) VALUES
('Mouse Gamer G Pro X Superlight', 'Logitech', 'Mouse', 799.90, TRUE, 15),
('Teclado Mecânico Kumara K552', 'Redragon', 'Teclado', 249.50, FALSE, 42),
('Headset Gamer Cloud II', 'HyperX', 'Headset', 549.00, FALSE, 20),
('Monitor Gamer Hero 24 144Hz', 'AOC', 'Monitor', 1199.00, FALSE, 8),
('Mouse DeathAdder V2', 'Razer', 'Mouse', 349.99, FALSE, 35),
('Teclado MX Keys Advanced', 'Logitech', 'Teclado', 699.90, TRUE, 12),
('Webcam C920s HD Pro', 'Logitech', 'Webcam', 429.00, FALSE, 25),
('Headset Virtuoso RGB Wireless', 'Corsair', 'Headset', 1299.99, TRUE, 5),
('Microfone QuadCast S', 'HyperX', 'Microfone', 999.00, FALSE, 10),
('Monitor UltraSharp 27 4K', 'Dell', 'Monitor', 3299.00, FALSE, 4);

SELECT categoria, SUM(quantidade_estoque) AS total_unidades_fisicas
FROM perifericos
GROUP BY categoria
ORDER BY total_unidades_fisicas DESC;

SELECT AVG(preco) AS media_preco_wireless
FROM perifericos
WHERE sem_fio = TRUE;

SELECT 
    COUNT(*) AS total_modelos_cadastrados,
    MAX(preco) AS preco_mais_alto,
    MIN(preco) AS preco_mais_baixo
FROM perifericos;
