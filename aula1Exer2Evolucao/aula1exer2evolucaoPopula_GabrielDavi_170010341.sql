-- --------  << Aula1exerc2Evolucao >>  ----------
--
--            SCRIPT DE INSERCAO (DML)
--
-- Data Criacao ...........: 19/06/2022
-- Autor(es) ..............: Gabriel Davi Silva Pereira
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
( 'ensino médio', 73544843001, 'valdeci@email.com'),
( 'graduacao', 27493236163, 'jucilene@email.com'),
( 'graduacao', 40113832139, 'luciano@email.com');

INSERT INTO EMPREGADO VALUES
(72004123, 54, 11112, 97493546163),
(72003113, 76, 22223, 70113836139),
(72002121, 34, 33334, 44641549130);

INSERT INTO telefone VALUES 
(984843001, 11112),
(983236163, 22223),
(983832139, 33334);

INSERT INTO PRODUTO VALUES
(111, 'Lavanda', 50.0),
(222, 'Desodorante', 12.50),
(333, 'Sabonete', 5.0);

INSERT INTO VENDE VALUES
('2020-04-03', 2, 11112, 111),
('2020-02-22', 2, 11112, 111),
('2020-02-10', 2, 11112, 111);

INSERT INTO supervisiona VALUES
(11112, 73544843001),
(22223, 27493236163),
(33334, 40113832139);

