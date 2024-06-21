package com.mycompany.cachorro;

/**
 * @author Mariana Cossetti Dalfior, 2023
 */
class Animais {
    String nome;
    float peso;

}
public class Cachorro {
    public static void main(String[] args) {
        
        Animais Cachorro = new Animais();
        
        Cachorro.nome = "Dog";
        Cachorro.peso = (float) 10.55;
        
        System.out.println("Mariana Cossetti Dalfior - UENF 2023");   
        System.out.println("Arquivo: Cachorro.java\n");
        
        System.out.println("Cachorro: " + Cachorro.nome + 
                " possui " + Cachorro.peso + 
                "kg do peso.");
    }
}
