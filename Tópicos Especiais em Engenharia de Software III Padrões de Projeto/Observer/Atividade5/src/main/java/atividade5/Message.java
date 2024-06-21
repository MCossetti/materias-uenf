package atividade5;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author mariana
 */
public class Message implements ISubject{
    private String message;
    private final List<IObserver> observers = new ArrayList<>();

    @Override
    public void addUser(IObserver observer) {
        observers.add(observer);
    }

    @Override
    public void removeUser(IObserver observer) {
        observers.remove(observer);
    }

    @Override
    public void notify(IObserver observer) {
        observer.update();
    }
    
    public void newMessage(String newMessage){
        this.message = newMessage;
        notifyAllUsers();
        System.out.println("\n");
    }
    
    @Override
    public void notifyAllUsers() {
        for (IObserver ob : observers){
            notify(ob);
            System.out.println("Nova mensagem: " + this.message);
            System.out.println("====================================");
        }
    }
}
