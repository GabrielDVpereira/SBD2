-- --------  << aula1exer2_GabrielDavi >>  ----------
--
--         SCRIPT DE REMOCAO
--
-- Data Criacao ...........: 28/06/2022
-- Autor(es) ..............: Gabriel Davi Silva Pereira
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula1exer2evolucao4
--
-- Ultimas alteracoes:
--        => Mudando o nome da base de dados
--        => Adicionando tabelas
--        => Alterando o nome da base de dados
--        => Adicionando consultas
--
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
--         => 04 Usuarios
-- 		   => 02 Perfis
--         => 04 Consultas
-- ---------------------------------------

USE aula1exer2evolucao4;

DROP TABLE contem;
DROP TABLE PRODUTO;
DROP TABLE telefone;
DROP TABLE AREA;
DROP TABLE VENDA;
DROP TABLE EMPREGADO;
DROP TABLE GERENTE;
DROP TABLE PESSOA;


DROP ROLE 'gerente';
DROP ROLE 'empregado';


DROP USER 'Joao Castro';
DROP USER 'Saulo Rafael';
DROP USER 'Yan Pereira';
DROP USER 'Antonio Rogerio';
