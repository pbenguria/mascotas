DROP TABLE IF EXISTS MASCOTAS;

CREATE TABLE MASCOTAS (
  CODIGO INT AUTO_INCREMENT PRIMARY KEY,
  NOMBRE VARCHAR(50),
  ESTADO VARCHAR(50),
  FECHA_NACIMIENTO TIMESTAMP,
  NUMERO_VISITAS INT,
  PROPIETARIO_NOMBRE VARCHAR(50),
  PROPIETARIO_APELLIDOS VARCHAR(50)
);