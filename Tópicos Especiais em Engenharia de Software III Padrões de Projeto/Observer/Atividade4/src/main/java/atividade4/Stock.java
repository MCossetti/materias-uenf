package atividade4;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author mariana
 */
public class Stock implements ISubject{
    private final List<IObserver> observers = new ArrayList<>();
    private final List<IObserver> products = new ArrayList<>();
    
    @Override
    public void addUser(IObserver observer) {
        observers.add(observer);
    }

    @Override
    public void removeUser(IObserver observer) {
        observers.remove(observer);
    }
    
    @Override
    public void addProduct(IObserver product) {
        products.add(product);
    }

    @Override
    public void removeProduct(IObserver product) {
        products.remove(product);
    }
    
    @Override
    public void notify(IObserver observer) {
        observer.update();
    }
    
    @Override
    public void notifyProduct(IObserver product){
        product.update();
    }
    
    public void research(IObserver product){
        notifyAllUsers(product);
        System.out.println("\n");
    }
    
    @Override
    public void notifyAllUsers(IObserver product) {
        for (IObserver ob : observers){
            notify(ob);
            notifyProduct(product);
            System.out.println("====================================");
        }
    }
}