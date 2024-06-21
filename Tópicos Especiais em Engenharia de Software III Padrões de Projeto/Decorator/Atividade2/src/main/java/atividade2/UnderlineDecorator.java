package atividade2;

/**
 *
 * @author mariana
 */
public class UnderlineDecorator extends Text {
    private Text text;

    public UnderlineDecorator(Text text) {
        this.text = text;
    }
    
    @Override
    public void render(){
        text.render();
        System.out.println(" - Alterado para Sublinhado");
    }
}
