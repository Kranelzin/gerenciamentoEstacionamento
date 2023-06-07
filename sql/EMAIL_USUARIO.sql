CREATE TABLE EMAIL_USUARIO(
  EMAIL_ID INT,
  USUARIO_ID INT,
  CONSTRAINT PK_EMAIL_USUARIO PRIMARY KEY (EMAIL_ID),
  CONSTRAINT FK_EMAIL_USUARIO_EMAIL FOREIGN KEY (EMAIL_ID) REFERENCES EMAIL(EMAIL_ID),
  CONSTRAINT FK_EMAIL_USUARIO_USUARIO FOREIGN KEY (USUARIO_ID) REFERENCES USUARIO(USUARIO_ID)
);