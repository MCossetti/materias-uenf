Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Saque com menor número de notas possíveis.
// Autor(a)    : Mariana Cossetti Dalfior
// Data atual  : 02/04/2022
Var saque, nota100, nota50, nota20, nota10, nota5, nota2, moeda1: inteiro
Inicio
escreva ("Qual será o valor do seu saque? ")
leia (saque)
nota100 <- saque \ 100
nota50 <- (saque - nota100*100) \ 50
nota20 <- (saque - (nota100 * 100 + nota50 * 50)) \ 20
nota10 <- (saque - (nota100 * 100 + nota50 * 50 + nota20 * 20)) \ 10
nota5 <- (saque - (nota100 * 100 + nota50 * 50 + nota20 * 20 + nota10 * 10)) \ 5
nota2 <- (saque - (nota100 * 100 + nota50 * 50 + nota20 * 20 + nota10 * 10 + nota5 * 5)) \ 2
moeda1 <- (saque - (nota100 * 100 + nota50 * 50 + nota20 * 20 + nota10 * 10 + nota5 * 5 + nota2 * 2))
escreval ("Notas de 100 reais: ", nota100)
escreval ("Notas de 50 reais: ", nota50)
escreval ("Notas de 20 reias: ", nota20)
escreval ("Notas de 10 reias: ", nota10)
escreval ("Notas de 5 reias: ", nota5)
escreval ("Notas de 2 reias: ", nota2)
escreval ("Moedas de 1 real: ", moeda1)
Fimalgoritmo