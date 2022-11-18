-- criação do banco de dados para o cenário de E-commerce
create database dbecommerce;
use dbecommerce;

---------------- tabelas principais ----------------

-- tabela cliente
create table cliente(
	idCliente int auto_increment primary key,
	Nome_completo varchar(45) not null,
	Identificacao varchar(45) not null,
	Endereco varchar(90) not null,		
	Email varchar(45) not null,
	Telefone char(11) not null
);

-- tabela produto
create table produto(
	idProduto int auto_increment primary key,
	Nome varchar(45),
	Categoria varchar(45) not null,
	Descricao varchar(255) not null,
	Valor float not null
);

-- tabela fornecedor
create table fornecedor(
	idFornecedor int auto_increment primary key,
	Razao_social varchar(45) not null,
	Nome_fantasia varchar(45),
	CNPJ char(14) not null,
	Contato varchar(45) not null,
	Email varchar(45) not null,
	Telefone char(11) not null,
	constraint unique_fornecedor_cnpj unique (CNPJ)		
);

-- tabela vendedor_terceiro
create table vendedor_terceiro(
	idVendedor_terceiro int auto_increment primary key,
	Razao_social varchar(45) not null,
	Nome_fantasia varchar(45),
	CNPJ_CPF varchar(15) not null,
	Endereco varchar(255) not null,
	Contato varchar(45) not null,
	Email varchar(45) not null,
	Telefone char(11) not null,	
	constraint unique_vendedor_terceiro_CNPJ_CPF unique (CNPJ_CPF)
);

-- tabela estoque
create table estoque(
		idEstoque int auto_increment primary key,
        Local_estoque varchar(45) not null
);

---------------- tabelas auxiliares sem relacionamentos ----------------

-- tabela pagamento_cartao
create table pagamento_cartao(
	idPagamento_cartao int auto_increment primary key,
	Nome_titular varchar(45) not null,
	Numero_cartao varchar(45) not null,
	Bandeira_cartao varchar(45) not null,
	Data_validade date not null,
	CPF_CNPJ varchar(15) not null,
	constraint unique_pagamento_cartao_numero unique (Numero_cartao)	
);

---------------- tabelas com relacionamentos ----------------

-- tabela pedido
create table pedido(
	idPedido int auto_increment primary key,
	idPedidoCliente int not null,
	Status_pedido varchar(45) not null,
	Descricao varchar(45) not null,
	Data_pedido date not null,
	Valor_total float not null,
	constraint fk_pedido_cliente foreign key (idPedidoCliente) references cliente(idCliente)
);

-- tabela pedido_entrega
create table pedido_entrega(
	idPedido_entrega int auto_increment primary key,
	idPedido int not null,
	Codigo_rastreio varchar(45),
	Status_entrega varchar(45) not null,
	Valor_frete float,
	constraint fk_pedido_entrega_pedido foreign key (idPedido) references pedido(idPedido)
);

-- tabela conta_cliente
create table conta_cliente(
	idConta int auto_increment primary key,
	idCliente int not null,
	Tipo_conta varchar(45) not null,
	CPF_CNPJ varchar(15) not null,
	constraint fk_conta_cliente_cliente foreign key (idCliente) references cliente(idCliente)
);

-- tabela formas_pagamento
create table formas_pagamento(
	idFormas_pagamento int auto_increment primary key,
	idCliente int not null,
	idPagamento_cartao int,
	Pix varchar(45),
	Boleto varchar(45),
	Outro varchar(255),
	constraint fk_Formas_pagamento_cliente foreign key (idCliente) references cliente(idCliente),
	constraint fk_Formas_pagamento_cartao foreign key (idPagamento_cartao) references pagamento_cartao(idPagamento_cartao)
);

---------------- tabelas com relacionamentos nxm ----------------

-- tabela fornecedor_produto
create table fornecedor_produto(
	idFornecedor int,
	idProduto int,
	primary key (idFornecedor, idProduto),
	constraint fk_fornecedor_fornecedor foreign key (idFornecedor) references fornecedor(idFornecedor),
	constraint fk_fornecedor_produto foreign key (idProduto) references produto(idProduto)
);

-- tabela produto_estoque
create table produto_estoque(
	idEstoque int,
	idProduto int,
	Quantidade_estoque float not null default 0,
	primary key (idEstoque, idProduto),
	constraint fk_produto_estoque_estoque foreign key (idEstoque) references estoque(idEstoque),
	constraint fk_produto_estoque_produto foreign key (idProduto) references produto(idProduto)
);

-- tabela produto_vendedor_terceiro
create table produto_vendedor(
	idVendedor_terceiro int,
	idProduto int,
	Quantidade float not null default 0,
	primary key (idVendedor_terceiro, idProduto),
	constraint fk_produto_vendedor_vendedor foreign key (idVendedor_terceiro) references vendedor_terceiro(idVendedor_terceiro),
	constraint fk_produto_vendedor_produto foreign key (idProduto) references produto(idProduto)
);

-- tabela produto_pedido
create table produto_pedido(
	idPedido int,
	idProduto int,		
	Quantidade float not null default 0,
	primary key (idPedido, idProduto),
	constraint fk_produto_pedido_pedido foreign key (idPedido) references pedido(idPedido), 
	constraint fk_produto_pedido_produto foreign key (idProduto) references produto(idProduto)
);
