public class Personagem implements Movimentavel, Desenhavel{

    @Override
    public void movimentar() {
        System.out.println("Estou movendo...");
    }

    @Override
    public void desenhar() {
        System.out.println("Estou desenhando...");
    }
    
}
