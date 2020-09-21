CREATE TABLE Usuario (
  nombre VARCHAR(50) NOT NULL,
  usuario VARCHAR(50) NOT NULL,
  contraseña  VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  codigo VARCHAR(50) NOT NULL,
  CONSTRAINT codigo PRIMARY KEY (codigo), --clave primaria
  CONSTRAINT usuario UNIQUE (usuario),
);
