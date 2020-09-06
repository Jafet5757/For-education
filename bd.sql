CREATE DATABASE foreducation;
USE foreducation
DROP DATABASE foreducation

/*creacion de la tabla usuario*/
CREATE TABLE usuario (id BIGINT PRIMARY KEY AUTO_INCREMENT, 
nombre VARCHAR(40) NOT NULL
CHECK(nombre LIKE '[^0-9\.\,\"\?\!\;\:\#\$\%\&\(\)\*\+\-\/\<\>\=\@\[\]\\\^\_\{\}\|\~]+'),
app VARCHAR(30) NOT NULL
CHECK(app LIKE '[^0-9\.\,\"\?\!\;\:\#\$\%\&\(\)\*\+\-\/\<\>\=\@\[\]\\\^\_\{\}\|\~]+'),
apm VARCHAR(30) NOT NULL
CHECK(apm LIKE '[^0-9\.\,\"\?\!\;\:\#\$\%\&\(\)\*\+\-\/\<\>\=\@\[\]\\\^\_\{\}\|\~]+'),
correo VARCHAR(30)
CHECK(correo LIKE "[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?"),
no_tel INT,
id_cuenta BIGINT, FOREIGN KEY (id_cuenta) 
REFERENCES cuenta (id) )

/*creacion de la tabla cuenta*/
CREATE TABLE cuenta (id BIGINT PRIMARY KEY AUTO_INCREMENT,
estado BOOL NOT NULL, 
strikes INT NOT NULL CHECK(strikes<=3), 
contrasena VARCHAR(250) NOT NULL)

/*creacion de la tabla moderador*/
CREATE TABLE moderador (id BIGINT PRIMARY KEY AUTO_INCREMENT, 
nombre VARCHAR(40) NOT NULL
CHECK(nombre LIKE '[^0-9\.\,\"\?\!\;\:\#\$\%\&\(\)\*\+\-\/\<\>\=\@\[\]\\\^\_\{\}\|\~]+'), 
app VARCHAR(30) NOT NULL
CHECK(app LIKE '[^0-9\.\,\"\?\!\;\:\#\$\%\&\(\)\*\+\-\/\<\>\=\@\[\]\\\^\_\{\}\|\~]+'), 
apm VARCHAR(30) NOT NULL
CHECK(apm LIKE '[^0-9\.\,\"\?\!\;\:\#\$\%\&\(\)\*\+\-\/\<\>\=\@\[\]\\\^\_\{\}\|\~]+'),
correo VARCHAR(40)
CHECK(correo LIKE "[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?"), 
id_cuenta BIGINT, FOREIGN KEY(id_cuenta)
REFERENCES cuenta (id))

/*creacion de  la tabla tipo de curso*/
CREATE TABLE tipos (id INT PRIMARY KEY AUTO_INCREMENT, 
tipo VARCHAR(30) NOT NULL)

/*creacion de la culpa*/
CREATE TABLE culpa (id BIGINT PRIMARY KEY AUTO_INCREMENT,
dia DATE NOT NULL,
id_usuario BIGINT, FOREIGN KEY(id_usuario) REFERENCES usuario(id))

/*falta la relacion entre culpa y usuario, ademas la tabla intermedia entre curso y usuario*/
/*creacion de la tabla curso*/
CREATE TABLE curso (id BIGINT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(30) NOT NULL,
duracion VARCHAR(20) NOT NULL,
descripcion VARCHAR(60), 
URL_imagen VARCHAR(150) NOT NULL,
canal_creador VARCHAR(30) NOT NULL,
nivel VARCHAR(20)NOT NULL,
subtitulo VARCHAR(35),
id_tipo INT NOT NULL
, id_culpa BIGINT NOT NULL,
FOREIGN KEY(id_tipo) REFERENCES tipos(id),
FOREIGN KEY(id_culpa) REFERENCES culpa(id))

/*Creacion de la tabla modulo*/
CREATE TABLE modulo (id BIGINT PRIMARY KEY AUTO_INCREMENT, 
titulo VARCHAR(20) NOT NULL, 
descripcion VARCHAR(60),
url_imagen VARCHAR(150),
 url_video VARCHAR(150), 
id_curso BIGINT NOT NULL, 
FOREIGN KEY(id_curso) REFERENCES curso(id))

/*creacion de la tabla comentario*/
CREATE TABLE comentario (id BIGINT PRIMARY KEY AUTO_INCREMENT,
contenido VARCHAR(200) NOT NULL, 
id_culpa BIGINT NOT NULL,
FOREIGN KEY(id_culpa) REFERENCES culpa(id))

/*tabla intermedia entre curso y usuario*/
CREATE TABLE usuario_curso(id_usuario BIGINT,
id_curso BIGINT,
avance INT NOT NULL,
FOREIGN KEY(id_curso) REFERENCES curso (id),
FOREIGN KEY(id_usuario) REFERENCES usuario(id))

/*curso eliminado*/
CREATE TABLE curso_eliminado (id BIGINT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(30) NOT NULL,
duracion VARCHAR(20) NOT NULL,
descripcion VARCHAR(60), 
URL_imagen VARCHAR(150) NOT NULL,
canal_creador VARCHAR(30) NOT NULL,
nivel VARCHAR(20)NOT NULL,
subtitulo VARCHAR(35),
id_tipo INT NOT NULL
, id_culpa BIGINT NOT NULL,
id_usuario BIGINT NOT NULL,
fecha DATE NOT NULL,
motivo VARCHAR(150) NOT NULL,
moderador BOOL)