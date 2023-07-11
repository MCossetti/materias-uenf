algoritmo "semnome"
var
 n1, n2, n3, maior: inteiro
 
inicio
      escreval("Digite três números:")
      leia(n1, n2, n3)
      se (n1 > n2) e (n1 > n3) entao
         maior <- n1
      senão
           se (n2 > n3) entao
              maior <- n2
           senão
              maior <- n3
           fimse
      fimse
      escreval("O", maior, " é o maior número!")
fimalgoritmo