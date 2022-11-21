-- criação do banco de dados para o cenário de E-commerce

---------------- tabelas principais ----------------

insert into cliente (idCliente, Nome_completo, identificacao, endereco, email, telefone) values
	(1, 'Augusto da Silva Filho','Augusto','Rua das Palmeiras, 315, São Paulo-SP','aug_sf01@gmail.com','11998985544'),
	(2, 'Cesar Pereira Nicodemos','Nicodemos','Rua Tiradentes, 220, São Paulo-SP','nicodemos_cesarp@gmail.com','11955996677'),
	(3, 'Maria Fernanda Marques Souza','Maria Fernanda','Av. Alameda 13, 1055, São Paulo-SP','mfms_1995@gmail.com','11965498875'),
	(4, 'Isabela de Oliveira Silva','Isabela','Rua Treze de Maio, 55, São Paulo-SP','isa_oliveira01@gmail.com','11988568942'),
	(5, 'Maria Lídia da Fonseca','Maria Lídia','Rua Sete de Setembro, 120, São Paulo-SP','marialidia_fonseca@gmail.com','11988652323'),
	(6, 'Alberto César Ramos','Alberto','Rua Tasmânia, 315, São Paulo-SP','alberto_tasmania@gmail.com','11989554569');		

insert into produto (idProduto, Nome, Categoria, Descricao, Valor) values
	(1,'Churrasqueira Elétrica Mondial','Casa e Construção','Churrasqueira Elétrica Mondial 1800W - Grand Steak & Grill', 319.00),
	(2,'Motorola Moto g31','Celular e Smartphone','Motorola Moto g31 128GB Azul', 1151.10),
	(3,'Espelho Redondo Decorativo','Decoração','Espelho Redondo Decorativo Suspenso Com Alça 50cm', 109.25),
	(4,'Nicho Prateleira 2 Peças','Decoração','Nicho Prateleira 2 Peças para Decoração Banheiro Mdf Branco', 44.00),
	(5,'Quadros Decorativos Sala Orquidea','Decoração','Quadros Decorativos Sala Orquidea', 47.69),
	(6,'Geladeira/Refrigerador Brastemp','Eletrodomésticos','Geladeira/Refrigerador Brastemp Frost Free Duplex', 2849.05),
	(7,'Lavadora de Roupas Electrolux','Eletrodomésticos','Lavadora de Roupas Electrolux LAC12 - 12Kg', 2059.00),
	(8,'Fogão de Piso 4 Bocas','Eletrodomésticos','FogAo de Piso 4 Bocas Esmaltec', 479.00),
	(9,'Tênis Branco Feminino','Esporte e Lazer','Tênis Branco Feminino Vili Esportivo', 86.39),
	(10,'Bicicleta aro 29','Esporte e Lazer','Bicicleta aro 29 alfameq atx freio a disco 24 marchas', 1149.00);	

insert into fornecedor (idFornecedor, Razao_social, Nome_fantasia, CNPJ, Contato, Email, Telefone) values
	(1,'Fornecimento Ilimitado Ltda','Ilimitado','10152325000115','Janderson Moreira','contato@ilimitado.com.br','41998887445'),
	(2,'Eletronicos Brasil SA.','Brasa Eletronicos','51258659000132','Lorena Gonçalves Pinto','contato@brasaeletronico.com.br','21985554775'),
	(3,'Moveis do Brasil Ltda','Movil Moveis','26159847000119','Marilza Aparecida Nepomoceno','contato@movilmoveis.com','11905515454'),
	(4,'Celulares e Comunicação Ltda','CelCom Brasil','95259132000120','Ivanildo da Silva','contato@celcom.com.br','41998552364');

insert into vendedor_terceiro (idVendedor_terceiro, Razao_social, Nome_fantasia, CNPJ_CPF, Endereco, Contato, Email, Telefone) values
	(1,'Vendas de Eletronicos e variados','Vendas & Vendas','12159158000125','Curitiba','Bruno Ferreira Junior','bruno@vendasvendas.com','41987456321'),
	(2,'Brinquedos Infantis Ltda','Brinquedos e Cia','48159357000137','São Paulo ','Aldemar Maroto Peixoto','aldemarmaroto@brinquedos.com','11985258741'),
	(3,'Ferramentas Gerais de Operações AS','FERGERO','1313254800131','Rio de Janeiro','Antonio Guilherme Pontes','antonio@fergero.com.br','21905412563');

insert into estoque (idEstoque, Local_estoque) values
	(1,'PR/Curitiba'),
	(2,'RJ/Rio de Janeiro'),
	(3,'SP/São Paulo');

---------------- tabelas auxiliares sem relacionamentos ----------------

insert into pagamento_cartao(idPagamento_cartao, Nome_titular, Numero_cartao, Bandeira_cartao, Data_validade, CPF_CNPJ) values
	(1, 'Augusto da Silva Filho', 1234567891234567,'VISA','2022-12-10','12345678912'),
	(2, 'Cesar Pereira Nicodemos', 3216549879874568,'VISA','2022-12-10','98765432198'),
	(3, 'Maria Fernanda Marques Souza', 1478523698521478,'VISA','2022-12-10','12378945665'),
	(4, 'Isabela de Oliveira Silva', 3698521478954123,'MASTERCARD','2022-12-10','32165498745');

---------------- tabelas com relacionamentos ----------------

insert into pedido (idPedido, idPedidoCliente, Status_pedido, Descricao, Data_pedido, Valor_total) values
	(1, '1','Em andamento','Compra pelo site','2022-10-05', 0.00),
	(2, '2','Em andamento','Compra pelo Aplicativo','2022-10-07', 0.00),
	(3, '3','Em andamento','Compra pelo site','2022-10-12', 0.00),
	(4, '5','Em andamento','Compra pelo site','2022-10-13', 0.00),
	(5, '4','Cancelado','Compra pelo site','2022-09-29', 0.00),
	(6, '5','Em andamento','Compra pelo Aplicativo','2022-10-16', 0.00),
	(7, '6','Em andamento','Compra pelo Aplicativo','2022-10-17', 0.00),
	(8, '6','Processando','Compra pelo site','2022-09-13', 0.00),
	(9, '1','Processando','Compra pelo site','2022-09-22', 0.00),
	(10, '1','Processando','Compra na Loja','2022-08-21', 0.00),
	(11, '2','Processando','Compra na Loja','2022-07-20', 0.00),
	(12, '5','Processando','Compra pelo site','2022-10-06', 0.00),
	(13, '6','Entregue','Compra pelo site','2022-08-21', 0.00),
	(14, '4','Entregue','Compra pelo site','2022-05-20', 0.00),
	(15, '1','Entregue','Compra pelo site','2022-06-13', 0.00);

insert into pedido_entrega (idPedido_entrega, idPedido, Codigo_rastreio, Status_entrega, Valor_frete) values
	(1, 1,null,'Aguardando coleta pela transportadora', 0.00),
	(2, 2,null,'Aguardando coleta pela transportadora', 0.00),
	(3, 3,null,'Aguardando coleta pela transportadora', 0.00),
	(4, 4,null,'Aguardando coleta pela transportadora', 0.00),
	(5, 5,null,'Pedido Cancelado', 0.00),
	(6, 6,'BR123456789','Em rota de entrega', 0.00),
	(7, 7,null,'Aguardando', 0.00),
	(8, 8,'BR123456789','Em rota de entrega', 0.00),
	(9, 9,null,'Em transferência para a transportadora', 0.00),
	(10, 10,null,'Entregue', 0.00),
	(11, 11,null,'Entregue', 0.00),
	(12, 12,'Processando','Em rota de entrega', 0.00),
	(13, 13,'BR123456789','Entregue', 0.00),
	(14, 14,'BR123455555','Entregue', 0.00),
	(15, 15,'BR123451234','Entregue', 0.00);

insert into conta_cliente (idConta, idCliente, Tipo_conta, CPF_CNPJ) values
	(1, 1,'PF', '12345678912'),
	(2, 2,'PF', '98765432198'),
	(3, 3,'PF', '12378945665'),
	(4, 4,'PF', '32165498745'),
	(5, 5,'PF', '22014578966'),
	(6, 6,'PF', '12378965455');

insert into formas_pagamento (idFormas_pagamento, idCliente, idPagamento_cartao, Pix, Boleto, Outro) values
	(1, 1, 1, 'X', 'X', null),
	(2, 2, 2, 'X', 'X', null),
	(3, 3, 3, null, 'X', null),
	(4, 4, 4, null, 'X', null),
	(5, 5, null, null, 'X', 'X'),
	(6, 6, null, null, 'X', 'X');

---------------- tabelas com relacionamentos nxm ----------------

insert into fornecedor_produto (idFornecedor, idProduto) values
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 4),
	(1, 5),
	(1, 6),
	(2, 1),
	(2, 4),
	(2, 5),
	(2, 7),
	(3, 5),
	(3, 6),
	(3, 7),
	(3, 8),
	(3, 10),
	(4, 4),
	(4, 7),
	(4, 8),
	(4, 9),
	(4, 10);	

insert into produto_estoque (idEstoque, idProduto, Quantidade_estoque) values
	(1, 1, 9.0),
	(2, 1, 11.0),
	(3, 1, 22.0),
	(1, 2, 17.0),
	(2, 2, 12.0),
	(3, 2, 20.0),
	(1, 3, 8.0),
	(2, 3, 8.0),
	(3, 3, 15.0),
	(1, 4, 90.0),
	(2, 4, 29.0),
	(3, 4, 28.0),
	(1, 5, 30.0),
	(2, 5, 21.0),
	(3, 5, 10.0),
	(1, 6, 8.0),
	(2, 6, 9.0),
	(3, 6, 15.0),
	(1, 7, 17.0),
	(2, 7, 12.0),
	(3, 7, 45.0),
	(1, 8, 56.0),
	(2, 8, 11.0),
	(3, 8, 11.0),
	(1, 9, 7.0),
	(2, 9, 19.0),
	(3, 9, 28.0),
	(1, 10, 55.0),
	(2, 10, 41.0),
	(3, 10, 51.0);	

insert into produto_vendedor (idVendedor_terceiro, idProduto, Quantidade) values
	(1, 1, 19.0),
	(1, 2, 17.0),
	(2, 2, 10.0),
	(3, 2, 15.0),
	(1, 3, 10.0),
	(2, 3, 14.0),
	(3, 3, 20.0),
	(1, 4, 30.0),
	(2, 4, 25.0),
	(3, 5, 20.0),
	(1, 6, 18.0),
	(2, 6, 12.0),
	(3, 6, 12.0),
	(1, 7, 14.0),
	(2, 7, 15.0),
	(3, 7, 29.0),
	(2, 8, 14.0),
	(3, 8, 25.0),
	(1, 9, 56.0),
	(2, 9, 44.0),
	(2, 10, 56.0),
	(3, 10, 61.0);	

insert into produto_pedido (idPedido, idProduto, Quantidade) values
	(1, 1, 1.0),
	(1, 2, 1.0),
	(2, 1, 2.0),
	(2, 2, 1.0),
	(2, 3, 2.0),
	(3, 2, 2.0),
	(4, 3, 3.0),
	(4, 7, 2.0),
	(4, 8, 1.0),
	(5, 1, 4.0),
	(6, 4, 7.0),
	(7, 4, 5.0),
	(7, 5, 4.0),
	(8, 1, 1.0),
	(8, 6, 1.0),
	(8, 7, 5.0),
	(9, 8, 2.0),
	(9, 9, 1.0),
	(10, 2, 1.0),
	(10, 3, 1.0),
	(11, 7, 4.0),
	(12, 8, 5.0),
	(13, 1, 1.0),
	(13, 2, 1.0),
	(13, 4, 3.0),
	(13, 9, 1.0),
	(14, 9, 2.0),
	(14, 7, 5.0),
	(15, 8, 4.0),
	(15, 10, 1.0);	