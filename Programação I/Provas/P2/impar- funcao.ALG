algoritmo "semnome"

funcao impar(a:inteiro):logico
inicio
   retorne(a%2<>0)
fimfuncao

var
   b: inteiro
   c: logico
inicio
   escreva("Digite um valor: ")
   leia(b)
   c <- impar(b)
   escreva(c)

fimalgoritmo