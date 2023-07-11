algoritmo "Sou procedimento"

procedimento teste()

inicio
   escreval("Sou um procedimento!")

fimprocedimento


var
   x: inteiro
   y: caractere

inicio

   x <- 0

   repita
      y <- (y + " ")
      escreva(y)
      teste()
      x <- (x + 1)

   até (x = 10)

fimalgoritmo