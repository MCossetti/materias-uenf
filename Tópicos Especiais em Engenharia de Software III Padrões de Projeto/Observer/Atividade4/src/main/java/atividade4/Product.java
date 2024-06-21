package atividade4;

/**
 *
 * @author mariana
 */
public class Product implements IObserver{
    protected int quantity;
    protected String name;
    
    public Product (int quantity, String name){
        this.quantity = quantity;
        this.name = name;
    }
    
    public void newQuantity(int newquantity) {
        if (newquantity != quantity){
            quantity = newquantity;
        }
    }

    @Override
    public void update() {
        System.out.println("O produto " + this.name + " mudou a quantidade para " + this.quantity);
    }

}