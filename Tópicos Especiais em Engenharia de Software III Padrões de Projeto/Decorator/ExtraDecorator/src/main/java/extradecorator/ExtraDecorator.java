package extradecorator;

/**
 *
 * @author mariana
 */
public class ExtraDecorator {

    public static void main(String[] args) {
        //Básico
        Hamburguer hamburguer = new Hamburguer();
        hamburguer.prepare();
        
        //Com bacon
        Hamburguer hamburguerWithBacon = new BaconDecorator(hamburguer);
        hamburguerWithBacon.prepare();
        
        //Com bacon e salada
        Hamburguer hamburguerWithBaconAndSalad = new SaladDecorator(hamburguerWithBacon);
        hamburguerWithBaconAndSalad.prepare();
        
        //Com completo
        Hamburguer hamburguerComplete = new CheeseDecorator(hamburguerWithBaconAndSalad);
        hamburguerComplete.prepare();
        
    }
}
