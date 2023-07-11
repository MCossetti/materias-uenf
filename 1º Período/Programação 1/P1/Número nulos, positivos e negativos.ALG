 algoritmo "semnome"
 var
    n: inteiro
    
 inicio
    para n de 0 ate 10 faca
         escreval("Digite um número:")
         leia(n)
          se (n = 0) entao
             escreval("O", n, " é um número nulo!")
          senao
               se (n > 0) entao
                  escreval("O", n, " é um número positivo!")
               senao
                  escreval("O", n, " é um número negativo!")
               fimse
          fimse
    fimpara

 fimalgoritmo