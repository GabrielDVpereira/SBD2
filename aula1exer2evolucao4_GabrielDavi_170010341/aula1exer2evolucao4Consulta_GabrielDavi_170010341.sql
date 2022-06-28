-- --------  << aula1exer2_GabrielDavi >>  ----------
--
--         SCRIPT DE CONSULTA
--
-- Data Criacao ...........: 28/06/2022
-- Autor(es) ..............: Gabriel Davi Silva Pereira
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula1exer2evolucao4
--
--
--
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
--         => 04 Usuarios
-- ---------------------------------------

USE aula1exer2evolucao4;

-- A) Consultar todas as vendas feitas por um empregado específico
-- que será definido pelo usuário através da chave primária do empregado nessa pesquisa (usuário definirá um empregado específico);

SELECT v.* ,nomeCompleto as empregado
  FROM VENDA as v
  inner join PESSOA as p on p.cpf = v.cpf
 WHERE matricula = '180100831';
 
SELECT v.* ,nomeCompleto as empregado
  FROM VENDA as v, PESSOA as p 
 WHERE p.cpf = v.cpf and matricula = '180100831';
 
 -- B) Relacionar todos os dados de uma venda específica com todas as informações dos produtos comercializados 
 -- por esta venda (usuário definirá uma venda específica);
 
 SELECT v.* ,p.*
  FROM VENDA as v
  inner join contem as d on d.idVenda = v.idVenda
  inner join PRODUTO as p on d.codProd = p.codProd
 WHERE v.idVenda = '5'
 ORDER BY v.dataCompra;
 
 -- C) Mostrar todos os empregados da empresa que não sejam gerentes em ordem alfabética crescente;
 
SELECT p.cpf, p.nomeCompleto, e.matricula 
  FROM PESSOA as p
  inner join EMPREGADO as e on e.cpf = p.cpf
 order by p.nomeCompleto;
 
 -- D) Consultar e mostrar a quantidade de CADA produto que foi vendido por esta empresa 
 -- (lembrar que só o código do produto não identifica qual produto é para funcionários da empresa).
 
  SELECT SUM(v.quantidade) as quantidade, p.nome,p.codProd
  FROM VENDA as v
  inner join contem as d on d.idVenda = v.idVenda
  inner join PRODUTO as p on d.codProd = p.codProd
group by p.nome;
 