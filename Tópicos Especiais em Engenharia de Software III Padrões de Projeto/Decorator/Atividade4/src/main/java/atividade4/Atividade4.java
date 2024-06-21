package atividade4;

/**
 * Adote o padrão decorator na classe Botao, incluindo o método render(). 
 * Este método deve tratar da renderização do botão básico, enquanto permitindo 
 * a definição de bordas simples, duplas ou tracejadas.
 *
 * @author mariana
 */
public class Atividade4 {

    public static void main(String[] args) {
        //Botão
        Button button = new Button();
        button.render();
        
        //Com borda simples
        Button buttonSimpleBorder = new SimpleBorderDecorator(button);
        buttonSimpleBorder.render();
        
        //Com borda dupla
        Button buttonPairBorder = new PairBorderDecorator(button);
        buttonPairBorder.render();
        
        //Com borda tracejada
        Button buttonDashedBorder = new DashedBorderDecorator(button);
        buttonDashedBorder.render();
    }
}
