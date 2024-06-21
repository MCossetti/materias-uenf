package atividade3;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author mariana
 */
public class GeometricFigure {
     private List<String> figures = new ArrayList<>();
    
    public void render() {
        System.out.println("\nFigura básica...");
        for (String figure : figures) {
            System.out.println("  - Alterado para " + figure);
        }
        System.out.println("Pronto! Cor alterada.");
    }
    
    public void addFigure(String figure) {
        figures.add(figure);
    }
}
