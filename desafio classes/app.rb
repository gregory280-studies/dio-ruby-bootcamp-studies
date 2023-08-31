require_relative 'mercado'
require_relative 'produto'

produto1 = Product.new('Estojo',12)
mercado = Supermarket.new(produto1)
mercado.buy
