package extradecorator;

/**
 *
 * @author mariana
 */
public class BaconDecorator extends Hamburguer{
    private Hamburguer hamburguer;

    public BaconDecorator(Hamburguer hamburguer) {
        this.hamburguer = hamburguer;
    }

    @Override
    public void prepare(){
        hamburguer.prepare();
        System.out.println(" - Adicionando bacon");
    }
}
