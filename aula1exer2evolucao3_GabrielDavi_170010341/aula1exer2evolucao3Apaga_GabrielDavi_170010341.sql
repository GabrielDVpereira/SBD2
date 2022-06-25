-- -------- << aula1exer2 >> ----------
--
--                    SCRIPT DE POPULACAO (DML)
--
-- Data Criacao ...........: 25/06/2022
-- Autor(es) ..............: Gabriel Davi
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula1exer2evolucao3
--
--
-- PROJETO => 01 Base de Dados
--         => 10 Tabelas
--         => 02 Perfis
--         => 04 Usuarios
--
-- ---------------------------------------------------------

-- BASE DE DADOS
USE aula1exer2evolucao3;

-- TABELAS
DROP TABLE PRODUTO_AREA;
DROP TABLE EMPREGADO_AREA;
DROP TABLE GERENTE_AREA;
DROP TABLE PRODUTO;
DROP TABLE VENDA;
DROP TABLE telefone;
DROP TABLE EMPREGADO;
DROP TABLE GERENTE;
DROP TABLE AREA;
DROP TABLE PESSOA;

-- PERFIS
DROP ROLE 'gerente';
DROP ROLE 'empregado';

-- USUARIOS
DROP USER 'rafael';
DROP USER 'julia';
DROP USER 'jorge';
DROP USER 'ana';