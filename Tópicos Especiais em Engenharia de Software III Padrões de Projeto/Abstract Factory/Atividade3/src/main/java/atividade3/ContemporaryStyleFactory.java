package atividade3;

/**
 *
 * @author mariana
 */
public class ContemporaryStyleFactory extends HouseFactory {

    @Override
    public House produceFoundation() {
        return new Foundation();
    }

    @Override
    public House produceWalls() {
        return new Walls();
    }

    @Override
    public House produceRoof() {
        return new Roof();
    }
    
}
