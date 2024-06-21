package atividade2;

/**
 * Utilize o padrão decorator na classe Texto, incorporando o método render(). 
 * Este método deve lidar com a renderização do texto básico, 
 * enquanto oferece a flexibilidade para aplicar estilos como negrito, itálico, sublinhado ou fonte.
 *
 * @author mariana
 */
public class Atividade2 {

    public static void main(String[] args) {
        //Texto simples
        Text text = new Text();
        text.render();
        
        //Texto com negrito
        Text textBold = new BoldDecorator(text);
        textBold.render();
        
        //Com negrito e italico
        Text textBoldAndItalic = new ItalicDecorator(textBold);
        textBoldAndItalic.render();
        
        //Com negrito, italico e underline
        Text textComplet = new UnderlineDecorator(textBoldAndItalic);
        textComplet.render();
        
        //Com todos as modificações
        Text textFont = new FontDecorator(textComplet);
        textFont.render();
    }
}
