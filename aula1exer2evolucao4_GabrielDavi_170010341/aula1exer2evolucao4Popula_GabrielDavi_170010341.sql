-- --------  << aula1exer2_GabrielDavi >>  ----------
--
--         SCRIPT DE INSERCAO
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

insert into PESSOA (cpf,nomeCompleto,senha) values (07341233108,'Joao Pedro Castro','joao321'),
													(1234567823,'Saulo Rafael Gomes','saulinho3'),
                                                    (3124122341,'Jessica Freire','vida_mor'),
                                                    (1231367309,'Yan Pereira','pokebola4'),
                                                    (0724132311,'Antonio Rogerio Brito','SantosFC12'),
                                                    (1833414402,'Matheus Rogrigues de Oliveira','thost321'),
                                                    
                                                    (1634213390,'Carlos Santos Pereira','Carlos123'),
                                                    (9832187332,'James Hatfield','metallica'),
                                                    (2341341245,'Yuji Takahashi','squirtle'),
                                                    (8873412091,'Thales Duarte','anime'),
                                                    
                                                    (1534123983,'Ana Clara Silva','Clarinha'),
                                                    (4321338769,'Ana Julia Santos','JuliaSantos'),
                                                    (5312598770,'Mariana Guimarães','MariMari'),
                                                    (6739076213,'Carla da Silva','GPEC');
                                                    
insert into GERENTE (formacaoEscolar,email,idGerente,cpf) values ('superior','joaoCastro@gmail.com',111,07341233108),
													('doutorado','saulete33@hotmail.com',222,1234567823),
                                                    ('superior','jessicagFreire@gmail.com',333,3124122341),
                                                    ('mestrado','carlinhos2@gmail.com',444,1634213390),
                                                    ('superior','metallica03@gmail.com',555,9832187332),
                                                    ('mestrado','pokeYuji@gmail.com',666,2341341245),
                                                    ('superior','Naruto333@gmail.com',777,8873412091);
                                                    
insert into EMPREGADO (matricula,endereco,cpf) values (180100831,'Alameda das Acacias Riviera DF',1231367309),
                                                    (192020333,'Av.Castanheiras Caliandra DF',0724132311),
                                                    (172300232,'Setor Bueno lote 2 GO',1833414402),
                                                    (163241232,'Helio Prates DF',1534123983),
                                                    (197889324,'Av. Paulista SP',4321338769),
                                                    (140976822,'Av. Europa SP',5312598770),
                                                    (203984797,'Rua 10 Vicente Pires DF',6739076213);
                                                    
insert into VENDA (idVenda,dataCompra,quantidade,matricula) values (1,'2022-06-10',10,180100831),
                                                    (2,'2022-07-02',2,192020333),
                                                    (3,'2022-06-05',4,172300232),
                                                    (4,'2022-03-13',1,163241232),
                                                    (5,'2022-04-17',5,197889324),
                                                    (6,'2022-05-25',3,140976822),
                                                    (7,'2022-06-26',5,203984797),
                                                    (8,'2022-06-10',7,180100831);

insert into AREA (idArea, nomeSetor, idGerente) values (1, 'alimentos', 111),
                                                       (2, 'ferramentas', 222),
                                                       (3, 'higiene', 333);
												
insert into PRODUTO (codProd,nome,precoUnit, idArea) values (10,'Sabonete',19.60, 3),
													(11,'Perfume',22.90, 3),
                                                    (12,'Pilhas/bateria',14.00, 2),
                                                    (13,'chocolate',64.00, 1),
                                                    (14,'shampoo',16.00, 3),
                                                    (15,'desodorante',11.00, 3),
                                                    (16,'suco',5.00, 1);

insert into TELEFONE (matricula,telefone) values (180100831,61982460534),
												 (192020333,61999716972),
												 (172300232,61983420782),
												 (163241232,61934124433),
												 (197889324,61923451255),
												 (140976822,61935672344),
												 (203984797,61993283832);

insert into contem (idVenda,codProd) values (1,10),
												 (2,11),
												 (3,12),
                                                 (4,13),
                                                 (5,14),
                                                 (6,15),
                                                 (7,16),
                                                 (8,10);
