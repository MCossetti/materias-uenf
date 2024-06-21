package atividade;

/**
 *
 * @author mariana
 */
public class HTMLDocument extends Document {
    
    public HTMLDocument(String filePath) {
        super(filePath);
    }

    @Override
    public void load() {
        System.out.println("Carregando documento em formato HTML...");
    }
}
