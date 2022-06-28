-- --------  << aula1exer2_GabrielDavi >>  ----------
--
--         SCRIPT DE CONTROLE DE ACESSO
--
-- Data Criacao ...........: 28/06/2022
-- Autor(es) ..............: Gabriel Davi Silva Pereira
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula1exer2evolucao4
--
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

CREATE ROLE IF NOT EXISTS 'gerente';
CREATE ROLE IF NOT EXISTS 'empregado';

GRANT ALL ON aula1exer2evolucao4.* TO 'gerente';

GRANT SELECT ON aula1exer2evolucao4.* to 'empregado';
GRANT INSERT, UPDATE, DELETE ON aula1exer2evolucao4.telefone to 'empregado';
GRANT INSERT ON aula1exer2evolucao4.VENDA to 'empregado';
GRANT INSERT ON aula1exer2evolucao4.produto to 'empregado';
GRANT INSERT ON aula1exer2evolucao4.contem to 'empregado';

-- Gerente
CREATE USER 'Joao Castro'
IDENTIFIED BY 'gerente_1';
GRANT 'gerente' TO 'Joao Castro';

CREATE USER 'Saulo Rafael'
IDENTIFIED BY 'gerente_2';
GRANT 'gerente' TO 'Saulo Rafael';

-- Empregado
CREATE USER 'Yan Pereira'
IDENTIFIED BY 'empregado_1';
GRANT 'empregado' TO 'Yan Pereira';

CREATE USER 'Antonio Rogerio'
IDENTIFIED BY 'empregado_2';
GRANT 'empregado' TO 'Antonio Rogerio';

FLUSH PRIVILEGES;