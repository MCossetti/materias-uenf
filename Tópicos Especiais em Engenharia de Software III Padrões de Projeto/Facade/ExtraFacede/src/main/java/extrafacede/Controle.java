package extrafacede;

/**
 *
 * @author mariana
 */
public class Controle {
    protected boolean ligada;
    protected int volume;
    protected String saida;

    public Controle() {
        this.ligada = false;
        this.volume = 0;
    }
    
    public void ligar(){
        this.ligada = true;
    }
    
    public void desligar(){
        this.ligada = false;
    }
    
    public void volume(int volume){
        this.volume = volume;
    }
}
