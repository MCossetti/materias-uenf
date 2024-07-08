class Num
    def initialize(n1, n2)
        @n1 = n1
        @n2 = n2
    end

    def multiplo 
        if (@n1 % @n2 == 0)
            puts "O número #{@n1} é múltiplo de #{@n2}"
        else 
            puts "O número #{@n1} não é múltiplo de #{@n2}"
        end
    end
end

puts "Digite um número inteiro: "
    n1 = gets.chomp.to_i
puts "Digite outro número inteiro: "
    n2 = gets.chomp.to_i

ob = Num.new(n1, n2)

ob.multiplo