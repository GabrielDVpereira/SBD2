-- --------  << Aula1exerc2Evolucao >>  ----------
--
--            SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 19/06/2022
-- Autor(es) ..............: Gabriel Davi Silva Pereira
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula1exer2
--
-- Ultimas Alteracoes
--
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
--
-- -------------------------------------------------------
CREATE DATABASE IF NOT EXISTS aula1exer2;

USE aula1exer2;

CREATE TABLE PESSOA (
    cpf BIGINT NOT NULL,
    nome VARCHAR(30) NOT NULL,
    senha VARCHAR(15) NOT NULL,
    
    CONSTRAINT PESSOA_PK Primary Key (cpf)
)ENGINE = InnoDB;

CREATE TABLE GERENTE (
    formacaoEscolar VARCHAR(20) NOT NULL,
    cpf BIGINT NOT NULL,
    email VARCHAR(30) NOT NULL,

	CONSTRAINT GERENTE_PK Primary Key (matricula, cpf)
)ENGINE = InnoDB;

CREATE TABLE EMPREGADO (
    cep INT NOT NULL,
    numero INT NOT NULL,
    matricula INT NOT NULL,
    cpf BIGINT NOT NULL,
    
    CONSTRAINT EMPREGADO_PK Primary Key (matricula, cpf)
)ENGINE = InnoDB;

CREATE TABLE PRODUTO (
    codControle INT NOT NULL,
    nome VARCHAR(30) NOT NULL,
    precoUnitario FLOAT NOT NULL,
    
    CONSTRAINT PRODUTO_PK Primary Key (codControle)
)ENGINE = InnoDB;

CREATE TABLE VENDE (
    dataVenda DATE NOT NULL,
    quantidadeProduto INT NOT NULL,
    matricula INT NOT NULL,
    codControle INT NOT NULL,
    
    CONSTRAINT VENDA_EMPREGADO_FK Foreign Key (matricula) REFERENCES EMPREGADO (matricula),
    CONSTRAINT VENDA_PK Foreign Key (codControle) REFERENCES PRODUTO (codControle)
)ENGINE = InnoDB;

CREATE TABLE telefone (
    telefone INT NOT NULL,
    matricula INT NOT NULL,
    
    CONSTRAINT telefone_EMPREGADO_FK Foreign Key (matricula) REFERENCES EMPREGADO (matricula)
)ENGINE = InnoDB;

CREATE TABLE supervisiona (
    matriculaEmpregado INT NOT NULL,
    cpfGerente INT NOT NULL,
    
    CONSTRAINT supervisiona_EMPREGADO_FK Foreign Key (matriculaEmpregado) REFERENCES EMPREGADO (matricula),
    CONSTRAINT supervisiona_GERENTE_FK Foreign Key (cpfGerente) REFERENCES GERENTE (cpf)
)ENGINE = InnoDB;
