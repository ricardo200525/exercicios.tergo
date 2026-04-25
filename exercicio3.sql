create database funci;
use funci;
create table funcionarios
(id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50),
    salario DECIMAL(10, 2),
    data_contratacao DATE
);

INSERT INTO funcionarios (nome, cargo, salario, data_contratacao) VALUES ('Lucas Mendes', 'Engenheiro de Software', 7000.00, '2024-01-10');
INSERT INTO funcionarios (nome, cargo, salario, data_contratacao) VALUES ('Mariana Rocha', 'Analista Financeiro', 5500.00, '2023-08-22');
INSERT INTO funcionarios (nome, cargo, salario, data_contratacao) VALUES ('Nicolas Peixoto', 'Gerente de Vendas', 8000.00, '2022-05-15');
INSERT INTO funcionarios (nome, cargo, salario, data_contratacao) VALUES ('Olivia Nunes', 'Assistente Administrativo', 3000.00, '2025-01-05');
INSERT INTO funcionarios (nome, cargo, salario, data_contratacao) VALUES ('Paulo Cardoso', 'Coordenador de Logística', 6500.00, '2021-10-30');
INSERT INTO funcionarios (nome, cargo, salario, data_contratacao) VALUES ('Quirino Silva', 'Técnico de Manutenção', 3800.00, '2024-03-12');
INSERT INTO funcionarios (nome, cargo, salario, data_contratacao) VALUES ('Rafaela Farias', 'Analista de Qualidade', 4200.00, '2023-06-18');
INSERT INTO funcionarios (nome, cargo, salario, data_contratacao) VALUES ('Samuel Moreira', 'Cientista de Dados', 9500.00, '2025-04-01');
INSERT INTO funcionarios (nome, cargo, salario, data_contratacao) VALUES ('Tatiana Borges', 'Arquiteta de Soluções', 11000.00, '2020-11-20');
INSERT INTO funcionarios (nome, cargo, salario, data_contratacao) VALUES ('Ubirajara Gomes', 'Estagiário de TI', 1500.00, '2026-02-15');

DELIMITER $$

CREATE FUNCTION calcular_aumento (salario_func DECIMAL(10,2), percentual_de_aumento DECIMAL(5,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE valor_aumento DECIMAL(10,2);
    

    SET valor_aumento = salario_func * percentual_de_aumento;
    
    RETURN valor_aumento;
END $$

DELIMITER ;

SELECT 
    nome, 
    cargo, 
    salario AS salario_atual,
    -- Executando a função com os dados da tabela
    calcular_aumento(salario, 0.15) AS valor_do_aumento,
    -- Exibindo como ficaria o salário final
    salario + calcular_aumento(salario, 0.15) AS salario_com_aumento
FROM 
    funcionarios;
    
    SELECT 
    nome AS 'Nome do Funcionário',
    salario AS 'Salário Atual',
    
    calcular_aumento(salario, 0.10) AS 'Valor do Aumento',
    

    salario + calcular_aumento(salario, 0.10) AS 'Novo Salário'
FROM 
    funcionarios;
