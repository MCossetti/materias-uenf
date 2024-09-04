public class ContaBancaria {
    private float saldo;

    public ContaBancaria(float saldo) {
        this.saldo = saldo;
    }

    public void depositar(float deposito) {
        System.out.println("O valor de R$ " + deposito + " foi depositado!");
        saldo += deposito;
        System.out.println("Saldo restante na conta bancária é de R$ " + saldo + "\n");
    }

    public void sacar(float saque) {
        System.out.println("O valor de R$ " + saque + " foi retirado!");
        saldo -= saque;
        System.out.println("Saldo restante na conta bancária é de R$ " + saldo + "\n");
    }

    public void consultarSaldo() {
        System.out.println("O seu saldo bancário é de R$ " + saldo + "\n");
    }

    public static void main(String[] args){
        ContaBancaria conta1 = new ContaBancaria(1500);
        conta1.depositar(100);
        conta1.sacar(50);
        conta1.consultarSaldo();
    }
}
