import java.util.Iterator;

public class Main {
    public static void main(String[] args) throws Exception {
        Biblioteca bib = new Biblioteca();
        
        Livro l1 = new Livro("1984", "Geoge Orwell");
        Livro l2 = new Livro("É assim que acaba", "Collen Hoover");
    
        bib.adicionarLivro(l1);
        bib.adicionarLivro(l2);
        
        bib.mostrarLivros();

        System.out.println("\nUtilizando o iterator:");
        Iterator<Livro> iterator = bib.iterator();
        while (iterator.hasNext()) {
            Livro livro = iterator.next();
            System.out.println("Livro: " + livro.titulo + ", Autor: " + livro.autor);
        }

    }
}
