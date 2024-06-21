package extrafacede;

/**
 *
 * @author mariana
 */
public class Som extends Controle{
    private String entrada;

    public Som() {
        this.entrada = "HDMI";
    }
    
    @Override
    public void ligar() {
        System.out.println("Som ligado");
    }

    @Override
    public void desligar() {
        System.out.println("Som desligado");
    }

    @Override
    public void volume(int volume) {}

    public void entrada(String entrada) {}
}