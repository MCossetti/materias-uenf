class Jogador
    attr_reader :primeiro_nome, :ultimo_nome, :numero_camisa, :posicao
    def initialize (primeiro_nome, ultimo_nome, numero_camisa)
        @primeiro_nome = primeiro_nome
        @ultimo_nome = ultimo_nome
        @camisa = numero_camisa
        @posicao = posicao()
    end

    def nome
        print "#{@ultimo_nome}, #{@primeiro_nome}".capitalize!
    end 

    def posicao
        case @camisa
        when 1..5
            pos = " Zagueiro "
        when 6..10
            pos = " Meio de campo "
        else
            pos = " Atacante "
        end 
        @posicao = pos
    end 

    def exibir_dados
        puts "=================================="
        print "#{nome()} | Camisa : #{@camisa} | Posição:#{@posicao} \n"
        puts "=================================="
    end
end

class Time
    attr_reader :time, :jogadores
    def initialize (nome_time)
        @time = nome_time
        @jogadores = []
    end
    
    def adicionar_jogador(jogador)
        @jogadores << jogador
    end

    def exibir_informacoes
        puts "=================================="
        puts "#{@time}".upcase!
        puts "=================================="
        @jogadores.each_with_index do |jogador , index|
        puts " Jogador #{index + 1}"
        jogador.exibir_dados()
        end
    end
end

def criar_jogador ( nome=nil, ultimo_nome=nil, camisa=nil)
    if nome.nil? && ultimo_nome.nil? && camisa.nil?
        puts 'Digite o nome '
        nome = gets.chomp.strip 
        puts 'Ultimo nome '
        ultimo_nome = gets.chomp.strip

        while true
            puts 'Informe o número da camisa: '
            camisa = gets.to_i
            if camisa > 0
                break
            else
                puts "ERRO, tem que ser maior que 0"
            end
        end
    end

    jogador = Jogador.new(nome, ultimo_nome, camisa )
    return jogador
 end

vasco = Time.new (" Vasco ")
botafogo = Time.new (" Botafogo ")

for i in 1..2
    if i == 1
        puts "Jogador do Vasco"
    end
    jogador = criar_jogador()
    vasco.adicionar_jogador(jogador)
end

for i in 1..2
    if i == 1
        puts " Jogador do Botafogo "
    end
    jogador = criar_jogador()
    botafogo.adicionar_jogador(jogador)
end

vegetti = criar_jogador("Vegetti ", "Pablo ", "99")
vasco.adicionar_jogador(vegetti)

vasco.exibir_informacoes()
botafogo.exibir_informacoes()