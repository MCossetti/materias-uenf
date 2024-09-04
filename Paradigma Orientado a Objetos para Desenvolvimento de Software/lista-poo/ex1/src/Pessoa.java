public class Pessoa {
    private String nome;
    private int idade;

    public Pessoa(String nome, int idade) {
        this.nome = nome;
        this.idade = idade;
    }

    public void mostrarInfo() {
        System.out.println("Nome: " + nome);
        System.out.println("Idade: " + idade + "\n");
    }

    public static void main(String[] args) throws Exception {
        Pessoa pessoa1 = new Pessoa("Mariana", 21);
        pessoa1.mostrarInfo();
        
        Pessoa pessoa2 = new Pessoa("Joao", 30);
        pessoa2.mostrarInfo();

    }
}
