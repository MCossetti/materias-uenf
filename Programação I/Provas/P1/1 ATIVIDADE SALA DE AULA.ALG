Algoritmo "pseudocódigo de um algoritmo que receba 4 notas, calcule e mostre a média aritmética entre elas."

var
   notaum, notadois, notatres, notaquatro, media: real
   
inicio
      escreva("Qual foi a sua primeira nota? ")
      leia (notaum)
      escreva("Qual foi a sua segunda nota? ")
      leia (notadois)
      escreva("Qual foi a sua terceira nota? ")
      leia (notatres)
      escreva("Qual foi a sua quarta nota? ")
      leia (notaquatro)
      media <- (notaum + notadois + notatres + notaquatro)/4
      escreva("A média de suas notas foram:", media, "!")
      
fimalgoritmo