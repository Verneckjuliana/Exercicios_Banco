CREATE DATABASE escola2;
USE escola2;

-- Criação da tabela de Professores
CREATE TABLE Professor (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL
);

-- Criação da tabela de Turmas
CREATE TABLE Turma (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    numero VARCHAR(50) NOT NULL,
    nome VARCHAR(255) NOT NULL,
    id_professor INT,
    FOREIGN KEY (id_professor) REFERENCES Professor(id_professor)
);

-- Criação da tabela de Atividades
CREATE TABLE atividade (
    id_atividade INT AUTO_INCREMENT PRIMARY KEY,
    numero VARCHAR(50) NOT NULL,
    descricao TEXT NOT NULL,
    id_turma INT,
    FOREIGN KEY (id_turma) REFERENCES turma(id_turma)
);

-- exercicios
-- 1 (criação das tabelas)
-- 2
INSERT INTO Professor(id_professor, nome, email, senha)
VALUES
('1', 'João Silva', 'joao@example.com', '123456'),
('2', 'Márcia', 'marcia@example.com', '1234'),
('3', 'Lindomar', 'lindomar@example.com', '123'),
('4', 'Fernanda', 'fernanda@example.com', '1243');

-- 3
INSERT INTO turma(id_turma, numero, nome, id_professor)
VALUES
('1', 'T01', 'Matemática Avançada', '3'),
('2', 'T02', 'Banco de Dados', '2'),
('3', 'T03', 'Biologia', '1');

-- 4
INSERT INTO atividade(id_atividade, numero, descricao, id_turma)
VALUES
('1', 'A001', 'Prova de Matemática', '2'),
('2', 'A002', 'Exercicios', '1'),
('3', 'A003', 'Atividade Avaliativa', '3');

-- 5
INSERT INTO Professor(id_professor, nome, email, senha)
VALUES
('5', 'Ana Oliveira', 'ana@example.com', 'senha123');

-- 6
INSERT INTO turma(id_turma, numero, nome, id_professor)
VALUES
('4', 'T02', 'Física Experimental', '4');

-- 7
SELECT * 
FROM professor WHERE id_professor = 1;

-- 8
SELECT turma.*, professor.nome
FROM turma
INNER JOIN professor ON turma.id_professor = professor.id_professor;

-- 9
SELECT atividade.*, turma.numero
FROM atividade
INNER JOIN turma ON atividade.id_turma = turma.id_turma;

-- 10
UPDATE professor
SET email = "carlos@example.com"
WHERE id_professor = 2;
-- teste
SELECT * FROM professor;

-- 11
UPDATE turma
SET nome = "Inglês Intermediário"
WHERE id_turma = 3;
-- teste
SELECT * FROM turma;

-- 12
UPDATE atividade
SET descricao = "Trabalho de Laboratório"
WHERE id_atividade = 1;
-- teste
SELECT * FROM atividade;

-- 13
UPDATE professor
SET senha = 5555
WHERE email = 'joao@example.com';
-- teste
SELECT * FROM professor;

-- 14
UPDATE turma
SET nome = "Química Orgânica"
WHERE id_turma = 3;
-- teste
SELECT * FROM turma;

-- 15
DELETE FROM Professor
WHERE email = "ana@example.com";
-- teste
SELECT * FROM professor;

-- 16
DELETE FROM atividade
WHERE id_turma = 1;

DELETE FROM turma 
WHERE id_turma = 1;

-- 17
-- (deletando a coluna que eu tinha colocado a mais por contra propria no exercicio kkkk)
DELETE FROM professor
WHERE id_professor = 4;

-- resposta
SELECT * FROM professor;

-- 18
-- (deletando a coluna que eu tinha colocado a mais por contra propria no exercicio kkkk)
DELETE FROM atividade
WHERE id_turma = 2;
DELETE FROM turma 
WHERE id_turma = 2;
DELETE FROM atividade
WHERE id_turma = 4;
DELETE FROM turma 
WHERE id_turma = 4;

-- (acabei excluindo uma a mais)
INSERT INTO turma(id_turma, numero, nome, id_professor)
VALUES
('3', 'T02', 'Física Experimental', '3');


-- (alterando o ID, pois como coloquei a mais nao tinha usado o mesmo ID do exercicio)
UPDATE turma
SET id_turma = 2
WHERE id_turma = 3;

-- resposta
SELECT * FROM turma;

-- 19
-- (acabei deletando sem querer nas mudanças de ID)
INSERT INTO atividade(id_atividade, numero, descricao, id_turma)
VALUES
('1', 'A001', 'Trabalho de Laboratório', '2');

-- resposta
SELECT * FROM atividade;


