CREATE TABLE TELEFONE(
  TELEFONE_ID INT AUTO_INCREMENT,
  NUMERO INT,
  TIPO TINYINT(1) COMMENT'0 = CELULAR; 1 = FIXO' DEFAULT 0 CHECK(TIPO IN(0,1)),
  TEM_WHATS BOOLEAN DEFAULT FALSE,
  CONSTRAINT PK_TELEFONE PRIMARY KEY (TELEFONE_ID)
);