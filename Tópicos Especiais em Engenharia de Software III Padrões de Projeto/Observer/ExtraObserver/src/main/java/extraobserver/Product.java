package extraobserver;

/**
 *
 * @author mariana
 */
public class Product implements Observer {
    protected float price;
    protected String name;
    
    public Product (float price, String name){
        this.price = price;
        this.name = name;
    }
    
    public void newPrice(float newprice) {
        if (newprice != price){
            price = newprice;
        }
    }

    @Override
    public void update() {
        System.out.println("O produto " + this.name + " mudou o preço para " + this.price);
    }
}