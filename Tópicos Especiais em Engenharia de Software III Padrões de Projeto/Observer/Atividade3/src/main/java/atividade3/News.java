package atividade3;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author mariana
 */
public class News implements ISubject{
    private String news;
    private final List<IObserver> observers = new ArrayList<>();
    /**
    public News (String news) {
        this.newN = news;
    }
    */
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
    
    public void newNews(String newNews){
        this.news = newNews;
        notifyAllUsers();
        System.out.println("\n");
    }
    
    @Override
    public void notifyAllUsers() {
        for (IObserver ob : observers){
            notify(ob);
            System.out.println("Nova notícia: " + this.news);
            System.out.println("====================================");
        }
    }
}
