/*
 * Prof. Ausberto S. Castro Vera
 * UENF - CCT - LCMAT - Ciencia da Computacao
 * 2019 - 2023
 * Arquivo: Media
 * Assunto : Exercicio 5
 */

/**
 * @author Mariana Cossetti Dalfior, 2023
 */

package com.mycompany.media;
import java.util.Scanner;

class Calcmedia {
    public static float media (float nota1, float nota2, float nota3, 
                              float nota4, float nota5) {
        return((nota1+nota2+nota3+nota4+nota5)/5);        
    }
}
        
public class Media {
    public static void main(String[] args) {
        Scanner scan = new Scanner (System.in);
        
        System.out.println("\nMariana Cossetti Dalfior - UENF 2023");   
        System.out.println("Arquivo: Media.java");
        
        System.out.println("\nDigite a primeira nota: ");
        float a = scan.nextFloat();
        
        System.out.println("\nDigite a segunda nota: ");
        float b = scan.nextFloat();
        
        System.out.println("\nDigite a terceira nota: ");
        float c = scan.nextFloat();
        
        System.out.println("\nDigite a quarta nota: ");
        float d = scan.nextFloat();
        
        System.out.println("\nDigite a quinta nota: ");
        float e = scan.nextFloat();
        
        float mediafinal = Calcmedia.media(a, b, c, d, e);
        System.out.println ("Sua média final foi: " + mediafinal);
        
        if(mediafinal >= 6){
            System.out.println ("Você foi aprovado!");
        }else {
            System.out.println ("Você foi reprovado!");
        }   
    }
}
    