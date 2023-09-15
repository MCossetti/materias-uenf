algoritmo "semnome"
var
n, f, c: inteiro

inicio
      escreval("Digite um número para saber qual é o seu fatorial: ")
      leia(n)
      se (n=0) entao
         escreva("O fatorial de", n," é igual a 1!")
      senao
         f <- 1
         para c de 1 ate n faca
              f <- f*c
         fimpara
         escreval("O fatorial de", n, " é:", f)
      fimse
fimalgoritmo