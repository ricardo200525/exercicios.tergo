create database empresa;
use empresa;
create table funcionarios (
 nome varchar(100),
 email varchar(200),
 sexo varchar(10),
 admissao varchar(10),
 salario integer,
 cargo varchar(100) );
 
 create table endereco (
 pais varchar (50),
 estado varchar(50),
 rua varchar(100),
 numCasa int,
 cep varchar(9) 
 );
 INSERT INTO funcionarios (nome, email, sexo, admissao, salario, cargo) VALUES
('Ricardo Souza', 'ricardo@gmail.com', 'Masculino', '2023-01-10', 3000, 'Analista Jr'),
('Maria Silva', 'maria@gmail.com', 'Feminino', '2022-03-15', 4500, 'Desenvolvedora'),
('João Pedro', 'joao@gmail.com', 'Masculino', '2021-07-20', 5000, 'Analista Pleno'),
('Ana Costa', 'ana@gmail.com', 'Feminino', '2020-11-05', 7000, 'Gerente'),
('Lucas Lima', 'lucas@gmail.com', 'Masculino', '2023-05-01', 2800, 'Estagiário'),
('Fernanda Alves', 'fernanda@gmail.com', 'Feminino', '2022-09-12', 4800, 'UX Designer'),
('Carlos Mendes', 'carlos@gmail.com', 'Masculino', '2021-02-25', 5200, 'Dev Backend'),
('Juliana Rocha', 'juliana@gmail.com', 'Feminino', '2020-06-18', 7500, 'Coordenadora'),
('Bruno Martins', 'bruno@gmail.com', 'Masculino', '2023-08-30', 3200, 'Suporte TI'),
('Patricia Gomes', 'patricia@gmail.com', 'Feminino', '2022-12-10', 4600, 'Analista QA');

INSERT INTO endereco (pais, estado, rua, numCasa, cep) VALUES
('Brasil', 'SP', 'Rua das Flores', 123, '01001-000'),
('Brasil', 'RJ', 'Av. Atlântica', 456, '22010-000'),
('Brasil', 'MG', 'Rua Afonso Pena', 789, '30130-000'),
('Brasil', 'RS', 'Rua dos Andradas', 321, '90020-000'),
('Brasil', 'PR', 'Rua XV de Novembro', 654, '80020-310'),
('Brasil', 'BA', 'Av. Sete de Setembro', 987, '40060-000'),
('Brasil', 'SC', 'Rua Felipe Schmidt', 147, '88010-001'),
('Brasil', 'PE', 'Rua da Aurora', 258, '50050-000'),
('Brasil', 'CE', 'Av. Beira Mar', 369, '60165-121'),
('Brasil', 'DF', 'Eixo Monumental', 741, '70070-350');



SELECT funcionarios.nome, funcionarios.cargo, endereco.rua, endereco.estado
FROM funcionarios
INNER JOIN endereco ON funcionarios.id = endereco.id_funcionario;

SELECT funcionarios.nome, funcionarios.cargo, endereco.rua, endereco.estado
FROM funcionarios
LEFT JOIN endereco ON funcionarios.id = endereco.id_funcionario;

SELECT funcionarios.nome, funcionarios.cargo, endereco.rua, endereco.estado
FROM funcionarios
RIGHT JOIN endereco ON funcionarios.id = endereco.id_funcionario;

SELECT nome, email, cargo 
FROM funcionarios
ORDER BY nome ASC;
