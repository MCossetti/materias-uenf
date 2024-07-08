class Conta
    def initialize(inicial)
        if inicial < 0
            @inicial = 0
            puts "ERRO! Você está negativado"
        else
            @inicial = inicial
        end
    end

    def credito
        saldo = (@inicial + 20)
        puts "Foi creditado R$20,00 em sua conta e agora seu saldo é: ", saldo
    end

    def debito
        saldo = (@inicial - 20)
        if saldo >= 0
            puts "O seu saldo depois de ser debitado R$20,00 de sua conta é: ", saldo
        else
            puts "Você ficou negativado"
        end
    end

    def getSaldo
        puts "Seu saldo é: #{@inicial}"
    end
end

puts "Qual o saldo inicial de sua conta? "
inicial = gets.chomp.to_f

ob1 = Conta.new(inicial)
ob1.credito
ob1.debito
ob1.getSaldo
puts"\n"


puts "Qual o saldo inicial de sua conta? "
inicial = gets.chomp.to_f

ob2 = Conta.new(inicial)
ob2.credito
ob2.debito
ob2.getSaldo