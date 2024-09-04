import java.util.ArrayList;
import java.util.List;
import java.util.Iterator;

public class Biblioteca implements Iterable<Livro> {
    private List<Livro> livros;

    public Biblioteca() {
        livros = new ArrayList<>();
    }

    public void adicionarLivro(Livro livro) {
        livros.add(livro);
    }

    public void removerLivro(Livro livro) {
        livros.remove(livro);

    }

    public void mostrarLivros() {
        System.out.println("\nLivros na biblioteca:");
        for (Livro livro : livros) {
            System.out.println("Livro: " + livro.titulo + ", Autor: " + livro.autor);
        }
    }

    @Override
    public Iterator<Livro> iterator() {
        return livros.iterator();
    }
} 
