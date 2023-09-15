Algoritmo "2 exercício para entregar"

var
   saque:inteiro

inicio
      escreval("Qual o valor que deseja sacar? ")
      leia (saque)
      escreval("Terá", saque\100, " notas de 100 reais!")
      saque <- saque%100
      escreval("Terá", saque\50, " notas de 50 reais!")
      saque <- saque%50
      escreval("Terá", saque\20, " notas de 20 reais!")
      saque <- saque%20
      escreval("Terá", saque\10, " notas de 10 reais!")
      saque <- saque%10
      escreval("Terá", saque\5, " notas de 5 reais!")
      saque <- saque%5
      escreval("Terá", saque\2, " notas de 2 reais!")
      saque <- saque%2
      escreval("Terá", saque, " notas de 1 real!")
      
fimalgoritmo