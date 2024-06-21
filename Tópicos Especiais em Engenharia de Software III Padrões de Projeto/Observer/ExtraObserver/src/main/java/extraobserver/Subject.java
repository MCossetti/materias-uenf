package extraobserver;

/**
 *
 * @author mariana
 */
public interface Subject {
    public void addUser(Observer observer);
    public void removeUser(Observer observer);
    public void addProduct(Observer product);
    public void removeProduct(Observer product);
    public void notify(Observer observer);
    public void notifyProduct(Observer product);
    public void notifyAllUsers(Observer product);
}