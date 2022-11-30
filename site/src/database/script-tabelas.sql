-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/*
comandos para mysql - banco local - ambiente de desenvolvimento
*/

create database projeto3;
use projeto3;

create table avaliacao(
idAvaliacao int primary key auto_increment,
nota char(1) not null
);


create table usuario (
id int primary key auto_increment,
nick varchar(50),
email varchar(50),
senha varchar(256),
fkAvaliacao int,
foreign key (fkAvaliacao) references avaliacao (idAvaliacao)
);


create table aviso (
id int auto_increment,
dataComentario varchar(30) default 'now()',
personagem varchar(45),
fk_usuario int,
comentario varchar(500),
primary key (id, fk_usuario),
foreign key (fk_usuario) references usuario(id)
);
 -- insert into aviso (descricao, fk_usuario, dataComentario) values
       SELECT
            a.id AS idAviso,
            a.comentario,
            DATE_FORMAT(dataComentario, '%d-%m-%Y') as dataComentario,
            a.fk_usuario,
            a.personagem,
            u.id AS idUsuario,
            u.nick,
            u.email,
            u.senha
        FROM aviso a
            INNER JOIN usuario u
                ON a.fk_usuario = u.id order by idUsuario = ;
                