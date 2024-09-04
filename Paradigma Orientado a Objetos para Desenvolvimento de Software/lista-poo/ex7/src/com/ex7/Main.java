package com.ex7;

public class Main {
    public static void main(String[] args) {
        Motor motor1 = new Motor(1000, "V8");
        Carro carro1 = new Carro("Renault", "Duster", motor1);
    
        carro1.descricao();
    }
}
