package extrafacede;

/**
 *
 * @author mariana
 */
public class ExtraFacede {

    public static void main(String[] args) {
        HomeTheaterFacade homeTheater = new HomeTheaterFacade();
        
        homeTheater.ligarSom();
        System.out.println("");
        
        homeTheater.ligarTV();
        System.out.println("");
        
        homeTheater.ligarDVD();
        System.out.println("");
        
        homeTheater.ligarSintonizador();
    }
}
