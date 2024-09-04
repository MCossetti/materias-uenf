package com.Ex5;

public class Carro extends Veiculo {
    private int ano;
    private int qntPortas;

    public Carro(String marca, String modelo, int ano, int qntPortas) {
        super(marca, modelo);
        this.ano = ano;
        this.qntPortas = qntPortas;
    }
        
    @Override
    public void descricao() {
        super.descricao();
        System.out.println("Ano: " + ano);
        System.out.println("Quantidade de portas: " + qntPortas);   
    }
}