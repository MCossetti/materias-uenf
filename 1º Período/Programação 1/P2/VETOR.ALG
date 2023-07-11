algoritmo "vetor"

var
   nomes: vetor [1..5] de caractere
   x: inteiro

inicio
   para x de 1 ate 5 faca
      escreva ("Digite um nome: ")
      leia(nomes[x])
   fimpara

   para x de 1 ate 5 faca
      escreval (nomes[x])
   fimpara

   escreval("")

   enquanto (x >= 1) faca
      escreval(nomes[x])
      x <- (x - 1)
   fimenquanto

fimalgoritmo