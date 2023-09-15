/*
 * Prof. Ausberto S. Castro Vera
 * UENF - CCT - LCMAT - Ciencia da Computacao
 * 2019 - 2023
 * Arquivo: Equacao
 * Assunto : Exercicio 8 - 9.10
 */

/**
 * @author Mariana Cossetti Dalfior, 2023
 */
package com.mycompany.equacao;

import java.util.Scanner;

class EquacaoSeg {
    private int a;
    private int b;
    private int c;
    
    public EquacaoSeg () {
        Scanner scan = new Scanner(System.in);
        
        System.out.println("Valor de a: ");
        a = scan.nextInt();
        
        System.out.println("Valor de b: ");
        b = scan.nextInt();
        
        System.out.println("Valor de c: ");
        c = scan.nextInt();
    }
    
    public double getA(){
        return a;
    }
    
    public double getB(){
        return b;
    }
   
    public double getC() {
        return c;
    }
    
    public double getDiscriminant() {
        return ((b*b) - (4 * a * c));
    }
    
    public double getRoot1(double delta){
        if (delta >= 0){
            return (((- b) + (Math.sqrt(delta))) / (2 * a));
        } else {
            return 0;
        }
    }
    
    public double getRoot2(double delta) {
        if (delta >= 0){
            return (((- b) - (Math.sqrt(delta))) / (2 *a));
        } else {
            return 0;
        }
    }
}


public class Equacao {

    public static void main(String[] args) {
        System.out.println("\nMariana Cossetti Dalfior - UENF 2023");   
        System.out.println("Arquivo: Equacao.java");
        
        EquacaoSeg equa = new EquacaoSeg();
        
        double a = equa.getA();
        double b = equa.getB();
        double c = equa.getC();
        double delta = equa.getDiscriminant();
        
        System.out.println("Equação: " + a + "x² + " + b + "x + " + c + " = 0");
        System.out.println("Delta = " + delta); 
        
        double res1 = equa.getRoot1(delta);
        double res2 = equa.getRoot2(delta);
        
        System.out.println("Resposta com delta positivo: " + res1); 
        System.out.println("Resposta com delta negativo: " + res2); 
    }
}
