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

SELECT * FROM VENDA WHERE matricula = 15421;

SELECT * FROM VENDA WHERE idVenda = 1 INNER JOIN PRODUTO ON VENDA.codigoProduto = PRODUTO.codigoProduto;

SELECT * FROM EMPREGADO LEFT JOIN GERENTE ON EMPREGADO.cpf = GERENTE.cpf WHERE  GERENTE.cpf = NULL

SELECT nome,codigoProduto, SUM(qtdProduto) FROM VENDA GROUP BY (codigoProduto)