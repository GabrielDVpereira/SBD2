-- --------  << Aula1exerc2 >>  ----------
--
--            SCRIPT DE CONTROLE (DCL)
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
--         => 02 Perfis
--         => 04 Usuarios
-- ---------------------------------------------------------

USE aula1exer2;

CREATE ROLE IF NOT EXISTS 'GERENTE';
CREATE ROLE IF NOT EXISTS 'EMPREGADO';

GRANT ALL ON aula1exer2.* TO 'GERENTE';

GRANT SELECT ON aula1exer2.* to 'EMPREGADO';
GRANT INSERT, UPDATE, DELETE ON aula1exer2.VENDA to 'EMPREGADO';
GRANT INSERT, UPDATE, DELETE ON aula1exer2.telefone to 'EMPREGADO';

CREATE USER 'valdeciSilva'
IDENTIFIED BY '126F05a30';
GRANT 'GERENTE' TO 'valdeciSilva';

CREATE USER 'jucileneJesus'
IDENTIFIED BY '72S140h601';
GRANT 'GERENTE' TO 'jucileneJesus';

CREATE USER 'gabrielAvelino'
IDENTIFIED BY '42S140k301';
GRANT 'EMPREGADO' TO 'gabrielAvelino';

CREATE USER 'italoFreire'
IDENTIFIED BY '269p004V61';
GRANT 'EMPREGADO' TO 'italoFreire';

FLUSH PRIVILEGES;