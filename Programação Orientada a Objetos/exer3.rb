class Circulo
    def initialize(r)
        @r = r
        @pi = 3.14
    end

    def diametro
        puts "O diâmetro do círculo de raio #{@r} é: ", (2*@r)
    end

    def area
        puts "A área do círculo de raio #{@r} é: ", (@pi*(@r**2))
    end

    def circunferencia
        puts "A circunferência do círculo de raio #{@r} é: ", (2*@pi*@r)
    end
end

puts "Digite o raio de um círculo: "
    r = gets.chomp.to_i

op = Circulo.new(r)

puts "\n"
op.diametro
op.area
op.circunferencia
