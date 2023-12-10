
create database dwteste;
 use dwteste;

create table D_PRODUTO (
IdProduto int identity primary key,
Nome_produto varchar(255),
Categoria varchar(255),
Marca varchar(50)
);

create table D_LOJA (
IdLoja int identity primary key,
Nome_loja varchar(255)
);


create table D_DATA (
IdData int identity primary key,
Data_venda varchar(255),
Semestre int,
Ano int
);





create table F_VENDA(

IdProduto int,
IdLoja int,
IdData int,
Valor int,
Quantidade int,

constraint fk_idprod foreign key (IdProduto) references D_PRODUTO(IdProduto),
constraint fk_idloja foreign key (IdLoja) references D_LOJA(IdLoja),
constraint fk_iddata foreign key (IdData) references D_DATA(IdData)

);

