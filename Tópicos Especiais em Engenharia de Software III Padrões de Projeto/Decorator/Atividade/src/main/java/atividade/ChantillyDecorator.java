package atividade;

/**
 *
 * @author mariana
 */
public class ChantillyDecorator extends Coffee {
    private Coffee coffee;

    public ChantillyDecorator(Coffee coffee) {
        this.coffee = coffee;
    }
    
    @Override
    public void prepare(){
        coffee.prepare();
        System.out.println(" - Adicionando chantilly");
    }
}
