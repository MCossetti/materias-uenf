package com.ex8;

import java.util.ArrayList;
import java.util.List;

public class Escola {
    private List<Aluno> alunos;
    
    public Escola() {
        this.alunos = new ArrayList<>();
    }
    
    public void adicionarAlunos(Aluno aluno) {
        alunos.add(aluno);
    }

    public void mostrarInfo() {
        System.out.println("Alunos: ");
        for (Aluno aluno : alunos) {
            aluno.mostrarInfo();
        }
    }

    public List<Aluno> getAlunos() {
        return alunos;
    }
}
