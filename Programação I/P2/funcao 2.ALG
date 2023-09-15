algoritmo "semnome"

funcao quadrado(a:inteiro):inteiro

inicio
   retorne(a*a)
fimfuncao

var
   b: inteiro

inicio

   escreval("Digite um número inteiro: ")
   leia(b)
   b <- quadrado(b)
   escreva("O quadrado de é: ", b)
   
fimalgoritmo