algoritmo "semnome"

var
   letra: caracter
   
inicio
   escreval("Digite uma letra: ")
   leia(letra)
   escolha (letra)
       caso "a","e","i","o","u"
            escreval("Essa letra é uma vogal!")
       caso "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"
            escreval("Essa letra é uma consoante!")
       outrocaso
            escreval("Esse é outro carcatere!")
       fimescolha
fimalgoritmo