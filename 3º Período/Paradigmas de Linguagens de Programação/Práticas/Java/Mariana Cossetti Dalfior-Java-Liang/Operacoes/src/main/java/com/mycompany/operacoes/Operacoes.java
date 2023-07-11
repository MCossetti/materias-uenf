/*
 * Prof. Ausberto S. Castro Vera
 * UENF - CCT - LCMAT - Ciencia da Computacao
 * 2019 - 2023
 * Arquivo: Operacoes
 * Assunto : Exercicio 4
 */

/**
 * @author Mariana Cossetti Dalfior, 2023
 */

package com.mycompany.operacoes;

import java.util.Scanner;

class matematica {
    public static float soma(float x, float y){
        return x+y;
    }

    public static float subtracao(float x, float y) {
        return x-y;
    }

    public static float produto(float x, float y) {
        return x*y;
    }

    public static String divisao(float x, float y) {
        if(y == 0){
            return "O divisor tem que ser diferente de 0!";
        }else{
            float divisao = (float) x/y;
            return "O resultado da divisão é: " + divisao;
        }
    }
}

public class Operacoes {

    public static void main(String[] args) {
        Scanner scan = new Scanner (System.in);
        
        System.out.println("\nMariana Cossetti Dalfior - UENF 2023");   
        System.out.println("Arquivo: Operacoes.java");
        
        System.out.println("\nDigite um número: ");
        float a = scan.nextFloat();
        
        System.out.println("\nDigite outro número: ");
        float b = scan.nextFloat();
        
        float soma = matematica.soma(a, b);
        float subtracao = matematica.subtracao(a, b);
        float produto = matematica.produto(a, b);
        String divisao = matematica.divisao(a, b);
                
        System.out.println("A soma dos números é: " + soma);
        System.out.println("A subtração dos números é: " + subtracao);
        System.out.println("O produto dos números é: " + produto);
        System.out.println(divisao);
    }
}
