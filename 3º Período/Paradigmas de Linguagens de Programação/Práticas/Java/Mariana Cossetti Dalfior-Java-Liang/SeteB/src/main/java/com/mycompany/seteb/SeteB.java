/*
 * Prof. Ausberto S. Castro Vera
 * UENF - CCT - LCMAT - Ciencia da Computacao
 * 2019 - 2023
 * Arquivo: SeteB
 * Assunto : Exercicio 7 - b
 */

/**
 * @author Mariana Cossetti Dalfior, 2023
 */

package com.mycompany.seteb;

class Planta {
    String nome;
    String familia;
    
    public static String crescer () {
        return "Está crescendo...";
    }
        
    public static String respirar () {
        return "Respirando através da fotossíntese...";
    }
}

class Verdura extends Planta{
    String sabor;
    String especie;
    
    public static String preparar () {
        return "Preparando a verdura...";
    }
        
    public static String cozinhar () {
        return "Cozinhando...";
    }
}

class Folha extends Verdura{
    String cor;
    String textura;
    
    public static String lavar () {
        return "Lavando a folha...";
    }
        
    public static String cortar () {
        return "Cortando em pequenos pedaços...";
    }
}

public class SeteB {

    public static void main(String[] args) {
        System.out.println("\nMariana Cossetti Dalfior - UENF 2023");   
        System.out.println("Arquivo: SeteB.java");
        
        Folha verduraA = new Folha();
        
        verduraA.nome = " Couve";
        verduraA.familia = " Brassicaceae";
        verduraA.especie = " B. oleracea";
        verduraA.cor = " verde";
        verduraA.textura = " crocante"; 
        verduraA.sabor = " deliciosa";
        
        System.out.println("\nNome: " + verduraA.nome);
        System.out.println("Família: " + verduraA.familia);
        System.out.println("Espécie: " + verduraA.especie);
        System.out.println("Cor: " + verduraA.cor);
        System.out.println("Textura: " + verduraA.textura);
        System.out.println("Sabor: " + verduraA.sabor + "\n");
        System.out.println(Folha.crescer());
        System.out.println(Folha.respirar());
        System.out.println(Folha.lavar());
        System.out.println(Folha.cortar());
        System.out.println(Folha.preparar());
        System.out.println(Folha.cozinhar());
    }
}
