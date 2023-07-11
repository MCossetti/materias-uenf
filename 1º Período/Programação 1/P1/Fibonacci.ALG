algoritmo "semnome"

var
   i, m, p: inteiro
   
inicio
   i := 0
   m := 1
   p := 0
   enquanto (p<300) faça
      escreval(p)
      p <- (i + m)
      m <- i
      i <- p
   fimenquanto
fimalgoritmo