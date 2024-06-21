package atividade2;

/**
 *
 * @author mariana
 */
public class FontDecorator extends Text {
    private Text text;

    public FontDecorator(Text text) {
        this.text = text;
    }
    
    @Override
    public void render(){
        text.render();
        System.out.println(" - Alterado a fonte");
    }
}
