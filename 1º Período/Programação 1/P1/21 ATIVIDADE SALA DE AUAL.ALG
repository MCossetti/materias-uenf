algoritmo "semnome"
var
 n1, n2: real
 operacao: caractere
 
inicio
      escreval("Digite um número real:")
      leia(n1)

      escreval("Digite outro número real:")
      leia(n2)

      escreval("Digite qual operação deseja realizar(+, -, *, /):")
      leia(operacao)
      
      escolha operacao
              caso "+"
                   escreval("A soma de", n1, " com", n2, " é igual a", n1 + n2:5:2, ".")
              caso "-"
                   escreval("A subtração de", n1, " com", n2, " é igual a", n1 - n2:5:2, ".")
              caso "*"
                   escreval("A multiplicação de", n1, " com", n2, " é igual a", n1 * n2:5:2, ".")
              caso "/"
                   escreval("A divisão de", n1, " com", n2, " é igual a", n1 / n2:5:2, ".")
              outrocaso
                   escreval("Operação inválida!")
      fimescolha
fimalgoritmo