/*
 * Prof. Ausberto S. Castro Vera
 * UENF - CCT - LCMAT - Ciencia da Computacao
 * 2019 - 2023
 * Arquivo: SeteA
 * Assunto : Exercicio 7 - a
 */

/**
 * @author Mariana Cossetti Dalfior, 2023
 */
package com.mycompany.setea;

class Pessoa {
    String nome;
    int idade;
    
    public static String andar () {
        return "Andando pela UENF...";
    }
        
    public static String comer () {
        return "Comendo...";
    }
}

class Docente extends Pessoa{
    String disciplina;
    int cargahoraria;
    
    public static String ensinar () {
        return "Ensina alunos... ";
    }
        
    public static String aplicarProva () {
        return "Aplicando a prova...";
    }
}

class ProfessorEfetivo extends Docente{
    String especializacao;
    int cadastro;
    
    public static String orientarAluno () {
        return "Orienta alunos...";
    }
        
    public static String pesquisar () {
        return "Pesquisa mais coisas da sua especialização...";
    }
}

public class SeteA {

    public static void main(String[] args) { 
        System.out.println("\nMariana Cossetti Dalfior - UENF 2023");   
        System.out.println("Arquivo: SeteA.java");
        
        ProfessorEfetivo pessoaA = new ProfessorEfetivo();
        
        pessoaA.nome = "Mariana";
        pessoaA.idade = 20;
        pessoaA.especializacao = "Dev web";
        pessoaA.disciplina = "PLP";
        pessoaA.cargahoraria = 40;
        pessoaA.cadastro = 2021;
        
        System.out.println("\nNome: " + pessoaA.nome);
        System.out.println("Idade: " + pessoaA.idade);
        System.out.println("Especialização: " + pessoaA.especializacao);
        System.out.println("Disciplina ministrada: " + pessoaA.disciplina);
        System.out.println("Carga horária da disciplina: " + pessoaA.cargahoraria);
        System.out.println("Cadastro na faculdade: " + pessoaA.cadastro + "\n");
        System.out.println(ProfessorEfetivo.andar());
        System.out.println(ProfessorEfetivo.comer());
        System.out.println(ProfessorEfetivo.ensinar());
        System.out.println(ProfessorEfetivo.aplicarProva());
        System.out.println(ProfessorEfetivo.orientarAluno());
        System.out.println(ProfessorEfetivo.pesquisar());
    }
}
