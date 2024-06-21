package extrafacede;

/**
 *
 * @author mariana
 */
public class TV extends Controle{
    private String saida;

    public TV() {
        this.saida = "HDMI";
    }
    
    @Override
    public void ligar() {
        System.out.println("Tv ligada");
    }

    @Override
    public void desligar() {
        System.out.println("Tv desligada");
    }

    @Override
    public void volume(int volume) {}
 
    public void saida(String saida){
        this.saida = saida;
    }
}
