package atividade2;

import java.util.ArrayList;
import java.util.List;

/**
 * 
 * @author mariana
 */

public class Text {
     private List<String> texts = new ArrayList<>();
    
    public void render() {
        System.out.println("\nTexto básico...");
        for (String text : texts) {
            System.out.println("  - Alterado para " + text);
        }
        System.out.println("Pronto! Texto alterado.");
    }
    
    public void addText(String text) {
        texts.add(text);
    }
}
