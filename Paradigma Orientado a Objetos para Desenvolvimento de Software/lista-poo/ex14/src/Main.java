public class Main {
    public static void main(String[] args) throws Exception {
        Biblioteca bib = new Biblioteca();
        
        Livro l1 = new Livro("1984", "Geoge Orwell");
        Livro l2 = new Livro("É assim que acaba", "Collen Hoover");
    
        bib.adicionarLivro(l1);
        bib.adicionarLivro(l2);

        bib.mostrarLivros();

        bib.removerLivro(l1);

        bib.mostrarLivros();
    }
}
