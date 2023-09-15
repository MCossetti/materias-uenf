class Cadastro 
    def initialize(nome, idade)
        @nome = nome 
        @idade = idade 
    end

    def mostrar
        puts "Seu nome é #{@nome} e possui #{@idade} anos"
    end
end

puts "Nome: "
nome = gets.chomp.to_str

puts "\n"
puts "Idade: "
idade = gets.chomp.to_i

cad = Cadastro.new(nome, idade)

puts "\n"
cad.mostrar