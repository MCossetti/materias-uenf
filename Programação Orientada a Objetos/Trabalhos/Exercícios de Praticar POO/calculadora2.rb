class Calculadora
    def initialize (n1, n2, operacao)
        @n1 = n1
        @n2 = n2
        @ope = operacao
    end

    def calcular
        case @ope
        when 1
            resul = @n1 + @n2
            puts "O resultado dessa soma é: #{resul}" 
        when 2
            resul = @n1 - @n2
            puts "O resultado dessa subtração é: #{resul}" 
        when 3
            resul = @n1 * @n2
            puts "O resultado dessa multiplicação é: #{resul}"
        when 4
            resul = @n1 / @n2
            puts "O resultado dessa divisão é: #{resul}"
        when 5
            resul = @n1 ** @n2
            puts "O resultado dessa exponenciação é: #{resul}"
        when 6
            exit
        else
            puts 'Operação inválida' 
        end
    end
end

puts 'Digite um número inteiro: '
n1 = gets.chomp.to_i

puts "\n"

puts 'Digite outro número inteiro: '
n2 = gets.chomp.to_i

puts "\n"

puts "Digite a operação que deseja realizar\n1 - soma\n2 - subtração\n3 - multiplicação\n4 - divisão\n5 - potenciação\n6 - sair"
operacao = gets.chomp.to_i

calculando = Calculadora.new(n1, n2, operacao)

puts "\n"
calculando.calcular
