public class Calculadora {

    public void adicionar(double num1, double num2) {
        System.out.println("O resultado da soma: "+ (num1 + num2));
    }
    
    public void subtrair(double num1, double num2) {
        System.out.println("O resultado da subtração: " + (num1 - num2));
    }

    public void multiplicar(double num1, double num2) {
        System.out.println("O resultado da multiplicação: " + (num1 * num2));
    }

    public void dividir(double num1, double num2) {
        System.out.println( "O resultado da divisão: " + (num1/num2));
    }
    
    public static void main(String[] args) throws Exception {
        Calculadora calc = new Calculadora();

        calc.adicionar(4, 4);
        calc.multiplicar(0.04, 4);
        calc.dividir(70, 4.34);
        calc.subtrair(5, 7.21);
    }
}
