package atividade;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

/**
 *
 * @author mariana
 */
public class BaseDeDados{
    private List<Modelo> users = new ArrayList<>();
    Scanner scanner = new Scanner(System.in);
    
    public void cadastro(Modelo modelo) {
        users.add(modelo);
        System.out.println("O " + modelo.getName() + " foi cadastrado com o email " + modelo.getEmail() + " e username " + modelo.getUsername()+ "\n");
    }
    
    public void recuperacao(String name){
        for(Modelo modelo: users){
            if (modelo.name.equals(name)){
                System.out.println("Os dados de " + modelo.getName() + " foram recuperados com sucesso!\n");
            } else {
                System.out.println("Usuário não encontrado\n");       
            }
        }
    }
    
    public void atualizacao(Modelo modelo){
        String name, email, username;
 
        if (modelo != null){
            System.out.print("Nome: ");
            name = scanner.nextLine();
            modelo.setName(name);
            
            System.out.print("\nEmail: ");
            email = scanner.nextLine();
            modelo.setEmail(email);
            
            System.out.print("\nUsername: ");
            username = scanner.nextLine();
            modelo.setUsername(username);
            
            System.out.println("\nDados atualizados para: \nNome: " + modelo.getName() + "\nEmail: " + modelo.getEmail() + "\nUsername: " + modelo.getUsername() + "\n");
        } else {
            System.out.println("Não é possível relizar a atualização pois usuário não existe!\n");
        }
    }
    
    public void remocao(Modelo modelo){
        users.remove(modelo);
        System.out.println("Os dados de " + modelo.getName() +  " foram removidos do sistema!\n");
    }
}   