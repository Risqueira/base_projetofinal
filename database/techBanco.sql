CREATE DATABASE techBanco;

USE techBanco;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    sexo CHAR(1) NOT NULL,
    fone VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL
);

CREATE TABLE noticias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    noticia TEXT NOT NULL,
    data DATETIME DEFAULT CURRENT_TIMESTAMP,
    autor INT NOT NULL,
    imagem VARCHAR(255) DEFAULT NULL,

    CONSTRAINT fk_noticias_usuario
        FOREIGN KEY (autor)
        REFERENCES usuarios(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

ALTER TABLE usuarios DROP COLUMN fone;
ALTER TABLE usuarios ADD COLUMN perfil VARCHAR(255);
ALTER TABLE usuarios DROP COLUMN sexo;
ALTER TABLE usuarios ADD COLUMN sexo ENUM('masculino','feminino','outro','prefiro_nao_dizer') DEFAULT NULL;

