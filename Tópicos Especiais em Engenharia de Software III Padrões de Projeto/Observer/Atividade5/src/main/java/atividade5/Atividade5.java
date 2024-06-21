package atividade5;

/**
 * Implemente um sistema de chat que envie notificações para outros clientes sempre que uma nova mensagem for enviada.
 * @author mariana
 */
public class Atividade5 {

    public static void main(String[] args) {
        User user1 = new User(1, "Mariana");
        User user2 = new User(2, "Joana");
        User user3 = new User(3, "Juliana");
        
        Message message = new Message();
        
        message.addUser(user1);
        message.addUser(user2);
        message.addUser(user3);
        
        message.newMessage("Vamos no shopping amanha?");
        
        message.removeUser(user2);
        
        message.newMessage("Quero comer Japonês!");
        
        message.removeUser(user3);
        
        message.newMessage("Hoje não terá aula!");
    }
}
