public class Main {
    public static void main(String[] args) throws Exception {
        Caixa<Integer> cxInt = new Caixa<>();

        cxInt.addObj(15);
        cxInt.addObj(1000);
        cxInt.addObj(55);


        System.out.println("\nObjetos: " + cxInt.mostrarObj() + "\n");
        
        cxInt.removerObj(15);

        System.out.println("\nObjetos: " + cxInt.mostrarObj() + "\n");

    }
}
