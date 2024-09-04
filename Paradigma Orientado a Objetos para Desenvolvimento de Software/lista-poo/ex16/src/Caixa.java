import java.util.ArrayList;
import java.util.List;

public class Caixa<T> {
    public List<T> objetos;

    public Caixa() {
        objetos = new ArrayList<>();
    }

    public void addObj(T objeto) {
        objetos.add(objeto);
        System.out.println("Item adicionado: " + objeto.toString());
    }

    public void removerObj(T objeto) {
        if (objetos.remove(objeto)) {
            System.out.println("Item removido: " + objeto.toString());
        } else {
            System.out.println("Item não encontrado");
        }
    }

    public List<T> mostrarObj() {
        return objetos;
    }
}
