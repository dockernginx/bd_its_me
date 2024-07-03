CREATE DATABASE db_itsme;

USE db_itsme;

CREATE TABLE usuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre TEXT NOT NULL,
    username TEXT NOT NULL,
    edad int NOT NULL, 
    email Text NOT NULL,
    contraseña Text NOT NULL,
    descripcion TEXT,
    foto Text
);

CREATE TABLE red (
	id INT PRIMARY KEY auto_increment,
    id_usuario INT,
    nombre_red TEXT NOT NULL,
    link TEXT NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id)
);

CREATE TABLE cat_tipo_plantilla (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nombre TEXT
);

CREATE TABLE plantilla (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_tipo_plantilla INT,
    nombre TEXT NOT NULL,
    descripcion TEXT,
    icono TEXT,
    ruta TEXT,
    FOREIGN KEY (id_tipo_plantilla) REFERENCES cat_tipo_plantilla(id)
);

CREATE TABLE categoria (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    id_plantilla INT,
    titulo TEXT NOT NULL,
    body TEXT,
    fecha_pub DATE NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id),
    FOREIGN KEY (id_plantilla) REFERENCES plantilla(id)
);

CREATE TABLE contenido (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_cat INT,
    id_plantilla INT,
    titulo TEXT NOT NULL,
    body TEXT,
    fecha_pub DATE NOT NULL,
    FOREIGN KEY (id_cat) REFERENCES categoria(id),
    FOREIGN KEY (id_plantilla) REFERENCES plantilla(id)
);

