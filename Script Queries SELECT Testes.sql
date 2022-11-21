use dbecommerce;

-- Pedidos por cliente
select Nome_completo, count(*) as Numero_pedidos 
	from cliente as c 
	inner join pedido as p on c.idCliente = p.IdPedidoCliente
	group by idCliente;
            
-- Relação de produtos e fornecedores
select Nome, f.Razao_social, CNPJ 
	from produto p
	inner join fornecedor_produto fp on p.idProduto = fp.idProduto
	inner join fornecedor f on f.idFornecedor = fp.idFornecedor;

-- Relação de Produtos e Estoque
select p.idProduto, p.Nome, e.Local_estoque, pe.Quantidade_estoque 
	from produto p
	inner join produto_estoque pe on p.idProduto = pe.idProduto
	inner join estoque e on e.idEstoque = pe.idEstoque
	order by p.idProduto, e.idEstoque;

-- Relação de fornecedores, produtos e preços
select f.Razao_social, p.Nome, p.valor
	from fornecedor f
	inner join fornecedor_produto fp on f.idFornecedor = fp.idFornecedor
	inner join produto p on p.idProduto = fp.idProduto
	order by f.Razao_social, p.idProduto;

-- Produtos com valor maior que 100 reais
select Nome, Categoria, Valor
	from produto
    having Valor > 100
    order by Nome, Categoria;

-- Relação de Produtos e quantidade total em todos os estoques
select p.idProduto, p.Nome, sum(pe.Quantidade_estoque) as quantidade_total
	from produto_estoque pe  
    left join produto p on p.idProduto = pe.idProduto
    group by p.idProduto
	order by p.idProduto;

-- Valor de estoque de cada produto
select p.idProduto, p.Nome, sum(pe.Quantidade_estoque) as quantidade_total, 
	p.valor as Valor_unitario, round((sum(pe.Quantidade_estoque) * p.valor), 2) as valor_estoque 
	from produto_estoque pe  
    left join produto p on p.idProduto = pe.idProduto
    group by p.idProduto
	order by p.idProduto;

-- Valor total do estoque
select round(sum(p.Valor * Quantidade_estoque), 2) as Valor_estoque 
	from produto p
	inner join produto_estoque pe on p.idProduto = pe.idProduto
	order by pe.Quantidade_estoque;