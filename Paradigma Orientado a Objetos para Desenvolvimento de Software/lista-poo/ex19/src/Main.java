public class Main {
    public static void main(String[] args) {
        Sistema s1 = new Sistema();

        s1.adicionarFuncionario(new Funcionario(1, "Mariana", "Desenvolvedor"));
        s1.adicionarFuncionario(new Funcionario(2, "Alberoni", "Analista"));

        s1.listarFuncionarios();

        s1.atualizarFuncionario(2, "Mariana", "Desenvolvedor Sênior");

        s1.removerFuncionario(1);

        s1.listarFuncionarios();
    }
}
