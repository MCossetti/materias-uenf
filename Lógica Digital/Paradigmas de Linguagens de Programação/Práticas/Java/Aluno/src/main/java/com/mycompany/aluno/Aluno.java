package com.mycompany.aluno;

/**
 * @author Mariana Cossetti Dalfior, 2023
 */
class Estudante {
    int matricula;
    String nome;
    String curso;
    
    public void irAFaculdade(){
        System.out.println("está indo a faculdade!\n");
    }
}

public class Aluno {
    public static void main(String[] args) {
        Estudante alunoA = new Estudante();
        
        alunoA.matricula = 2021110006;
        alunoA.nome = "Mariana Cossetti Dalfior";
        alunoA.curso = "C. Computação";
        
        System.out.println("\nMariana Cossetti Dalfior - UENF 2023");   
        System.out.println("Arquivo: Aluno.java\n");
        
        System.out.println("Aluno Nº1: " + alunoA.nome +
        ", com a matrícula: " + alunoA.matricula +
        ", do curso: " + alunoA.curso + " "); 
        
        alunoA.irAFaculdade();
    }
}
