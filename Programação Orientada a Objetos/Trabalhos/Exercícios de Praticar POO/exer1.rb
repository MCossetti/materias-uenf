class Num
    def initialize(n1, n2, n3)
      @n1 = n1
      @n2 = n2
      @n3 = n3
    end
  
    def Maior
      if @n1>@n2 and @n1>@n3
        puts "O número #{@n1} é o maior"
      elsif @n2>@n1 and @n2>@n3
        puts "O número #{@n2} é o maior"
      else
        puts "O número #{@n3} é o maior"
      end
    end
  
    def Menor
      if @n1<@n2 and @n1<@n3
        puts "O número #{@n1} é o menor"
      elsif @n2<@n1 and @n2<@n3
        puts "O número #{@n2} é o menor"
      else
        puts "O número #{@n3} é o menor"
      end
    end
  
    def Produto
      puts "O produto de #{@n1}, #{@n2} e #{@n3} é: ", (@n1*@n2*@n3)
    end
  
    def Media
        puts "A média de #{@n1}, #{@n2} e #{@n3} é: ",  (@n1+@n2+@n3)/3
    end
end
  
puts 'Digite primeiro número inteiro: '
    n1 = gets.chomp.to_f
puts 'Digite segundo número inteiro: '
    n2 = gets.chomp.to_f
puts 'Digite terceiro número inteiro: '
    n3 = gets.chomp.to_f

ob = Num.new(n1, n2, n3)

puts"\n"
ob.Maior
ob.Menor
ob.Produto
ob.Media