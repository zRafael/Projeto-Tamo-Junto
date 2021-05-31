-- Criação do banco de dados do TamoJuntoCifra
create database TamoJuntoCifra;
-- Usando o TamoJuntoCifra Banco de Dados
use TamoJuntoCifra;

-- Criando Tabela Usuario
create table usuario (
idUsuario int primary key auto_increment,
nome varchar(45),
login varchar(45),
senha varchar(45)
);

-- Inserindo Dados na tabela usuario
insert into usuario values (null, 'Rafael de Campos Silva', '2003-11-17','538-945-468-59', 'rafaeldecampossilva@gmail.com','m'),
                           (null, 'Melissa Freire', '2003-03-06','438-945-468-59', 'melissafreire@gmail.com','f');

-- Criando Tabela telefone
create table telefone (
idTelefone int primary key auto_increment,
telefoneCel char(14),
fkUsuario int,
foreign key (fkUsuario) references usuario (idUsuario)
);

-- Inserindo dados na tabela telefone
insert into telefone values (null, '11943557038',1),
                            (null, '11943557039',2);

-- Criando Tabela Cifras Musica
create table cifrasMusica (
idCifras int primary key auto_increment,
nomeMusica varchar(45),
nomeBanda varchar(45),
gravadora varchar (45),
tomMusica char(4),
fkUsuario int,
foreign key (fkUsuario) references usuario (idUsuario)
);

-- Inserindo dados na tabela CifrasMusica
insert into cifrasMusica values (null, 'Paz', 'Casa Worship', 'Records Gospel', 'F', '1'),
                                (null, 'Lapidação', 'Melissa', 'Som do Reino', 'A', '2');

-- Criando Tabela Estilo Musical
create table estiloMusical (
idEstilo int primary key,
nomeEstilo varchar(45)
);

-- Inserindo Dados na tabela EstiloMusical
insert into estiloMusical values (1,'Rock'),
								 (2,'POP'),
								 (3,'Gospel');

-- Criando tabela Associativa entre Estilo e Usuario
create table EstiloUsuario (
fkEstilo int,
foreign key (fkEstilo) references estiloMusical (idEstilo),
fkUsuario int,
foreign key (fkUsuario) references usuario (idUsuario),
primary key (fkEstilo, fkUsuario)
);

-- Inserindo dados na tabela EstiloUsuario 
insert into EstiloUsuario values (3, 1),
								 (3, 2);
                                 
-- Comandos Sql

-- Selecionando tabelas separadamente
select * from cifrasMusica ;
select * from estiloMusical;
select * from estiloUsuario;
select * from telefone;
select * from usuario;

-- DROP DATABASE TamoJuntoCifra;










