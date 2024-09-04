import java.util.ArrayList;
import java.util.List;

public class Sistema {
    private List<Funcionario> funcionarios;

    public Sistema() {
        funcionarios = new ArrayList<>();
    }

    public void adicionarFuncionario(Funcionario funcionario) {
        funcionarios.add(funcionario);
        System.out.println("Funcionário adicionado: " + funcionario.getNome());
    }

    public void removerFuncionario(int id) {
        funcionarios.removeIf(funcionario -> funcionario.getId() == id);
        System.out.println("\nFuncionário removido com ID: " + id);
    }

    public void atualizarFuncionario(int id, String nome, String cargo) {
        for (Funcionario funcionario : funcionarios) {
            if (funcionario.getId() == id) {
                funcionario.setNome(nome);
                funcionario.setCargo(cargo);
                System.out.println("\nFuncionário atualizado: " + funcionario.getNome());
                return;
            }
        }
        System.out.println("Funcionário não encontrado com ID: " + id);
    }

    public void listarFuncionarios() {
        if (funcionarios.isEmpty()) {
            System.out.println("\nNenhum funcionário encontrado.");
        } else {
            System.out.println("\nLista de Funcionários:");
            for (Funcionario funcionario : funcionarios) {
                System.out.println(funcionario);
            }
        }
    }
}