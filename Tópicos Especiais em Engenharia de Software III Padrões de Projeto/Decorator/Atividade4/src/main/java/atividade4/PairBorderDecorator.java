package atividade4;

/**
 *
 * @author mariana
 */
public class PairBorderDecorator extends Button {
    private Button button;

    public PairBorderDecorator(Button button) {
        this.button = button;
    }

    @Override
    public void render(){
        button.render();
        System.out.println(" - Alterado para bordas duplas");
    }
}