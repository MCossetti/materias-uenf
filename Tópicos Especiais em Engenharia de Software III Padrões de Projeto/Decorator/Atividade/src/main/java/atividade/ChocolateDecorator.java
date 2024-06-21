package atividade;

/**
 *
 * @author mariana
 */
public class ChocolateDecorator extends Coffee{
    private Coffee coffee;

    public ChocolateDecorator(Coffee coffee) {
        this.coffee = coffee;
    }
    
    @Override
    public void prepare(){
        coffee.prepare();
        System.out.println(" - Adicionando chocholate");
    }
}
