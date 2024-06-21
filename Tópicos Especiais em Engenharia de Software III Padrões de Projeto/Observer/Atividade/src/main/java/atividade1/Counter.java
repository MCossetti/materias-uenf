package atividade1;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author mariana
 */
public class Counter implements ISubject{
    private int counterClick;
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
    
    public void addClick(){
        counterClick = counterClick + 1;
        notifyAllUsers();
        System.out.println("-----------------------------------------------");
    }
    
    @Override
    public void notifyAllUsers() {
        for (IObserver ob : observers){
            notify(ob);
            System.out.println("Numero total de cliques atualizado: " + counterClick + "\n");
        }
    }
}
