package atividade1;

/**
 * Implemente um contador de cliques que notifique a quem estiver interessado sempre que o número de cliques mudar.
*
 * @author mariana
 */
public class Atividade {

    public static void main(String[] args) {
        User user1 = new User(1, "Mariana");
        User user2 = new User(2, "Joana");
        User user3 = new User(3, "Juliana");
        
        Counter click = new Counter();
        click.addUser(user1);
        click.addUser(user2);
        click.addUser(user3);
        
        click.addClick();
      
        click.removeUser(user2);
        
        click.addClick();
        
        click.removeUser(user3);
        
        click.addClick();
        click.addClick();
    }
}