algoritmo "semnome"

var
   n1, n2, n3, faltas: inteiro
   nome: caractere

inicio
      escreval("Qual o nome do aluno?")
      leia(nome)
      escreval("Qual as três notas desse aluno?")
      leia(n1, n2, n3)
      escreval("Qual o número de faltas desse aluno?")
      leia(faltas)
      se (((n1+n2+n3)/3)>=7) e (faltas <=15) entao
         escreval(nome, " foi aprovado!")
      senao
           se (((n1+n2+n3)/3)<7) entao
              escreval(nome, " foi reprovado por média!")
           senao
              se (faltas > 15) entao
                escreval (nome, " foi reprovado por faltas!")
              fimse
           fimse
      fimse
fimalgoritmo