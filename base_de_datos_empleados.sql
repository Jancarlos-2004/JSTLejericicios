-- Ejecutar este script en MySQL antes de probar el Ejercicio 9

CREATE DATABASE IF NOT EXISTS empleados;
USE empleados;

CREATE TABLE IF NOT EXISTS empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombres VARCHAR(50),
    apellido1 VARCHAR(50),
    apellido2 VARCHAR(50),
    edad INT
);

-- Nota: en la guia original "id" era varchar(12) sin autoincrement.
-- Se recomienda usar INT AUTO_INCREMENT para no tener que enviarlo manualmente
-- desde el formulario Informacion.jsp
