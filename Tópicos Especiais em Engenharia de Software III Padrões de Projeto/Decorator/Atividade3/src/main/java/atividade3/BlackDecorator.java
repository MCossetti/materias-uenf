package atividade3;

/**
 *
 * @author mariana
 */
public class BlackDecorator extends GeometricFigure {
    private GeometricFigure figure;

    public BlackDecorator(GeometricFigure figure) {
        this.figure = figure;
    }

    @Override
    public void render(){
        figure.render();
        System.out.println(" - Alterado para cor Preta");
    }
}
