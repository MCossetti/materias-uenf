package atividade4;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author mariana
 */
public class Button {
    private List<String> buttons = new ArrayList<>();
    
    public void render() {
        System.out.println("\nBotão básico...");
        for (String button : buttons) {
            System.out.println("  - Alterado para " + button);
        }
        System.out.println("Pronto! Borda alterada.");
    }
    
    public void addButton(String button) {
        buttons.add(button);
    }
}