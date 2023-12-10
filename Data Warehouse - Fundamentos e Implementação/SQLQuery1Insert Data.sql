use dwteste;
insert into D_LOJA (Nome_loja) values 
('Central'),
('Baixada');

insert into D_PRODUTO (Nome_produto, Categoria, Marca) values 
('Geladeira','Eletrodoméstico','Frozen'),
('Celular','Telefonia','Radar'),
('Pneu','Automotivo','Frota');

insert into D_DATA (Data_venda, Semestre, Ano) values 
('01/02/2015',1,2015),
('10/07/2017',2,2017),
('06/11/2018',2,2018),
('25/12/2017',2,2017),
('01/02/2017',1,2017),
('06/11/2018',2,2018),
('09/03/2016',1,2016);

/*
   Popular a tabela fato
*/

insert into F_VENDA (IdLoja, IdProduto, IdData, Valor, Quantidade) values 
(1,1,1,1000,2),
(2,1,2,1000,1),
(1,1,3,1000,1),
(2,2,4,700,3),
(2,2,4,700,1),
(1,3,5,150,4),
(1,3,6,150,4),
(2,3,5,150,2),
(2,3,7,150,1);



select * from F_VENDA;

select * from F_VENDA join D_PRODUTO on F_VENDA.IdProduto = D_PRODUTO.IdProduto;


