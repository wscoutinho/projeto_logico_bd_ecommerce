-- criação do banco de dados para o cenário de E-commerce

---------------- tabelas principais ----------------

-- tabela cliente
insert into cliente (Nome_completo, identificacao, endereco, email, telefone) values
	('Augusto da Silva Filho','Augusto','Rua das Palmeiras, 315, São Paulo-SP','aug_sf01@gmail.com','11998985544'),
	('Cesar Pereira Nicodemos','Nicodemos','Rua Tiradentes, 220, São Paulo-SP','nicodemos_cesarp@gmail.com','11955996677'),
	('Maria Fernanda Marques Souza','Maria Fernanda','Av. Alameda 13, 1055, São Paulo-SP','mfms_1995@gmail.com','11965498875'),
	('Isabela de Oliveira Silva','Isabela','Rua Treze de Maio, 55, São Paulo-SP','isa_oliveira01@gmail.com','11988568942'),
	('Maria Lídia da Fonseca','Maria Lídia','Rua Sete de Setembro, 120, São Paulo-SP','marialidia_fonseca@gmail.com','11988652323'),
	('Alberto César Ramos','Alberto','Rua Tasmânia, 315, São Paulo-SP','alberto_tasmania@gmail.com','11989554569');		

-- tabela produto
insert into produto (Nome, Categoria, Descricao, Valor) values
	('Churrasqueira Elétrica Mondial','Casa e Construção','Churrasqueira Elétrica Mondial 1800W - Grand Steak & Grill', 319.00),
	('Motorola Moto g31','Celular e Smartphone','Motorola Moto g31 128GB Azul', 1151.10),
	('Espelho Redondo Decorativo','Decoração','Espelho Redondo Decorativo Suspenso Com Alça 50cm', 109.25),
	('Nicho Prateleira 2 Peças','Decoração','Nicho Prateleira 2 Peças para Decoração Banheiro Mdf Branco', 44.00),
	('Quadros Decorativos Sala Orquidea','Decoração','Quadros Decorativos Sala Orquidea', 47.69),
	('Geladeira/Refrigerador Brastemp','Eletrodomésticos','Geladeira/Refrigerador Brastemp Frost Free Duplex', 2849.05),
	('Lavadora de Roupas Electrolux','Eletrodomésticos','Lavadora de Roupas Electrolux LAC12 - 12Kg', 2059.00),
	('Fogão de Piso 4 Bocas','Eletrodomésticos','FogAo de Piso 4 Bocas Esmaltec', 479.00),
	('Tênis Branco Feminino','Esporte e Lazer','Tênis Branco Feminino Vili Esportivo', 86.39),
	('Bicicleta aro 29','Esporte e Lazer','Bicicleta aro 29 alfameq atx freio a disco 24 marchas', 1149.00);	

-- tabela fornecedor
insert into fornecedor (Razao_social, Nome_fantasia, CNPJ, Contato, Email, Telefone) values
	('Fornecimento Ilimitado Ltda','Ilimitado','10152325000115','Janderson Moreira','contato@ilimitado.com.br','41998887445'),
	('Eletronicos Brasil SA.','Brasa Eletronicos','51258659000132','Lorena Gonçalves Pinto','contato@brasaeletronico.com.br','21985554775'),
	('Moveis do Brasil Ltda','Movil Moveis','26159847000119','Marilza Aparecida Nepomoceno','contato@movilmoveis.com','11905515454'),
	('Celulares e Comunicação Ltda','CelCom Brasil','95259132000120','Ivanildo da Silva','contato@celcom.com.br','41998552364');

-- tabela vendedor_terceiro
insert into vendedor_terceiro (Razao_social, Nome_fantasia, CNPJ_CPF, Endereco, Contato, Email, Telefone) values
	('Vendas de Eletronicos e variados','Vendas & Vendas','12159158000125','Curitiba','Bruno Ferreira Junior','bruno@vendasvendas.com','41987456321'),
	('Brinquedos Infantis Ltda','Brinquedos e Cia','48159357000137','São Paulo ','Aldemar Maroto Peixoto','aldemarmaroto@brinquedos.com','11985258741'),
	('Ferramentas Gerais de Operações AS','FERGERO','1313254800131','Rio de Janeiro','Antonio Guilherme Pontes','antonio@fergero.com.br','21905412563');

-- tabela estoque
insert into estoque (Local_estoque) values
	('PR/Curitiba'),
	('RJ/Rio de Janeiro'),
	('SP/São Paulo');

---------------- tabelas auxiliares sem relacionamentos ----------------

-- tabela pagamento_cartao
insert into pagamento_cartao(Nome_titular, Numero_cartao, Bandeira_cartao, Data_validade, CPF_CNPJ) values
	('Augusto da Silva Filho', 1234567891234567,'VISA','2022-12-10','12345678912'),
	('Cesar Pereira Nicodemos', 3216549879874568,'VISA','2022-12-10','98765432198'),
	('Maria Fernanda Marques Souza', 1478523698521478,'VISA','2022-12-10','12378945665'),
	('Isabela de Oliveira Silva', 3698521478954123,'MASTERCARD','2022-12-10','32165498745');

---------------- tabelas com relacionamentos ----------------

-- tabela pedido
insert into pedido (idPedidoCliente, Status_pedido, Descricao, Data_pedido, Valor_total) values
	('1','Em andamento','Compra pelo site','2022-10-05', 0.00),
	('2','Em andamento','Compra pelo Aplicativo','2022-10-07', 0.00),
	('3','Em andamento','Compra pelo site','2022-10-12', 0.00),
	('5','Em andamento','Compra pelo site','2022-10-13', 0.00),
	('4','Em Cancelado','Compra pelo site','2022-09-29', 0.00),
	('5','Em andamento','Compra pelo Aplicativo','2022-10-16', 0.00),
	('6','Em andamento','Compra pelo Aplicativo','2022-10-17', 0.00),
	('6','Processando','Compra pelo site','2022-09-13', 0.00),
	('1','Processando','Compra pelo site','2022-09-22', 0.00),
	('1','Processando','Compra na Loja','2022-08-21', 0.00),
	('2','Processando','Compra na Loja','2022-07-20', 0.00),
	('5','Processando','Compra pelo site','2022-10-06', 0.00),
	('6','Entregue','Compra pelo site','2022-08-21', 0.00),
	('4','Entregue','Compra pelo site','2022-05-20', 0.00),
	('1','Entregue','Compra pelo site','2022-06-13', 0.00);





-- tabela pedido_entrega
/* create table pedido_entrega(
	idPedido_entrega int auto_increment primary key,
	idPedido int not null,
	Codigo_rastreio varchar(45),
	Status_entrega varchar(45) not null,
	Valor_frete float,
	constraint fk_pedido_entrega_pedido foreign key (idPedido) references pedido(idPedido)
); */

-- tabela conta_cliente
/* create table conta_cliente(
	idConta int auto_increment primary key,
	idCliente int not null,
	Tipo_conta varchar(45) not null,
	CPF_CNPJ varchar(15) not null,
	constraint fk_conta_cliente_cliente foreign key (idCliente) references cliente(idCliente)
); */

-- tabela formas_pagamento
/* create table formas_pagamento(
	idFormas_pagamento int auto_increment primary key,
	idCliente int not null,
	idPagamento_cartao int,
	Pix varchar(45),
	Boleto varchar(45),
	Outro varchar(255),
	constraint fk_Formas_pagamento_cliente foreign key (idCliente) references cliente(idCliente),
	constraint fk_Formas_pagamento_cartao foreign key (idPagamento_cartao) references pagamento_cartao(idPagamento_cartao)
); */

---------------- tabelas com relacionamentos nxm ----------------

-- tabela fornecedor_produto
/* create table fornecedor_produto(
	idFornecedor int,
	idProduto int,
	primary key (idFornecedor, idProduto),
	constraint fk_fornecedor_fornecedor foreign key (idFornecedor) references fornecedor(idFornecedor),
	constraint fk_fornecedor_produto foreign key (idProduto) references produto(idProduto)
); */

-- tabela produto_estoque
/* create table produto_estoque(
	idEstoque int,
	idProduto int,
	Quantidade_estoque float not null default 0,
	primary key (idEstoque, idProduto),
	constraint fk_produto_estoque_estoque foreign key (idEstoque) references estoque(idEstoque),
	constraint fk_produto_estoque_produto foreign key (idProduto) references produto(idProduto)
); */

-- tabela produto_vendedor_terceiro
/* create table produto_vendedor(
	idVendedor_terceiro int,
	idProduto int,
	Quantidade float not null default 0,
	primary key (idVendedor_terceiro, idProduto),
	constraint fk_produto_vendedor_vendedor foreign key (idVendedor_terceiro) references vendedor_terceiro(idVendedor_terceiro),
	constraint fk_produto_vendedor_produto foreign key (idProduto) references produto(idProduto)
); */

-- tabela produto_pedido
/* create table produto_pedido(
	idPedido int,
	idProduto int,		
	Quantidade float not null default 0,
	primary key (idPedido, idProduto),
	constraint fk_produto_pedido_pedido foreign key (idPedido) references pedido(idPedido), 
	constraint fk_produto_pedido_produto foreign key (idProduto) references produto(idProduto)
); */
