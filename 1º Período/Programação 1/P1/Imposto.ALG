algoritmo "semnome"
var
   s, imposto: real
 
inicio
   escreval("Qual o valor do salário?")
   leia(s)
   se (s >= 3000) entao
      imposto <- (s*0.15)
   senao
        se (s < 1500) entao
              imposto <- 0
        senao
              imposto <- (s * 0.07)
        fimse
   fimse
   escreval("O valor do imposto é: R$", imposto)
fimalgoritmo