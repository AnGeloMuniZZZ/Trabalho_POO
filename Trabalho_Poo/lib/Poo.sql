use master
go
drop database CatalogoRPG
go
create database CatalogoRPG
go
use CatalogoRPG
go
create table arma (
	id int identity (1, 1) not null,
	nome varchar(100) not null,
	peso decimal(3,1) not null,
	descricao varchar(255) not null,
	tipo_dano varchar(50) not null,
	dano int not null,
	forca char(1) not null,
	fe char(1) not null,
	destreza char(1) not null,
	inteligencia char(1) not null,
	primary key (id)
)
go
create table armadura(
	id int identity(1, 1) not null,
	nome varchar(100) not null,
	peso decimal(3,1) not  null,
	descricao varchar(255) not null,
	tipo_armadura varchar(50) not null,
	veneno int not null,
	fisica int not null,
	magica int not null,
	fogo int not null,
	eletrica int not null,
	hemorragica int not null,
	primary key (id)
)
go
create table classes (
	nome varchar(255) not null,
	habilidade varchar(255) not null,
	level int not null,
	forca int not null,
	fe int not null,
	destreza int not null,
	inteligencia int not null,
	sorte int not null,
	vitalidade int not null,
	resistencia int not null,
	vigor int not null,
	conhecimento int not null,
	idArma int not null,
	idArmadura int not null
	primary key (nome),
	foreign key (idArma) references arma (id),
	foreign key (idArmadura) references armadura (id)
)
go
create table personagem (
	id int identity(1, 1) not null,
	nome varchar(100) not null,
	classe varchar(255) not null,
	item varchar(100) not null,
	genero varchar(20) not null,
	idade int not null,
	descricao varchar(255) not null
	primary key (id),
	foreign key (classe) references classes (nome)
)
go
create table inimigo(
	id int identity (1,1) not null,
	nome varchar(255) not null,
	dano_causa int not null,
	vida int not null,
	fraqueza varchar(100) not null,
	descricao varchar(255) not null
	primary key (id)
)
DROP TABLE INIMIGO
select * from classes
select * from personagem
select * from arma
select * from armadura
select * from inimigos

INSERT INTO arma (nome, peso, descricao, tipo_dano, dano, forca, fe, destreza, inteligencia)
VALUES ('ASFA', 45.5, 'ADFAS', 'AFASFSA', 20, 'A', 'E', 'C', 'B');

INSERT INTO armadura (nome, peso, descricao, tipo_armadura, veneno, fisica, magica, fogo, eletrica, hemorragica)
VALUES ('Armadura Mágica', 10.5, 'Armadura com alta resistência mágica', 'Mágica', 0, 5, 10, 2, 1, 0);

INSERT INTO classes (nome, habilidade, level, forca, fe, destreza, inteligencia, sorte, vitalidade, resistencia, vigor, conhecimento, idArma, idArmadura)
VALUES ('Guerreiro', 'Lutar com espadas', 5, 10, 8, 7, 6, 4, 9, 10, 8, 7, 17, 1);

INSERT INTO inimigo (nome, dano_causa, vida, fraqueza, descricao)
VALUES 
('Dragão de Fogo', 50, 1000, 'Água', 'Um dragão com poder de fogo extremamente forte');

INSERT INTO personagem (nome, classe, item, genero, idade, descricao)
VALUES 
('Arthur', 'Cavaleiro', 'Espada Longa', 'Masculino', 30, 'Um guerreiro destemido com um passado sombrio.');


SELECT * FROM Classes
WHERE nome = 'asfasf'



DELETE FROM Arma