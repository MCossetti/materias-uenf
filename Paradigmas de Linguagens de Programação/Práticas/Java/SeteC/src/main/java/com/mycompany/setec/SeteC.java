/*
 * Prof. Ausberto S. Castro Vera
 * UENF - CCT - LCMAT - Ciencia da Computacao
 * 2019 - 2023
 * Arquivo: SeteC
 * Assunto : Exercicio 7 - c
 */

/**
 * @author Mariana Cossetti Dalfior, 2023
 */
package com.mycompany.setec;

class Animais {
    String nome;
    String porte;
    
    public static String comer () {
        return "Comendo peixes...";
    }
        
    public static String respirar () {
        return "Repirando pelo bico...";
    }
}

class Ave extends Animais{
    String tamanho_asa;
    String especie;
    
    public static String voar () {
        return "Voando...";
    }
        
    public static String emitir_som () {
        return "Grasnando (quá quá)...";
    }
}

class AveAquatica extends Ave{
    String bico;
    String habitat;
    
    public static String nadar () {
        return "Nadando em seu habitat...";
    }
        
    public static String comer_peixe () {
        return "Comendo peixes...";
    }
}

public class SeteC {

    public static void main(String[] args) { 
        System.out.println("\nMariana Cossetti Dalfior - UENF 2023");   
        System.out.println("Arquivo: SeteC.java");
        
        AveAquatica animalA = new AveAquatica();
        
        animalA.nome = " Pato";
        animalA.porte = " médio";
        animalA.tamanho_asa = " 30 cm";
        animalA.especie = " A. platyrhynchos";
        animalA.bico = " longo";
        animalA.habitat = " lagos e rios";
        
        System.out.println("\nNome: " + animalA.nome);
        System.out.println("Porte: " + animalA.porte);
        System.out.println("Tamanho da asa: " + animalA.tamanho_asa);
        System.out.println("Espécie: " + animalA.especie);
        System.out.println("Tamanho do bico: " + animalA.bico);
        System.out.println("Habitat natural: " + animalA.habitat + "\n");
        System.out.println(AveAquatica.comer());
        System.out.println(AveAquatica.voar());
        System.out.println(AveAquatica.emitir_som());
        System.out.println(AveAquatica.respirar());
        System.out.println(AveAquatica.nadar());
        System.out.println(AveAquatica.comer_peixe());
    }
}
