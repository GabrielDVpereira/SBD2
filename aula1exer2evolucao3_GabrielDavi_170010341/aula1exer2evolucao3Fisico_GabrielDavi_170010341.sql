-- -------- << aula1exer2evolucao3 >> ----------
--
--                    SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 25/06/2022
-- Autor(es) ..............: Gabriel Davi Silva Pereira
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula1exer2evolucao3
--
--
--
-- PROJETO => 01 Base de Dados
--         => 10 Tabelas
--         => 02 Perfis
--         => 04 Usuarios
--
-- ---------------------------------------------------------

-- BASE DE DADOS
CREATE DATABASE
	IF NOT EXISTS 			aula1exer2evolucao3
	DEFAULT CHARACTER SET 	utf8
	DEFAULT COLLATE 		utf8_general_ci;

USE aula1exer2evolucao3;


-- TABELAS
CREATE TABLE PESSOA
(
    cpf   BIGINT(11)  NOT NULL,
    nome  VARCHAR(50) NOT NULL,
    senha VARCHAR(20) NOT NULL,
    CONSTRAINT PESSOA_PK PRIMARY KEY (cpf)
) ENGINE = InnoDB,
  DEFAULT CHARSET = utf8;

CREATE TABLE AREA
(
    idArea INTEGER     NOT NULL AUTO_INCREMENT,
    area   VARCHAR(30) NOT NULL,
    CONSTRAINT AREA_PK PRiMARY KEY (idArea)
) ENGINE = InnoDB,
  DEFAULT CHARSET = utf8,
  AUTO_INCREMENT = 1;

CREATE TABLE GERENTE
(
    idGerente  INTEGER     NOT NULL AUTO_INCREMENT,
    email      VARCHAR(30) NOT NULL,
    cpf        BIGINT(11)  NOT NULL,
    formacao   VARCHAR     NOT NULL,
    CONSTRAINT GERENTE_PK PRIMARY KEY (idGerente),
    CONSTRAINT PESSOA_GERENTE_FK FOREIGN KEY (cpf) REFERENCES PESSOA (cpf) 
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE = InnoDB,
  DEFAULT CHARSET = utf8,
  AUTO_INCREMENT = 1;

CREATE TABLE EMPREGADO
(
    matricula   INTEGER      NOT NULL,
    cep         INTEGER      NOT NULL,
    cidade      VARCHAR(30)  NOT NULL,
    estado      VARCHAR(30)  NOT NULL,
    pais        VARCHAR(30)  NOT NULL,
    complemento VARCHAR(100) NOT NULL,
    cpf         BIGINT(11)   NOT NULL,
    CONSTRAINT EMPREGADO_PK PRIMARY KEY (matricula),
    CONSTRAINT PESSOA_EMPREGADO_FK FOREIGN KEY (cpf) REFERENCES PESSOA (cpf) 
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE = InnoDB,
  DEFAULT CHARSET = utf8;

CREATE TABLE telefone
(
    matricula INTEGER NOT NULL,
    telefone  INTEGER NOT NULL,
    CONSTRAINT PESSOA_telefone_FK FOREIGN KEY (matricula) REFERENCES EMPREGADO (matricula)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE = InnoDB,
  DEFAULT CHARSET = utf8;


CREATE TABLE VENDA
(
    idVenda   INTEGER NOT NULL AUTO_INCREMENT,
    dataVenda DATE    NOT NULL,
    matricula INTEGER NOT NULL,
    qtdProduto INTEGER NOT NULL,
    codigoProduto INTEGER NOT NULL,
    CONSTRAINT VENDA_PK PRIMARY KEY (idVenda),
    CONSTRAINT EMPREGADO_VENDA_FK FOREIGN KEY (matricula) REFERENCES EMPREGADO (matricula)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT PRODUTO_VENDA_FK FOREIGN KEY (codigoProduto) REFERENCES PRODUTO (codigoProduto)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
) ENGINE = InnoDB,
  DEFAULT CHARSET = utf8,
  AUTO_INCREMENT = 1;

CREATE TABLE PRODUTO
(
    codigoProduto BIGINT(11)  NOT NULL,
    nome          VARCHAR(30) NOT NULL,
    precoProduto  FLOAT       NOT NULL,
    CONSTRAINT PRODUTO_PK PRIMARY KEY (codigoProduto)
) ENGINE = InnoDB,
  DEFAULT CHARSET = utf8;

CREATE TABLE GERENTE_AREA
(
    idArea INTEGER   NOT NULL,
    cpf    INTEGER   NOT NULL,
    CONSTRAINT AREA_FK FOREIGN KEY (idArea) REFERENCES AREA (idArea)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT GERENTE_FK FOREIGN KEY (cpf) REFERENCES GERENTE (cpf)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE = InnoDB,
  DEFAULT CHARSET = utf8;

CREATE TABLE EMPREGADO_AREA
(
    idArea INTEGER   NOT NULL,
    matricula    INTEGER   NOT NULL,
    CONSTRAINT AREA_FK FOREIGN KEY (idArea) REFERENCES AREA (idArea)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT EMPREGADO_FK FOREIGN KEY (matricula) REFERENCES EMPREGADO (matricula)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
) ENGINE = InnoDB,
  DEFAULT CHARSET = utf8;

CREATE TABLE PRODUTO_AREA
(
    idArea INTEGER   NOT NULL,
    codigoProduto    INTEGER   NOT NULL,
    CONSTRAINT AREA_FK FOREIGN KEY (idArea) REFERENCES AREA (idArea)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT PRODUTO_FK FOREIGN KEY (codigoProduto) REFERENCES PRODUTO (codigoProduto)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
) ENGINE = InnoDB,
  DEFAULT CHARSET = utf8;

