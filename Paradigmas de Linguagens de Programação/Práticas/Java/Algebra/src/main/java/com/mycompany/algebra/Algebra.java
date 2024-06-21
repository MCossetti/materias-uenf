/*
 * Prof. Ausberto S. Castro Vera
 * UENF - CCT - LCMAT - Ciencia da Computacao
 * 2019 - 2023
 * Arquivo: Algebra
 * Assunto : Exercicio 8 - 9.11
 */

/**
 * @author Mariana Cossetti Dalfior, 2023
 */
package com.mycompany.algebra;

import java.util.Scanner;

class LinearEquation {
    private int a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    
    public LinearEquation() {
        Scanner scan = new Scanner(System.in);
        
        System.out.println("Valor de a: ");
        a = scan.nextInt();
        
        System.out.println("Valor de b: ");
        b = scan.nextInt();
        
        System.out.println("Valor de c: ");
        c = scan.nextInt();
        
        System.out.println("Valor de d: ");
        d = scan.nextInt();
        
        System.out.println("Valor de e: ");
        e = scan.nextInt();
        
        System.out.println("Valor de f: ");
        f = scan.nextInt();
    }
    
     public int getA(){
        return a;
    }
    
    public int getB(){
        return b;
    }
   
    public int getC() {
        return c;
    }
    
    public int getD(){
        return d;
    }
    
    public int getE(){
        return e;
    }
   
    public int getF() {
        return f;
    }
    
    public Boolean isSolvable() {
        int m = ((a * d)- (b * c));
        return (m != 0);
    }
    
    public float getX() {
        return (((e * d) - (b * f)) / ((a * d) - (b * c)));
    }
    
    public float getY() {
        return (((a * f) - (e * c)) / ((a * d) - (b * c)));
    }
}

public class Algebra {

    public static void main(String[] args) {
        System.out.println("\nMariana Cossetti Dalfior - UENF 2023");   
        System.out.println("Arquivo: Algebra.java");
        
        LinearEquation eqLin = new LinearEquation();
        
        int a = eqLin.getA();
        int b = eqLin.getB();
        int c = eqLin.getC();
        int d = eqLin.getD();
        int e = eqLin.getE();
        int f = eqLin.getF();
        
        System.out.println("\n" + a + "x + " + b + "y = " + e); 
        System.out.println( c + "x + " + d + "y = " + f);
        
        boolean soluc = eqLin.isSolvable();
        if (soluc == true) {
            System.out.println("\nÉ solucionável! "); 
            
            float X = eqLin.getX();
            float Y = eqLin.getY();
            
            System.out.println("X = " + X); 
            System.out.println("y = " + Y);
        }else{
            System.out.println("Não é solucionável! "); 
        }
    }
}
