import java.util.ArrayList;
import java.util.List;

public class Biblioteca {
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
        for(Livro livro : livros) {
            System.out.println("Livro: " + livro.titulo + ", Autor: " + livro.autor);
        }
    }
} 
