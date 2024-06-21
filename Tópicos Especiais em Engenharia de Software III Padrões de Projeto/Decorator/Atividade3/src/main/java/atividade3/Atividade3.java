package atividade3;

/**
 * Aplique o padrão decorator à classe FiguraGeometrica, introduzindo o método render(). 
 * Este método deve abordar a renderização da figura geométrica básica,
 * enquanto proporciona a capacidade de definir cores como preto, branco, vermelho, verde ou azul.
 *
 * @author mariana 
 */
public class Atividade3 {

    public static void main(String[] args) {
        //Simples
        GeometricFigure figure = new GeometricFigure();
        figure.render();
        
        //Preto
        GeometricFigure figureBlack = new BlackDecorator(figure);
        figureBlack.render();
        
        //Branco
        GeometricFigure figureWhite = new WhiteDecorator(figure);
        figureWhite.render();
        
        //Vermelho
        GeometricFigure figureRed = new RedDecorator(figure);
        figureRed.render();
        
        //Verde
        GeometricFigure figureGreen = new GreenDecorator(figure);
        figureGreen.render();
        
        //Azul
        GeometricFigure figureBlue = new BlueDecorator(figure);
        figureBlue.render();
        
    }
}
