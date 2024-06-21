package atividade4;

/**
 * Implemente um sistema de estoque que envie notificações para aqueles que monitoram sempre que a quantidade de um produto mudar.
 * @author mariana
 */
public class Atividade4 {

    public static void main(String[] args) {
        User user1 = new User(1, "Mariana");
        User user2 = new User(2, "Joana");
        User user3 = new User(3, "Juliana");
        
        Product product1 = new Product(15, "Chocolate");
        Product product2 = new Product(10, "Sabonete");
        Product product3 = new Product(3, "Amaciante");

        Stock stock = new Stock();
        
        stock.addUser(user1);
        stock.addUser(user2);
        stock.addUser(user3);
        
        stock.addProduct(product1);
        stock.addProduct(product2);
        stock.addProduct(product3);
        
        product1.newQuantity(12);
        product2.newQuantity(5);
        product3.newQuantity(7);
        
        stock.research(product1); 
        
        stock.removeUser(user2);
        
        stock.research(product2);
        
        stock.removeUser(user3);
        
        stock.research(product3);       
    }
}