package extrafacede;

/**
 *
 * @author mariana
 */
public class DVD extends Controle{
    @Override
    public void ligar() {
        System.out.println("Dvd ligado");
    }

    @Override
    public void desligar() {
        System.out.println("Dvd desligado");
    }
    
    public void play() {
        System.out.println("Mostrando o filme...");
    }

    public void stop(){
        System.out.println("Filme parado..."); 
    }
}
