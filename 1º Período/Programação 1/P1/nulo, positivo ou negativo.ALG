algoritmo "semnome"

var
   n: inteiro
   
inicio
   para n de 1 ate 10 faca
        escreval("Digite um número menor ou igual a dez:")
        leia(n)
        se (n = 0) entao
           escreval("Esse número é nulo!")
        fimse
        se (n > 0) entao
           escreval("Esse número é positivo!")
        fimse
        se (n < 0) entao
           escreval("Esse número é negativo!")
        fimse
   fimpara
fimalgoritmo