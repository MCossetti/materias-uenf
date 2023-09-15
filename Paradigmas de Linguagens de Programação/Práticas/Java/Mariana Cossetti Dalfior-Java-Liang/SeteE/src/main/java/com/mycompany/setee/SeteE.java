/*
 * Prof. Ausberto S. Castro Vera
 * UENF - CCT - LCMAT - Ciencia da Computacao
 * 2019 - 2023
 * Arquivo: SeteE
 * Assunto : Exercicio 7 - e
 */

/**
 * @author Mariana Cossetti Dalfior, 2023
 */
package com.mycompany.setee;

class Rede {
    String ip;
    int velocidade;
    
    public static String conectar () {
        return "\nConectando a rede...";
    }
        
    public static String desconectar () {
        return "\nDesconectando da rede... ";
    }
}

class Roteador extends Rede{
    int portas;
    int preco;
    
    public static String configurar () {
        return "\nConfigurando o roteador...";
    }
        
    public static String monitorar () {
        return "\nMonitorando tráfego no roteador...";
    }
}

class Servidor extends Roteador{
    String armazenamento;
    String funcoes;
    
    public static String processar () { 
        return "\nProcessando informações recebidas...";
    }
        
    public static String fornecer () {
        return "\nFornecendo informações...";
    }
}

public class SeteE {

    public static void main(String[] args) { 
        System.out.println("\nMariana Cossetti Dalfior - UENF 2023");   
        System.out.println("Arquivo: SeteE.java");
        
        Servidor redeA = new Servidor();
        
        redeA.ip = "123.21.233";
        redeA.velocidade = 400;
        redeA.portas = 4;
        redeA.preco = 100;
        redeA.armazenamento = "1 tb";
        redeA.funcoes = "Manda informações";
        
        System.out.println("\nIp da rede: " + redeA.ip);
        System.out.println("\nVelocidade da rede: " + redeA.velocidade);
        System.out.println("\nQuantidade de portas: " + redeA.portas);
        System.out.println("\nPreço: " + redeA.preco);
        System.out.println("\nArmazenamento do servidor: " + redeA.armazenamento);
        System.out.println("\nFunção do servidor: " + redeA.funcoes);
        System.out.println(Servidor.conectar());
        System.out.println(Servidor.desconectar());
        System.out.println(Servidor.configurar());
        System.out.println(Servidor.monitorar());
        System.out.println(Servidor.processar());
        System.out.println(Servidor.fornecer());
    }
}
