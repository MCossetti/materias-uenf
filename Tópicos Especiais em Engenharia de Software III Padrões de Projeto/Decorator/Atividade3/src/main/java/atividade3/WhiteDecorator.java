package atividade3;

/**
 *
 * @author mariana
 */
public class WhiteDecorator extends GeometricFigure {
     private GeometricFigure figure;

    public WhiteDecorator(GeometricFigure figure) {
        this.figure = figure;
    }

    @Override
    public void render(){
        figure.render();
        System.out.println(" - Alterado para cor Branca");
    }
}
