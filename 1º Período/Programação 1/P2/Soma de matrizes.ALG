algoritmo "semnome"

var
   m1,m2,m3: vetor[1..4,1..4] de inteiro
   x, y: inteiro

inicio
   para x de 1 até 4 faça
      para y de 1 até 4 faça
         escreva("Digite um número: ")
         leia(m1[x,y])
      fimpara
   fimpara

   para x de 1 até 4 faça
      escreval("")
      para y de 1 até 4 faça
         escreva(m1[x,y])
      fimpara
   fimpara

   escreval("")
   escreval("")

   para x de 1 até 4 faça
      para y de 1 até 4 faça
         escreva("Digite um número: ")
         leia(m2[x,y])
      fimpara
   fimpara

   para x de 1 até 4 faça
      escreval("")
      para y de 1 até 4 faça
         escreva(m2[x,y])
      fimpara
   fimpara

   escreval("")
   escreval("")

   para x de 1 ate 4 faca
      para y de 1 ate 4 faca
         m3[x,y] <- m1[x,y] + m2[x,y]
      fimpara
   fimpara

   escreval("A soma das matrizes é:")

   para x de 1 até 4 faça
      escreval("")
      para y de 1 até 4 faça
         escreva(m3[x,y])
      fimpara
   fimpara

   escreval("")

fimalgoritmo