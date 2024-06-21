package atividade3;

/**
 *
 * @author mariana
 */
public class BlueDecorator extends GeometricFigure {
    private GeometricFigure figure;

    public BlueDecorator(GeometricFigure figure) {
        this.figure = figure;
    }

    @Override
    public void render(){
        figure.render();
        System.out.println(" - Alterado para cor Azul");
    }
}