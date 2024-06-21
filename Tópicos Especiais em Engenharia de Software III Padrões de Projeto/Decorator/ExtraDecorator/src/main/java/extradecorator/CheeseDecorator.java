/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package extradecorator;

/**
 *
 * @author maria
 */
public class CheeseDecorator extends Hamburguer{
    private Hamburguer hamburguer;

    public CheeseDecorator(Hamburguer hamburguer) {
        this.hamburguer = hamburguer;
    }

    @Override
    public void prepare(){
        hamburguer.prepare();
        System.out.println(" - Adicionando queijo");
    }
}
