package atividade;

/**
 *
 * @author mariana
 */
public class Class implements Adapter{
    @Override
    public void insert() {
        System.out.println("Inserido com sucesso!");
    }

    @Override
    public void delete() {
        System.out.println("Deletado com sucesso!");
    }

    @Override
    public void notifyThis() {
        System.out.println("Notificado com sucesso!");
    }
}
