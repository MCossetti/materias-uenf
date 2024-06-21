package extraobserver;

/**
 *
 * @author mariana
 */
public class ExtraObserver {

    public static void main(String[] args) {
        Clients client1 = new Clients(1, "Mariana");
        Clients client2 = new Clients(2, "Joana");
        Clients client3 = new Clients(3, "Juliana");
        
        Product product1 = new Product(10.8f, "Chocolate");
        Product product2 = new Product(2.89f, "Sabonete");
        Product product3 = new Product(21.56f, "Amaciante");

        Stock stock = new Stock();
        
        stock.addUser(client1);
        stock.addUser(client2);
        stock.addUser(client3);
        
        stock.addProduct(product1);
        stock.addProduct(product2);
        stock.addProduct(product3);
        
        product1.newPrice(12.7f);
        product2.newPrice(3.95f);
        product3.newPrice(25.97f);
        
        stock.research(product1); 
        
        stock.removeUser(client2);
        
        stock.research(product2);
        
        stock.removeUser(client3);
        
        stock.research(product3);       
    }
}
