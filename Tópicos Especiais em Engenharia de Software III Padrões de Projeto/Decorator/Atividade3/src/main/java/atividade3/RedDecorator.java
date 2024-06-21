package atividade3;

/**
 *
 * @author mariana
 */
public class RedDecorator extends GeometricFigure {
    private GeometricFigure figure;

    public RedDecorator(GeometricFigure figure) {
        this.figure = figure;
    }
    
    @Override
    public void render(){
        figure.render();
        System.out.println(" - Alterado para cor Vermelha");
    }
}
