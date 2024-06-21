package atividade5;

/**
 * 
 * @author mariana
 */
public class User implements IObserver{
    private final int id;
    private final String name;
  
    public User (int id, String name){
        this.id = id;
        this.name = name;
    }

    @Override
    public void update() {
        System.out.println(this.name + "( "+ this.id + " )" +  " recebeu a notificação!");    
    }
}
