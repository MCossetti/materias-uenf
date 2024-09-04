package com.Ex5;

public class Veiculo {
    protected String marca;
    protected String modelo;

    public Veiculo(String marca, String modelo) {
        this.marca = marca;
        this.modelo = modelo;
    }

    public void descricao() {
        System.out.println("Características do carro:");
        System.out.println("Marca: " + marca);
        System.out.println("Modelo: " + modelo);
    }
}
