DROP TABLE Usuario;
DROP TABLE Grupo;
DROP TABLE Pertenece;
DROP TABLE Tarea;


CREATE TABLE Usuario (
  nombre VARCHAR(50) NOT NULL,
  usuario VARCHAR(50) NOT NULL UNIQUE,
  contraseña  VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  codigo VARCHAR(50) PRIMARY KEY
);

CREATE TABLE Grupo (
  nombre VARCHAR(50) NOT NULL,
  codigo VARCHAR(50) PRIMARY KEY,
  codigo_admin VARCHAR(50) NOT NULL,
  tarea VARCHAR(50),
);

CREATE TABLE Pertenece (
  codigo_grupo VARCHAR(50) NOT NULL,
  codigo_usuario VARCHAR(50) NOT NULL,
  FOREING KEY (codigo_grupo) REFERENCES Grupo (codigo) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREING KEY (codigo_usuario) REFERENCES Usuario (codigo) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Tarea (
  codigo VARCHAR(50) PRIMARY KEY,
  descripcion VARCHAR(1000),
  fehca DATE,
  codigo_grupo VARCHAR(50) NOT NULL,
  codigo_usuario VARCHAR(50) NOT NULL,
  FOREING KEY (codigo_grupo) REFERENCES Grupo (codigo) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREING KEY (codigo_usuario) REFERENCES Usuario (codigo) ON DELETE CASCADE ON UPDATE CASCADE
);
 
  
