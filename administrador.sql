/*
DROP TABLESPACE estratego
  INCLUDING CONTENTS AND DATAFILES;
*/

--Cria��o do agrupamento de elementos do banco de dados
CREATE TABLESPACE estratego
   DATAFILE 'dtf_estratego.dat' SIZE 40M
   ONLINE;

--Cria��o da tabela
CREATE TABLE funcionario(
  cpf   CHAR(11)    NOT NULL,
  nome  VARCHAR(50) NOT NULL,
  idade INTEGER     NOT NULL,
  CONSTRAINT pk_funcionario
    PRIMARY KEY(cpf)
) TABLESPACE estratego;

--Inser��o de registros na tabela funcionario
INSERT INTO funcionario(cpf,nome,idade)
  VALUES('11111111111','Jo�o',50);

INSERT INTO funcionario(cpf,nome,idade)
  VALUES('22222222222','Maria',15);
  
INSERT INTO funcionario(cpf,nome,idade)
  VALUES('33333333333','Eduardo',30);

ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;

--Cria��o do usu�rio brasil
CREATE USER brasil
  IDENTIFIED BY 123
  DEFAULT TABLESPACE estratego;

----Atribuindo permiss�o para se conectar na base de dados e manipular dados
GRANT CONNECT TO brasil;
GRANT ALL ON funcionario TO brasil;

--Cria��o do usu�rio argentina
CREATE USER argentina
  IDENTIFIED BY 123
  DEFAULT TABLESPACE estratego;

--Atribuindo permiss�o para se conectar na base de dados e manipular dados
GRANT CONNECT TO argentina;
GRANT ALL ON funcionario TO argentina;

SELECT * FROM sys.funcionario;

--Monitoramento de transa��es
SELECT status,
       start_date,
       start_time,
       name
  FROM v$transaction;
  
  
  
  
  
  