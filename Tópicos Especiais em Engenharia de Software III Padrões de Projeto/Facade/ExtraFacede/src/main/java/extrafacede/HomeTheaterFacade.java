package extrafacede;

/**
 *
 * @author mariana
 */
public class HomeTheaterFacade {
    private TV tv = new TV();
    private Som som = new Som();
    private DVD dvd = new DVD();
    private Sintonizador sintonizador = new Sintonizador();
    
    public void ligarSom(){
        som.ligar();
        som.volume(75);
        som.entrada("DVD");
    }
    
    public void ligarTV() {
        tv.ligar();
        tv.volume(100);
        tv.saida("DVD");
        ligarSom();
    }
    
    public void ligarDVD() {
        ligarTV();
        sintonizador.desligar();
        dvd.ligar();
        dvd.play();
    }
    
    public void ligarSintonizador(){
        ligarTV();
        dvd.desligar();
        sintonizador.ligar();
        sintonizador.modo("Cabo");
        sintonizador.canal("Space");
    }
}
