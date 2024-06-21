package extraobserver;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author mariana
 */
public class Stock implements Subject {
    private List<Observer> clients = new ArrayList<>();
    private List<Observer> products = new ArrayList<>();
    
    @Override
    public void addUser(Observer observer) {
        clients.add(observer);
    }

    @Override
    public void removeUser(Observer observer) {
        clients.remove(observer);
    }

    @Override
    public void addProduct(Observer product) {
        products.add(product);
    }

    @Override
    public void removeProduct(Observer product) {
        products.remove(product);
    }

    @Override
    public void notify(Observer observer) {
        observer.update();
    }

    @Override
    public void notifyProduct(Observer product) {
        product.update();
    }
    
    public void research(Observer product){
        notifyAllUsers(product);
        System.out.println("\n");
    }

    @Override
    public void notifyAllUsers(Observer product) {
        for (Observer cl : clients) {
            notify(cl);
            notifyProduct(product);
            System.out.println("------------------------------");
        }
    }
    
}