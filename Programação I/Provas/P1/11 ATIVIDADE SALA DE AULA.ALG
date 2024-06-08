algoritmo "semnome"

var
  r: real
  
inicio
      escreval("Digite um número: ")
      leia (r)
      
      enquanto (0 < r) e (r < 100) faca
           r <-  (r^(1/2))
           escreval("A raíz desse número é: ", r)
           leia(r)
      fimenquanto
fimalgoritmo