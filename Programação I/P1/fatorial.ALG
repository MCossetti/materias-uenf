algoritmo "semnome"

var
   v, f, c: inteiro
   
inicio
   escreval("Digite um número para obter seu fatorial: ")
   leia(v)
   se (v = 0) entao
      escreval("O fatorial de", v, " é 1")
   senao
        f <-1
        para c de 1 ate v faca
             f <- (f*c)
        fimpara
   fimse
   escreval("O fatorial de", v, " é", f, ".")
fimalgoritmo