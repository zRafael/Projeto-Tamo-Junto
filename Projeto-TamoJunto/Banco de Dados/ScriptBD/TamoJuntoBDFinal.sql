-- Criação do banco de dados do TamoJuntoCifra
create database TamoJuntoCifra;
-- Usando o TamoJuntoCifra Banco de Dados
use TamoJuntoCifra;

-- Criando Tabela Usuario
create table usuario (
idUsuario int primary key auto_increment,
nomeUsuario varchar(45),
dataNasc date,
cpfUsuario char(14),
emailUsuario varchar(45),
sexo char (1) check (sexo ='m' or sexo='f' or sexo='n')
);

-- Criando Tabela telefone
create table telefone (
idTelefone int primary key auto_increment,
telefoneCel char(14),
fkUsuario int,
foreign key (fkUsuario) references usuario (idUsuario)
);

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

-- Criando Tabela Estilo Musical
create table estiloMusical (
idEstilo int primary key,
nomeEstilo varchar(45)
);

-- Criando tabela Associativa entre Estilo e Usuario
create table EstiloUsuario (
fkEstilo int,
foreign key (fkEstilo) references estiloMusical (idEstilo),
fkUsuario int,
foreign key (fkUsuario) references usuario (idUsuario),
primary key (fkEstilo, fkUsuario)
);










