package atividade;

/**
 *
 * @author mariana
 */
public class ClassAdapter implements Adapter{

    private final Preexistente ada;

    public ClassAdapter() {
        this.ada = new Preexistente();
    }
     
    @Override
    public void insert() {
        this.ada.insertPreexistente();
    }

    @Override
    public void delete() {
        this.ada.deletarPreexistente();
    }

    @Override
    public void notifyThis() {
        this.ada.notifyPreexistente();    
    }
}