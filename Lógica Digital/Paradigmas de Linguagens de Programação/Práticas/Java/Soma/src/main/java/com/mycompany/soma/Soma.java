/*
 * Prof. Ausberto S. Castro Vera
 * UENF - CCT - LCMAT - Ciencia da Computacao
 * 2019 - 2023
 * Arquivo: Soma
 * Assunto : Exercicio 6
 */

/**
 * @author Mariana Cossetti Dalfior, 2023
 */

package com.mycompany.soma;

import java.util.Scanner;

class Calculasoma {
    public static float calcSoma(float x, float y){
        float soma = 0;
        if (x > y){
            System.out.println("\nNão foi possível realizar a soma, pois o primeiro número é maior que o segundo!"); 
        }
        while (x <= y){
            soma += x;
            x += 1;
        }
        return soma;
    }
}

public class Soma {
    
    public static void main(String[] args) {
        Scanner scan = new Scanner (System.in);
        
        System.out.println("\nMariana Cossetti Dalfior - UENF 2023");   
        System.out.println("Arquivo: Soma.java");
        
        System.out.println("\nDigite a primeiro valor (Obrigatório ser menor que o segundo): ");
        float a = scan.nextFloat();
        
        System.out.println("\nDigite a segundo valor: ");
        float b = scan.nextFloat();
   
        float soma = Calculasoma.calcSoma(a, b);
        System.out.println("\nA soma foi: " + soma);
    }
}
