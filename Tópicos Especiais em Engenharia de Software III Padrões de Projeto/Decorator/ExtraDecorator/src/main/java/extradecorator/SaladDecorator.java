package extradecorator;

/**
 *
 * @author mariana
 */
public class SaladDecorator extends Hamburguer{
    private Hamburguer hamburguer;

    public SaladDecorator(Hamburguer hamburguer) {
        this.hamburguer = hamburguer;
    }

    @Override
    public void prepare(){
        hamburguer.prepare();
        System.out.println(" - Adicionando salada");
    }
}
