CREATE TABLE EMPRESA(
  EMPRESA_ID INT AUTO_INCREMENT,
  NOME_RAZAO_SOCIAL VARCHAR(50),
  CPF_CNPJ INT(14),
  CONSTRAINT PK_EMPRESA PRIMARY KEY (EMPRESA_ID)
);