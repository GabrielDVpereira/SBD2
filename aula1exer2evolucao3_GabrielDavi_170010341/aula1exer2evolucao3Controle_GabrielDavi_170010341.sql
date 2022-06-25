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

-- PERFIS
CREATE ROLE 'gerente', 'empregado';

-- USUARIOS
CREATE USER 'rafael' IDENTIFIED BY '1rafael2';
CREATE USER 'julia' IDENTIFIED BY '3julia4';
CREATE USER 'jorge' IDENTIFIED BY '1jorge2';
CREATE USER 'ana' IDENTIFIED BY '3ana4';

-- PRIVILEGIOS
GRANT ALL ON aula1exer2.* TO 'gerente';
GRANT SELECT, INSERT ON aula1exer2.* TO 'empregado';

GRANT 'gerente' TO 'rafael';
GRANT 'gerente' TO 'julia';
GRANT 'empregado' TO 'jorge';
GRANT 'empregado' TO 'ana';