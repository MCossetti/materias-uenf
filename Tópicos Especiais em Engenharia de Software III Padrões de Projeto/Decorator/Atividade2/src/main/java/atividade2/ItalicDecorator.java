package atividade2;

/**
 *
 * @author mariana
 */
public class ItalicDecorator extends Text {
    private Text text;

    public ItalicDecorator(Text text) {
        this.text = text;
    }
    
    @Override
    public void render(){
        text.render();
        System.out.println(" - Alterado para Itálico");
    }
}
