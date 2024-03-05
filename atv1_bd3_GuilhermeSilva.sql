create database atv1_bd3_GuilhermeSilva;

use atv1_bd3_GuilhermeSilva;

create table TBL_Produto(
	cod_prod int(10) primary key auto_increment not null,
    nome varchar(500),
    descricao text,
    preco decimal(10,2)
);
    
create table TBL_Pedido(
	cod_ped int(10) primary key auto_increment not null,
    data date
);

create table TBL_item_pedido(
	cod_prod int(10) not null,
    cod_ped int(10) not null,
    
    FOREIGN KEY (cod_prod) REFERENCES TBL_Produto(cod_prod),
    FOREIGN KEY (cod_ped) REFERENCES TBL_Pedido(cod_ped)
);

/*Insert dos itens/produtos*/
INSERT INTO TBL_Produto(nome, descricao, preco)
VALUES("Nokia tijolão", "Nokia tijolão, o clássico", 70.90);

INSERT INTO TBL_Produto(nome, descricao, preco)
VALUES("Notibuki negativo", "Notebook ruim nao compre", 999.99);

INSERT INTO TBL_Produto(nome, descricao, preco)
VALUES("ps666", "videogame do cramunhao", 66.6);

INSERT INTO TBL_Produto(nome, descricao, preco)
VALUES("reloginho com 180qi", "ele é inteligente entendeu a piada?", 100.50);

INSERT INTO TBL_Produto(nome, descricao, preco)
VALUES("fone denteazul", "ele é blutufe", 150.90);

INSERT INTO TBL_Produto(nome, descricao, preco)
VALUES("ringue laite", "aquele blg de luz q só tiktoker afrescalhado usa", 50.90);

INSERT INTO TBL_Produto(nome, descricao, preco)
VALUES("capinha do bolsonaro", "capinha do mito", 69.69);

INSERT INTO TBL_Produto(nome, descricao, preco)
VALUES("lampada burra", "nao, esa nao eh inteligente", 2.00);

INSERT INTO TBL_Produto(nome, descricao, preco)
VALUES("pouer banco", "pra vc carregar seu celula na estacao de trem", 66.6);

INSERT INTO TBL_Produto(nome, descricao, preco)
VALUES("microondas afrescalhado (air fryer)", "pov: sua avo disse que microondas é radioativo", 200.20);

/*Insert das datas dos pedidos*/
INSERT INTO TBL_Pedido(data)
VALUES('1939-09-01');

INSERT INTO TBL_Pedido(data)
VALUES('1945-09-02');

INSERT INTO TBL_Pedido(data)
VALUES('1914-07-28');

INSERT INTO TBL_Pedido(data)
VALUES('1918-11-11');

/*Insert dos pedidos*/

INSERT INTO TBL_item_pedido(cod_prod, cod_ped)
VALUES(6, 1);

INSERT INTO TBL_item_pedido(cod_prod, cod_ped)
VALUES(10, 2);

INSERT INTO TBL_item_pedido(cod_prod, cod_ped)
VALUES(9, 3);

INSERT INTO TBL_item_pedido(cod_prod, cod_ped)
VALUES(8, 4);

/*Mostrar os dados da tbl de produtos*/

SELECT * FROM TBL_Produto;

/*Mostrar apenas NOME e DESCRICAO da tbl de produtos*/

SELECT nome, descricao FROM TBL_Produto;