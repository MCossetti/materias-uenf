algoritmo "funcao"

funcao volume(r:inteiro): real
inicio
   retorne (4*3.14*(r*r*r))/3
fimfuncao

var
   r: inteiro

inicio

   escreval("Digite o raio dessa esfera que deseja calcular o volume: ")
   leia(r)
   escreva("O volume dessa esfera é: ", volume(r))

fimalgoritmo