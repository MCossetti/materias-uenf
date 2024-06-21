package atividade3;

/**
 *
 * @author mariana
 */
public class GreenDecorator extends GeometricFigure {
    private GeometricFigure figure;

    public GreenDecorator(GeometricFigure figure) {
        this.figure = figure;
    }

    @Override
    public void render(){
        figure.render();
        System.out.println(" - Alterado para cor Verde");
    }
}