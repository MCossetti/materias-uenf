package atividade2;

/**
 * Implemente um sistema de alerta de temperatura que envie notificações para seus observadores sempre que a temperatura mudar.
 * @author mariana
 */
public class Atividade2 {

    public static void main(String[] args) {
        User user1 = new User(1, "Mariana");
        User user2 = new User(2, "Joana");
        User user3 = new User(3, "Juliana");
        
        Temperature temp = new Temperature(33);
        
        temp.addUser(user1);
        temp.addUser(user2);
        temp.addUser(user3);
        
        temp.newTemperature(32);
        
        temp.removeUser(user2);
        
        temp.newTemperature(40);
        
        temp.removeUser(user3);
        
        temp.newTemperature(40);
    }
}
