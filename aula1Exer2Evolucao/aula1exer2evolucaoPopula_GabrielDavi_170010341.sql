-- --------  << Aula1exerc2 >>  ----------
--
--            SCRIPT DE INSERCAO (DML)
--
-- Data Criacao ...........: 10/06/2022
-- Autor(es) ..............: Joao Victor Valadao de Brito
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula1exer2
--
-- Ultimas Alteracoes
--
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
--
-- -------------------------------------------------------

USE aula1exer2;


INSERT INTO PESSOA VALUES
(73544843001, 'Valdeci Silva Pereira', '126F05a30'),
(27493236163, 'Jucilene de Jesus', '72S140h601'),
(40113832139, 'Luciano Camargos', '769j004V67'),
(97493546163, 'Gabriel Avelino', '42S140k301'),
(70113836139, 'Italo Freire', '269p004V61'),
(44641549130, 'Rosane Vilela', '780a480G30');

INSERT INTO GERENTE VALUES
(11111, 'ensino médio', 73544843001, 'valdeci@email.com'),
(22222, 'graduacao', 27493236163, 'jucilene@email.com'),
(33333, 'graduacao', 40113832139, 'luciano@email.com');

INSERT INTO EMPREGADO VALUES
(72004123, 54, 1, 11112, 97493546163),
(72003113, 76, 1, 22223, 70113836139),
(72002121, 34, 1, 33334, 44641549130);

INSERT INTO telefone VALUES 
(984843001, 11112),
(983236163, 22223),
(983832139, 33334);

INSERT INTO PRODUTO VALUES
(111, 'Lavanda', 50.0),
(222, 'Desodorante', 12.50),
(333, 'Sabonete', 5.0);

INSERT INTO VENDA VALUES
('2020-04-03', 2, 10.0, 100, 11112),
('2020-02-22', 2, 10.0, 101, 22223),
('2020-02-10', 2, 10.0, 102, 33334);

INSERT INTO supervisiona VALUES
(11112, 11111),
(22223, 22222),
(33334, 33333);

INSERT INTO descreve VALUES
(100, 111),
(101, 222),
(102, 333);