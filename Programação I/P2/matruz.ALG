algoritmo "semnome"

var
   a, b: vetor[1..5] de inteiro
   c: vetor[1..5,1..2] de inteiro
   i, k, l: inteiro

inicio
   para i de 1 ate 5 faca
      Escreval("Digite o", i, " valor")
      leia (a[i])
   fimpara

   para i de 1 ate 5 faca
      Escreval("Digite o", i, " valor")
      leia(b[i])
   fimpara

   para k de 1 ate 5 faca
         c[k,1] <- (a[k] * 2)
         c[k,2] <- (b[k] - 5)
   fimpara

   para k de 1 ate 5 faca
      escreval("")
      para l de 1 ate 2 faca
          escreva (c[k,l])
      fimpara
   fimpara

fimalgoritmo