class Figura
    attr_reader :nome 

    def nome=(valor)
        if valor == ""
            puts "Não pode ficar em branco"
        else
            @nome=valor
        end
    end

    def obterArea
        puts "A área da figura #{@nome} é:"
    end
end

class Quadrado < Figura
    attr_reader :lado

    def lado=(lado)
        if lado == ""
            puts "Não pode ficar em branco"
        else
            @lado = lado
        end
    end

    def obterArea
        area=@lado*@lado
        super
        puts "Area: #{area}" 
    end
end

q1 = Quadrado.new
puts "Nome da Figura: "
q1.nome = gets.chomp.to_str

puts "Valor do lado: "
q1.lado = gets.chomp.to_i   
q1.obterArea

