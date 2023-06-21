CREATE TABLE TELEFONE_EMPRESA(
	TELEFONE_ID INT,
	EMPRESA_ID INT NOT NULL,
	CONSTRAINT PK_TELEFONE_EMPRESA PRIMARY KEY (TELEFONE_ID),
	CONSTRAINT FK_TELEFONE_EMPRESA_TELEFONE FOREIGN KEY (TELEFONE_ID) REFERENCES TELEFONE(TELEFONE_ID),
	CONSTRAINT FK_TELEFONE_EMPRESA_EMPRESA FOREIGN KEY (EMPRESA_ID) REFERENCES EMPRESA(EMPRESA_ID)
);