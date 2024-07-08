class Calcular
    def initialize(n1, n2)
        @n1 = n1
        @n2 = n2
    end

    def somar
        puts "A soma desses números resulta em #{@n1+@n2}"
    end 

    def subtracao
        puts "A subtração desses números resulta em #{@n1-@n2}"
    end

    def multiplicacao
        puts "A multiplicação desses números resulta em #{@n1*@n2}"
    end

    def divisao
        if @n2 != 0
            puts "A divisão desses números resulta em #{@n1/@n2}"
        else
            puts " Nao pode dividir por zero !!! "
        end
    end
end

puts 'Digite um número inteiro: '
n1 = gets.chomp.to_f

puts "\n"

puts 'Digite outro número inteiro: '
n2 = gets.chomp.to_f

calculo = Calcular.new(n1, n2)

puts "\n"
calculo.somar
calculo.subtracao
calculo.multiplicacao
calculo.divisao
puts "\n"
