algoritmo "8 ATIVIDADE PARA CASA2"

var
   l: caractere
   
inicio
   escreval("Digite uma letra do alfabeto: ")
   leia(l)
   se (l=="a") ou (l=="e") ou (l=="i") ou (l=="o") ou (l=="u") entao
      escreval("Essa letra é uma vogal!")
   senao
        se (l=="b") ou (l=="c") ou (l=="d") ou (l=="f") ou l=="g" ou l=="h" ou l=="j" ou l=="k" ou l=="l" ou l=="m" ou l=="n" ou l=="p" ou l=="q" ou l=="r" ou l=="s" ou l=="t" ou l=="v" ou l=="w" ou l=="x" ou l=="y" ou l=="z" entao
             escreval("Essa é uma consoante!")
        senao
             escreval("Esse caractere não é uma letra!")
        fimse
   fimse
fimalgoritmo