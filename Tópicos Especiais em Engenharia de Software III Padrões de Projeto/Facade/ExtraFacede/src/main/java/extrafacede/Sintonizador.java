package extrafacede;

/**
 *
 * @author mariana
 */
public class Sintonizador extends Controle {
    @Override
    public void ligar() {
        System.out.println("Sintonizador ligado");
    }

    @Override
    public void desligar() {
        System.out.println("Sintonizador desligado");
    }

    public void canal(String canal){
        System.out.println("O canal escolhido foi: " + canal);
    }
    
    public void modo(String modo){
        System.out.println("O modo escolhido foi: " + modo);
    }
}
