CREATE TABLE PAGAMENTO_MENSALIDADE(
	MENSALIDADE_ID INT,
	PAGAMENTO_ID INT UNIQUE,
	MES_REFERENCIA VARCHAR(20) CHECK(MES_REFERENCIA IN('JANEIRO', 'FEVEREIRO', 'MARÇO', 'ABRIL', 'MAIO', 'JUNHO', 'JULHO', 'AGOSTO', 'SETEMBRO', 'OUTUBRO', 'NOVEMBRO', 'DEZEMBRO')),
    ANO_REFERENCIA INT,
	CONSTRAINT FK_PAGAMENTO_MENSALIDADE_PAGAMENTO FOREIGN KEY (PAGAMENTO_ID) REFERENCES PAGAMENTO(PAGAMENTO_ID)
);

