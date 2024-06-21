package atividade;

/**
 *
 * @author mariana
 */
public class MilkDecorator extends Coffee {
    private Coffee coffee;

    public MilkDecorator(Coffee coffee) {
        this.coffee = coffee;
    }
    
    @Override
    public void prepare(){
        coffee.prepare();
        System.out.println(" - Adicionando leite");
    }
    
}
