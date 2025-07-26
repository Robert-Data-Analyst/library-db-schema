create table clientes (
	CPF varchar(20) not null primary key,
	nome varchar (255) not null,
	telefone varchar(15),
	idade date,
	sexo char(1) check (sexo in ('M', 'F'))

);


create table cidades (
	id int primary key auto_increment,
	nome varchar(255) not null

);



create table endereço (
	id_endereco int primary key auto_increment,
	cpf_cliente varchar (20) not null,
	id_cidade int not null,
	rua varchar(255),
	numero varchar (255),
	bairro varchar (255),
	cep varchar (10),

	foreign key (cpf_cliente) reference clientes(CPF),
	foreign key (id_cidade) reference cidades (id)

);