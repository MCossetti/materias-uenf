package atividade5;

/**
 *
 * @author mariana
 */
public class TextDecorator extends Form{
    private Form form;

    public TextDecorator(Form form) {
        this.form = form;
    }

    @Override
    public void render(){
        form.render();
        System.out.println(" - Adicionado campo de texto");
    }
}
