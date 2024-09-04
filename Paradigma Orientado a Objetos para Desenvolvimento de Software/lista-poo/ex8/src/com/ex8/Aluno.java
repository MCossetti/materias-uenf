package com.ex8;

public class Aluno {
    private String nome, matricula;
    private double nota;

    public Aluno(String nome, String matricula, double nota) {
        this.nome = nome;
        this.matricula = matricula;
        this.nota = nota;
    }

    public void mostrarInfo() {
        System.out.println("Aluno(a): " + nome + ", matricula: " + matricula + ", nota: " + nota);
    }
}
