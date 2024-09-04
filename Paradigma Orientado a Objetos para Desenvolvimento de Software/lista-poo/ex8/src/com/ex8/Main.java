package com.ex8;

public class Main {
    public static void main(String[] args) {
        Aluno aluno1 = new Aluno("Mariana", "20211100064", 10);
        Aluno aluno2 = new Aluno("Alberoni", "20211100053", 9);
        Aluno aluno3 = new Aluno("Enzo", "20211100042", 7);
        Aluno aluno4 = new Aluno("Almeida", "20211100143", 9.8);
    
        Escola escola = new Escola();

        escola.adicionarAlunos(aluno1);
        escola.adicionarAlunos(aluno2);
        escola.adicionarAlunos(aluno3);
        escola.adicionarAlunos(aluno4);

        escola.mostrarInfo();
    }
}
