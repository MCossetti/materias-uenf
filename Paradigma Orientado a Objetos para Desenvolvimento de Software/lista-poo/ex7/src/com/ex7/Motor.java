package com.ex7;

public class Motor {
    private int potencia;
    private String tipo;

    public Motor(int potencia, String tipo) {
        this.potencia = potencia;
        this.tipo = tipo;
    }

    public void descricao() {
        System.out.println("Potencia: " + potencia);
        System.out.println("Tipo: " + tipo);   
    }
}
