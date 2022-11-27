-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/*
comandos para mysql - banco local - ambiente de desenvolvimento
*/

CREATE DATABASE projeto2;
USE projeto2;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nick VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(256)
);

CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	descricao VARCHAR(250),
    dataComentario varchar(30) default 'now()',
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
);

 -- insert into aviso (descricao, fk_usuario, dataComentario) values
       SELECT
            a.id AS idAviso,
            a.descricao,
            DATE_FORMAT(dataComentario, '%d-%m-%Y') as dataComentario,
            a.fk_usuario,
            u.id AS idUsuario,
            u.nick,
            u.email,
            u.senha
        FROM aviso a
            INNER JOIN usuario u
                ON a.fk_usuario = u.id;
