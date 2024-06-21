package atividade2;

/**
 *
 * @author mariana
 */
public class ModernStyleFactory extends WidgetsFactory {
    
    @Override
    public Button createButton() {
        return new Button();
    }

    @Override
    public TextArea createTextArea() {
        return new TextArea();
    }

    @Override
    public Menu createMenu() {
        return new Menu();
    }
}
