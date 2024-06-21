package atividade5;

/**
 *
 * @author mariana
 */
public class DateDecorator extends Form{
    private Form form;

    public DateDecorator(Form form) {
        this.form = form;
    }

    @Override
    public void render(){
        form.render();
        System.out.println(" - Adicionado seletor de data");
    }
}