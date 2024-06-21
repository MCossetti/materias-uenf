package atividade4;

/**
 *
 * @author mariana
 */
public class DashedBorderDecorator extends Button {
    private Button button;

    public DashedBorderDecorator(Button button) {
        this.button = button;
    }

    @Override
    public void render(){
        button.render();
        System.out.println(" - Alterado para bordas tracejadas");
    }
}