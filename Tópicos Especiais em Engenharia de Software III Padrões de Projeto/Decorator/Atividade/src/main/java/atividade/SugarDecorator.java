package atividade;

/**
 *
 * @author mariana
 */
public class SugarDecorator extends Coffee {
    private Coffee coffee;

    public SugarDecorator(Coffee coffee) {
        this.coffee = coffee;
    }
    
    @Override
    public void prepare(){
        coffee.prepare();
        System.out.println(" - Adicionando açúcar");
    }
}
