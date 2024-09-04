public class Produto {
    private String nome;
    private float preco;
    private int quantidadeEstoque;

    public Produto(String nome, float preco, int quantidadeEstoque) {
        this.nome = nome;
        this.preco = preco;
        this.quantidadeEstoque = quantidadeEstoque;
    }
    
    public void mostrarProduto() {
        System.out.println("Produto: " + nome + "\nPreço: R$ " + preco + "\nQuantidade em estoque: " + quantidadeEstoque + "\n");
    }

    public static void main(String[] args) throws Exception {
        Produto produto1 = new Produto("Barra de Chocolate", 15, 240);
        Produto produto2 = new Produto("Sabonete", 3, 100);
        Produto produto3 = new Produto("Sabão em pó", 24, 20);

        produto1.mostrarProduto();
        produto2.mostrarProduto();
        produto3.mostrarProduto();
    }
}
