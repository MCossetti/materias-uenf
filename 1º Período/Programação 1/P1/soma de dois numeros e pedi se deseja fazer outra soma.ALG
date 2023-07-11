algoritmo "semnome"
var
   n1, n2, soma: inteiro
   resp: caractere
   
inicio
   repita
         escreval("Digite dois números para serem somados:")
         leia(n1, n2)
         soma <- (n1 + n2)
         escreval("A soma de", n1, " e", n2," é de:", soma)
         escreval("Digite algo para realizar outra soma ou 'fim' para encerrar!")
         leia(resp)
   ate (resp = "fim")
fimalgoritmo