package atividade4;

/**
 *
 * @author mariana
 */
public interface ISubject {
    public void addUser(IObserver observer);
    public void removeUser(IObserver observer);
    public void addProduct(IObserver product);
    public void removeProduct(IObserver product);
    public void notify(IObserver observer);
    public void notifyProduct(IObserver product);
    public void notifyAllUsers(IObserver product);
}
