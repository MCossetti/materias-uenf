package atividade;

/**
 *
 * @author mariana
 */
public abstract class Document {
    
    protected String filePath;

    public Document(String filePath) {
        this.filePath = filePath;
    }

    public abstract void load();
}