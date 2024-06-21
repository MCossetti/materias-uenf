package atividade4;

/**
 *
 * @author mariana
 */
public class SimpleBorderDecorator extends Button {
    private Button button;

    public SimpleBorderDecorator(Button button) {
        this.button = button;
    }

    @Override
    public void render(){
        button.render();
        System.out.println(" - Alterado para bordas simples");
    }
}
