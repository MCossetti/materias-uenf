class Esportista
    def competir
        puts "Participando de uma competição"
    end

    def correr
    end
end

class JogadordeFutebol < Esportista
    def correr
        puts "Correndo atrás da bola"
    end
end

class Maratonista < Esportista
    def correr
        puts "Percorrendo o circuito"
    end
end

joana = JogadordeFutebol.new
zehlu = Maratonista.new

puts "Joana está: "
joana.correr 
joana.competir

puts "\nJosé está: "
zehlu.correr
zehlu.competir
