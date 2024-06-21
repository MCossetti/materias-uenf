package atividade3;

/**
 *
 * @author mariana
 */
public interface ISubject {
    public void addUser(IObserver observer);
    public void removeUser(IObserver observer);
    public void notify(IObserver observer);
    public void notifyAllUsers();
}
