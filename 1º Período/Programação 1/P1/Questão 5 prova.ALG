algoritmo "semnome"
var
   n1, n2: inteiro
   
inicio
   escreval("Escreva dois números inteiros:")
   leia(n1, n2)
   se (n1 > n2) entao
      escreval("O primeiro valor é o maior!")
   senao
        se (n2 > n1) entao
           escreval("O segundo valor é o maior!")
        senao
             se (n1 = n2) entao
                escreval("Não existe valor maior, os dois números são iguais!")
             fimse
        fimse
   fimse
fimalgoritmo