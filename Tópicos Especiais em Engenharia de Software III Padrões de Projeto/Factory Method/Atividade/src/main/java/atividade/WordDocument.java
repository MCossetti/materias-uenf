package atividade;

/**
 *
 * @author mariana
 */
public class WordDocument extends Document {
    public WordDocument(String filePath) {
        super(filePath);
    }

    @Override
    public void load() {
        System.out.println("Carregando documento em formato Word...");
    }
}