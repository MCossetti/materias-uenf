package atividade2;

/**
 *
 * @author mariana
 */
public class BoldDecorator extends Text {
    private Text text;

    public BoldDecorator(Text text) {
        this.text = text;
    }
    
    @Override
    public void render(){
        text.render();
        System.out.println(" - Alterado para Negrito");
    }
}
