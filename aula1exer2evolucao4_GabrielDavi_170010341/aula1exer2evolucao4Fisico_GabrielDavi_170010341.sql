-- --------  << aula1exer2_GabrielDavi >>  ----------
--
--         SCRIPT DE CRIACAO
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
--        => Mudando nome de tabelas
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
--         => 04 Usuarios
-- 		   => 02 Perfis
--         => 04 Consultas
-- ---------------------------------------

CREATE DATABASE IF NOT EXISTS aula1exer2evolucao4;
USE aula1exer2evolucao4;


CREATE TABLE PESSOA (
    cpf BIGINT NOT NULL,
    nomeCompleto VARCHAR (30) NOT NULL,
    senha VARCHAR (15) NOT NULL,
    
    constraint PESSOA_PK primary key (cpf)
)engine InnoDB;

CREATE TABLE GERENTE (
    formacaoEscolar VARCHAR (30) NOT NULL,
    email VARCHAR (50) NOT NULL,
    idGerente INT NOT NULL,
    cpf BIGINT NOT NULL,
    
    constraint GERENTE_PF primary key (idGerente),
    constraint GERENTE_PESSOA_FK foreign key (cpf) references PESSOA (cpf)
		ON DELETE RESTRICT 
        ON UPDATE RESTRICT
)engine InnoDB;

CREATE TABLE EMPREGADO (
    matricula INT NOT NULL,
    endereco VARCHAR (80) NOT NULL,
    cpf BIGINT NOT NULL,
    
    constraint EMPREGADO_PK primary key (matricula),
    constraint EMPREGADO_PESSOA_FK foreign key (cpf) references PESSOA (cpf)
		ON DELETE RESTRICT 
        ON UPDATE RESTRICT
)engine InnoDB;


CREATE TABLE VENDA (
    idVenda INT NOT NULL,
    dataCompra DATE NOT NULL,
    quantidade INT NOT NULL,
    matricula INT NOT NULL,
    cpf BIGINT NOT NULL,
    
    constraint VENDA_PK primary key (idVenda),
    constraint VENDA_EMPREGADO_FK foreign key (matricula) references EMPREGADO (matricula)
		ON DELETE RESTRICT 
        ON UPDATE RESTRICT
)engine InnoDB;

CREATE TABLE AREA (
    idArea INT NOT NULL,
    nomeSetor VARCHAR (30) NOT NULL,
    idGerente INT NOT NULL,
    cpf_Gerente BIGINT NOT NULL,
    
    constraint AREA_PK primary key (idArea),
    constraint AREA_GERENTE_FK foreign key (idGerente) references GERENTE (idGerente)
		on delete restrict
        on update restrict
);

CREATE TABLE telefone (
    matricula INT NOT NULL UNIQUE,
    telefone BIGINT NOT NULL,
    
    constraint telefone_EMPREGADO_FK foreign key(matricula) references EMPREGADO (matricula)
		on delete restrict
        on update restrict
);

CREATE TABLE PRODUTO (
    codProd INT NOT NULL,
    nome VARCHAR (20) NOT NULL,
    precoUnit DECIMAL (9,2) NOT NULL,
    
    constraint PRODUTO_PK primary key (codProd)
)engine InnoDB;


CREATE TABLE contem (
    idVenda INT NOT NULL,
    codProd INT NOT NULL,
    constraint contem_VENDA_FK foreign key (idVenda) references VENDA (idVenda)
		ON DELETE RESTRICT 
        ON UPDATE RESTRICT,
    constraint contem_PRODUTO_FK foreign key (codProd) references PRODUTO (codProd)
		ON DELETE RESTRICT 
        ON UPDATE RESTRICT
)engine InnoDB;

