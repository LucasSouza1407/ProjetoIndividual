-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/*
comandos para mysql - banco local - ambiente de desenvolvimento
*/

CREATE DATABASE percyjackson;

USE percyjackson;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

CREATE TABLE quiz (
	idquiz INT PRIMARY KEY AUTO_INCREMENT,
    nomequiz VARCHAR (50)
    );
    
CREATE TABLE pontuacao (
idpontuacao INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (50),
pontos INT,
fkusuario INT, 
foreign key fkusuario (fkusuario) references usuario (id),
fkquiz INT,
foreign key fkquiz (fkquiz) references quiz (idquiz)
);

INSERT INTO quiz (nomequiz) VALUES 
('Defeitos Mortais');


select * from usuario ;

select * from pontuacao;

select * from quiz;



