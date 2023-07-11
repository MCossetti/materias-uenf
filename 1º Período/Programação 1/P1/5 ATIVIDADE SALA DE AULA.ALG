algoritmo "semnome"
var
   di, d: real
   
inicio
   escreval("Digite o valor do seu divisor: ")
   leia(di)
   escreval("Digite o valor do seu dividendo: ")
   leia(d)
   se di=0 entao
        escreval("Não é possível realizar essa divisão!")
   senão
        escreval("O resultado dessa divisão é: ",d/di)
   fimse
fimalgoritmo