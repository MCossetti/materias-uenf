algoritmo "semnome"
var
   n1, n2, n3, maior: inteiro

inicio
   escreval("Escreva três números: ")
   leia(n1, n2, n3)
   se (n1 > n2) e (n2 > n3) entao
      maior <- n1
   senao
        se (n3 > n2) e (n3 > n1) entao
          maior <- n3
        senão
           se (n2 > n1) e (n2 > n3) entao
             maior <- n2
           fimse
        fimse
   fimse
   escreval("O maior número é", maior)
fimalgoritmo