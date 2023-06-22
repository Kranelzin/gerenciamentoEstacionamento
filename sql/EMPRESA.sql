CREATE TABLE EMPRESA(
  EMPRESA_ID INT AUTO_INCREMENT,
  NOME_RAZAO_SOCIAL VARCHAR(50) NOT NULL,
  CPF_CNPJ VARCHAR(14) UNIQUE NOT NULL,
  CONSTRAINT PK_EMPRESA PRIMARY KEY (EMPRESA_ID)
);