package atividade;

/**
 * Implemente o padrão decorator para a classe Café, adicionando o método prepare(). 
 * Este método deve lidar com a preparação básica do café, enquanto permitindo a adição de 
 * ingredientes como leite, açúcar, chocolate ou chantilly.
 *
 * @author mariana
 */
public class Atividade {

    public static void main(String[] args) {
        //Básico
        Coffee coffee = new Coffee();
        coffee.prepare();
        
        //Com leite
        Coffee coffeeWithMilk = new MilkDecorator(coffee);
        coffeeWithMilk.prepare();
        
        //Com leite e açúcar
        Coffee coffeeWithMilkdAndSugar = new SugarDecorator(coffeeWithMilk);
        coffeeWithMilkdAndSugar.prepare();
        
        //Com leite, açúcar e chocolate
        Coffee coffeeComplete = new ChocolateDecorator(coffeeWithMilkdAndSugar);
        coffeeComplete.prepare();
        
        //Com todos os ingredientes
        Coffee coffeeMega = new ChantillyDecorator(coffeeComplete);
        coffeeMega.prepare();
    }
}
