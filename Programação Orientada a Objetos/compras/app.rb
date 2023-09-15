require_relative 'produto'
require_relative 'mercado'

produto = Produto.new("Chocolate", 5)
produto2 = Produto.new("Amaciante", 20)

compras = Mercado.new(produto)
compras.comprar
compras = Mercado.new(produto2)
compras.comprar

