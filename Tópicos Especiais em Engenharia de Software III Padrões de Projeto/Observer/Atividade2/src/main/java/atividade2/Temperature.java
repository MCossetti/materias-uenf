package atividade2;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author mariana
 */
public class Temperature implements ISubject{
    private int temp;
    private int prevtemp; 
    private final List<IObserver> observers = new ArrayList<>();
    
    public Temperature (int temp) {
        this.temp = temp;
    }
    
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
    
    public void newTemperature(int newtemp){
        this.prevtemp = this.temp;
        this.temp = newtemp;
        
        notifyAllUsers();
        System.out.println("\n");
    }
    
    @Override
    public void notifyAllUsers() {
        for (IObserver ob : observers){
            notify(ob);
            if(this.prevtemp == this.temp){
                System.out.println("A temperatura não mudou, continua " + this.prevtemp + "º");    
                System.out.println("======================================");
            } else {
                System.out.println("A temperatura mudou de " + this.prevtemp + "º" + " para " + this.temp + "º");
                System.out.println("====================================");
            }
        }
    }
}
