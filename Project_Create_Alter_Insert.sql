CREATE TABLE PAIS
(ID_PAIS INT IDENTITY (1,1),
NOME_PAIS VARCHAR(100) UNIQUE NOT NULL,
CONTINENTE VARCHAR(100) NOT NULL,
CONSTRAINT PK_ID_PAIS PRIMARY KEY(ID_PAIS)
)

CREATE TABLE ESTADO
(ID_ESTADO INT IDENTITY(1,1),
NOME_ESTADO VARCHAR(100) NOT NULL,
UF CHAR(2),
PAIS INT,
CONSTRAINT PK_ID_ESTADO PRIMARY KEY (ID_ESTADO),
CONSTRAINT FK_ID_PAIS FOREIGN KEY (PAIS) REFERENCES PAIS(ID_PAIS)
)

CREATE TABLE CIDADE
(ID_CIDADE INT IDENTITY (1,1),
NOME_CIDADE VARCHAR(100) NOT NULL,
ESTADO INT,
RENDA DECIMAL(18,4),
CONSTRAINT PK_ID_CIDADE PRIMARY	KEY(ID_CIDADE),
CONSTRAINT FK_ID_ESTADO FOREIGN KEY (ESTADO) REFERENCES ESTADO(ID_ESTADO)
)

ALTER TABLE CIDADE DROP COLUMN RENDA
ALTER TABLE CIDADE ADD DATA_REGISTRO DATETIME DEFAULT GETDATE()

INSERT INTO PAIS (NOME_PAIS, CONTINENTE)
VALUES
('BRASIL', 'AMÉRICA DO SUL'),
('INDIA', 'ÁSIA')

INSERT INTO ESTADO (NOME_ESTADO, UF, PAIS)
VALUES
('SÃO PAULO', 'SP', 1),
('BAHIA', 'BA', 1),
('MAHARASHTRA', NULL, 2)

INSERT INTO CIDADE (NOME_CIDADE, ESTADO)
VALUES
('MARILIA', 1),
('SALVADOR', 2),
('BOMBAI', 3)

SELECT * FROM PAIS
SELECT * FROM ESTADO
SELECT * FROM CIDADE


/*
Feito por:
Guilherme Midea  RA: 2200770
Amália Pitta     RA:2200519
*/