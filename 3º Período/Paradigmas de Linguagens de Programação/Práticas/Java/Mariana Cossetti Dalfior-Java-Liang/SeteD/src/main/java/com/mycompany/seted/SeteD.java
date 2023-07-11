/*
 * Prof. Ausberto S. Castro Vera
 * UENF - CCT - LCMAT - Ciencia da Computacao
 * 2019 - 2023
 * Arquivo: SeteD
 * Assunto : Exercicio 7 - d
 */

/**
 * @author Mariana Cossetti Dalfior, 2023
 */
package com.mycompany.seted;

class Eletronicos {
    String modelo;
    int preco;
    
    public static String ligar () {
        return  "Ligando computador...";
    }
        
    public static String desligar () {
        return "Desligando computador...";
    }
}

class Computador extends Eletronicos{
    String marca;
    String processador;
    
    public static String rodar_programa() {
        return "Abrindo programa...";
    }
        
    public static String inicializar() {
        return "Inicializando...";
    }
}

class Notebook extends Computador{
    int bateria;
    int memoria;
    
    public static String carregar () {
        return "Bateria carregando...";
    }
        
    public static String abrir() {
         return "Abrindo notebook";
    }
}

public class SeteD {

    public static void main(String[] args) { 
        System.out.println("\nMariana Cossetti Dalfior - UENF 2023");   
        System.out.println("Arquivo: SeteD.java");
        
        Notebook noteA = new Notebook();
        
        noteA.modelo = "A514-54";
        noteA.preco = 3500;
        noteA.marca = "Acer";
        noteA.processador = "intel core i7";
        noteA.bateria = 5200;
        noteA.memoria = 256;
        
        System.out.println("\nMarca do notebook: " + noteA.marca);
        System.out.println("\nModelo do notebook: " + noteA.modelo);
        System.out.println("\nPreço: " + noteA.preco);
        System.out.println("\nMemória: " + noteA.memoria);
        System.out.println("\nBateria: " + noteA.bateria);
        System.out.println("\nProcessador: " + noteA.processador);
        System.out.println(Notebook.ligar());
        System.out.println(Notebook.desligar());
        System.out.println(Notebook.carregar());
        System.out.println(Notebook.abrir());
        System.out.println(Notebook.inicializar());
        System.out.println(Notebook.rodar_programa());
    }
}
