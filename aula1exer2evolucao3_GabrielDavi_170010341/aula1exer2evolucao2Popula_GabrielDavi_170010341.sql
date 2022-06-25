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
INSERT INTO PESSOA
VALUES (36063051171, 'Jorge Vasconcelos', '1823989'),
       (81453682198, 'Ana Julia Fernandes', '71948957'),
       (29982651131, 'Bianca Machado', '78748375'),
       (78536412510, 'Rafael Vasconcelos', '73001210'),
       (96873021452, 'Julia Fernandes', '96387412'),
       (80341687512, 'Bonobo Machado', '80907021'),
       (76412547845, 'Arnaldo José Filho', '765874'),
       (79845121454, 'Jorge Arana', '1845989'),
       (79841324564, 'Roberto Silva', '71948957'),
       (05105115155, 'Josefá Soares', '787445375'),
       (68484053054, 'Rafael Matos', '454501210'),
       (30480518613, 'Agnaldo Pereira', '8765432'),
       (04031842122, 'Marcela Matos', '0504505'),
       (64740321845, 'Neymar Silva Junior', '9070808');



INSERT INTO AREA (area)
VALUES ('eletrodomésticos'),
       ('informática'),
       ('móveis'),
       ('horticultura'),
       ('açougue'),
       ('cozinha'),
       ('automóveis');

INSERT INTO GERENTE (email, cpf, formacao, idArea)
VALUES ('jose@email.com', 36063051171, 'superior', 1),
       ('ana@email.com', 81453682198, 'superior', 2),
       ('bianca@email.com', 29982651131, 'superior', 3),
       ('brasill@email.com', 78536412510, 'superior', 4),
       ('alemanha@email.com', 96873021452, 'superior', 5),
       ('argentina@email.com', 80341687512, 'superior', 6),
       ('bonito@gmail.com', 76412547845, 'superior', 7);


INSERT INTO EMPREGADO
VALUES (15421, 72351854, 'Brasília', 'DF', 'Brasil', 'rua azul', 79845121454),
       (80451, 76257854, 'Brasília', 'DF', 'Brasil', 'rua vermelha', 79841324564),
       (80745, 85478512, 'Goiânia', 'GO', 'Brasil', 'quadra amarela', 05105115155),
       (80800, 72351854, 'Brasília', 'DF', 'Brasil', 'rua azul', 68484053054),
       (98745, 76257854, 'Brasília', 'DF', 'Brasil', 'rua vermelha', 30480518613),
       (40451, 85478512, 'Goiânia', 'GO', 'Brasil', 'quadra amarela', 04031842122),
       (33333, 98754655, 'Rondonia', 'RO', 'Brasil', 'sem rua', 64740321845);


INSERT INTO telefone
VALUES (15421, 96587412),
       (80451, 98763214),
       (80745, 56874521),
       (80800, 96587412),
       (98745, 98763214),
       (40451, 56874521),
       (33333, 78541211);


INSERT INTO PRODUTO
VALUES (79648214632, 'vaso', 80.00),
       (96325874521, 'flor', 60.00),
       (90647845120, 'pneu', 30.00),
       (84541351351, 'blusa', 80.00),
       (46515313135, 'bermuda', 60.00),
       (30178420154, 'quadro', 30.00),
       (68484684544, 'mesa', 100.00);

INSERT INTO VENDA (dataVenda, matricula, codigoProduto, qtdVenda)
VALUES ('2018-01-15', 15421, 79648214632),
       ('2016-02-02', 80451, 90647845120),
       ('2013-10-30', 80745, 84541351351),
       ('2018-01-15', 80800, 46515313135),
       ('2016-02-02', 98745, 30178420154),
       ('2013-10-30', 40451, 46515313135),
       ('2013-10-30', 33333, 68484684544);

INSERT INTO GERENTE_AREA VALUES 
    (36063051171, 1),
    (76412547845, 2),
    (79841324564, 3),
    (36063051171, 4),
    (30480518613, 5),
    (68484053054, 6),
    (04031842122, 7);

INSERT INTO EMPREGADO_AREA VALUES
    (15421, 1),
    (80451, 2),
    (80745, 3),
    (80800, 4),
    (98745, 5),
    (40451, 6),
    (33333, 7);

INSERT INTO PRODUTO_AREA VALUES
    (79648214632, 1),
    (96325874521, 2),
    (90647845120, 3),
    (84541351351, 4),
    (46515313135, 5),
    (30178420154, 6),
    (68484684544, 7);


