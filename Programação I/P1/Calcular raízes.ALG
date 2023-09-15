algoritmo "Calcular Raízes"
var
   a, b, c, d: real
   funcao calcular_delta(a:real; b:real; c:real):real
   inicio
   retorne (b^2-4*a*c)
   fimfuncao
inicio
      escreva("Algoritmo que calcula as raízes reais ")
      escreval ("de uma equação do tipo: ax^2+bx+c")
      repita
            escreva ("Entre com o valor de a: ")
              leia (a)
      ate (a<>0)
      escreva ("Entre com o valor de b: ")
      leia (b)
      escreva ("Entre com o valor de c: ")
      leia (c)
      d <- calcular_delta(a,b,c)
      se (d<0) entao
         escreva ("A equação não possui raízes reais.")
      senao
           escreval ("x1 =",(-b+d^0.5)/(2*a))
           escreval ("x2 =",(-b-d^0.5)/(2*a))
      fimse
fimalgoritmo