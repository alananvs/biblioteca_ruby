require_relative "livros"
require_relative "estoque"

def livro_para_newsletter(livro)
    if livro.ano_lancamento < 2000
        # puts "Newsletter/Liquidação"
        # puts livro.titulo
        # puts livro.preco
        # puts livro.possui_reimpressao
    end
end

algoritimos = Livro.new("Algoritimos", 100, 1998, true, "Editora Fulanes", "livro")
agile = Livro.new("Agile Web Development with Rails", 70.00, 2011, true, "Editora Fulanes", "livro")
arquitetura = Livro.new("Introdução a Arquitetura e Design de Sofware", 70, 2011, true, "Editora Fulanes", "livro")
programmer = Livro.new("The Pragmatic Programmer", 100, 1999, true, "Editora Fulanes", "livro")
ruby = Livro.new("Programming Ruby", 100, 2004, true, "Editora Fulanes", "livro")

revistao = Livro.new("Revista de Ruby", 10, 2010, true, "Editora Fulanes", "revista")

online_arquitetura = Livro.new("Introdução a Arquitetura e Design de Software", 50, 2012, true, "Editora Fulanes", "ebook")

estoque = Estoque.new

estoque << algoritimos << algoritimos << algoritimos << ruby << programmer << arquitetura << ruby << ruby << revistao << revistao << online_arquitetura

estoque.vende ruby
estoque.vende algoritimos
estoque.vende algoritimos
estoque.vende revistao
estoque.vende online_arquitetura

# puts estoque.livro_que_mais_vendeu_por_titulo.titulo
# puts estoque.revista_que_mais_vendeu_por_titulo.titulo
# puts estoque.ebok_que_mais_vendeu_por_titulo.titulo
puts estoque.respond_to(:ebok_que_mais_vendeu_por_titulo)

estoque.exporta_csv

# baratos = estoque.mais_barato_que 80
# baratos.each do |livro|
#     puts livro.titulo
# end