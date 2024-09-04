public class Divisao {
    public void dividir(int num1, int num2) {
        if (num2 == 0) {
            System.out.println("Não é possível dividir números por 0");
        } else {
            System.out.println("O resultado da divisão é: " + (num1 / num2));
        }
    }
}
