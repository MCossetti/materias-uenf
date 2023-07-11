algoritmo "ATIVIDADE SALA DE AULA"

var
   sl: real
   
inicio
   escreval("Qual o salário bruto do funcionário? ")
   leia(sl)
   se (sl <300.0) então
      sl <- (sl*0.95)
   senão
        se ((sl>=300.0) e (sl<=1200.0)) então
             sl <- (sl*0.90)
        senão
             sl <- (sl*0.85)
        fimse
   fimse
   
   escreva("O salário líquido funcionário é: R$ ")
   escreva(sl:6:2)
   
fimalgoritmo