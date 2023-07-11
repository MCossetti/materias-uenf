algoritmo "semnome"
var
   n1, n2, soma: real
   r: caractere
   
inicio
   repita
         escreval("Digite dois números a serem somados:")
         leia(n1, n2)
         soma <- (n1 + n2)
         escreval("A soma é", soma, ".")
         escreval("Digite algo para fazer novo cálculo ou 'fim' para encerrar")
         leia(r)
   ate (r = "fim")
fimalgoritmo