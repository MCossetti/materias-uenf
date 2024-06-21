package extraobserver;

/**
 *
 * @author mariana
 */
public class Clients implements Observer{
    private final int id;
    private final String name;
  
    public Clients (int id, String name){
        this.id = id;
        this.name = name;
    }

    @Override
    public void update() {
        System.out.println(this.name + "( "+ this.id + " )" +  " recebeu a notificação!");    
    }
}
