package atividade5;

/**
 *
 * @author mariana
 */
public class SelectDecorator extends Form{
    private Form form;

    public SelectDecorator(Form form) {
        this.form = form;
    }

    @Override
    public void render(){
        form.render();
        System.out.println(" - Adicionado caixa de seleção");
    }
}