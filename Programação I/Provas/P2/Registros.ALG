algoritmo "semnome"

tipo teste = registro

   nome: caractere
   idade: inteiro
   telefone: inteiro

fimregistro

var
   a: vetor[1..2] de teste
   x: inteiro

inicio
   para x de 1 ate 2 faca
      escreva("Qual é o seu nome? ")
      leia(a.nome[x])
      escreval("")
      escreva("Qual é a sua idade? ")
      leia(a.idade[x])
      escreval("")
      escreva("Qual o seu telefone? ")
      leia(a.telefone[x])
      escreval("")
   fimpara

   para x de 1 ate 2 faca
      escreva("Seu nome é: ", a.nome[x])
      escreval("")
      escreva("Sua idade é: ", a.idade[x])
      escreval("")
      escreva("Seu telefone é: ", a.telefone[x])
      escreval("")
   fimpara


fimalgoritmo