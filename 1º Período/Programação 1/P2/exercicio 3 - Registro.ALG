algoritmo "semnome"


tipo

   loja = registro

      nome: caractere
      telefone: inteiro
      precoeletro: inteiro

   fimregistro

var

   bancodedados: vetor[1..2] de loja
   x: inteiro
   m: real
inicio

   para x de 1 ate 2 faca
      escreval("Digite o nome da loja: ")
      leia(bancodedados[x].nome)
      escreval("Digite o telefone da loja: ")
      leia(bancodedados[x].telefone)
      escreval("Digite o preço do eletrodoméstico: ")
      leia(bancodedados[x].precoeletro)
      escreval("")
   fimpara

   para x de 1 até 2 faca
      m <- m + bancodedados[x].precoeletro
   fimpara

   escreval("")

   escreval("A média de preços desse eletrodoméstico é: R$", m/x, " reais.")

   escreval("")

   para x de 1 ate 2 faca
      se bancodedados[x].precoeletro < m/2 entao
         escreval("A loja, ", bancodedados[x].nome, ", possui um preço abaixo da média!")
      fimse
   fimpara




fimalgoritmo