algoritmo "semnome"
var
   r: real
   
inicio
   escreval("Digite um número entre 50 e 100: ")
   leia(r)
   enquanto (r > 50) e (r < 100) faca
            r <- (r^(1/2))
            escreval("A raíz desse número é: ", r)
            leia(r)
   fimenquanto
fimalgoritmo