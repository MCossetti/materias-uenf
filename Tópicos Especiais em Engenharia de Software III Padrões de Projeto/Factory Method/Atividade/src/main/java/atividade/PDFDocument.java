package atividade;

/**
 *
 * @author mariana
 */
public class PDFDocument extends Document {
    
    public PDFDocument(String filePath) {
        super(filePath);
    }

    @Override
    public void load() {
        System.out.println("Carregando documento em formato PDF...");
    }
}