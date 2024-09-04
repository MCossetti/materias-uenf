package com.ex7;

public class Carro {
    private String marca;
    private String modelo;
    private Motor motor;

    public Carro(String marca, String modelo, Motor motor) {
        this.marca = marca;
        this.modelo = modelo;
        this.motor = motor;
    }

    public void descricao() {
        System.out.println("Descrição do carro: ");
        System.out.println("Marca: " + marca);
        System.out.println("Modelo: " + modelo);
        motor.descricao();
    }
}
