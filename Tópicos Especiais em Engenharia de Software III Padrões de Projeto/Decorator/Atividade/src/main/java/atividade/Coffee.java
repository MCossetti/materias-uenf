package atividade;

import java.util.ArrayList;
import java.util.List;

/**
 * 
 * @author mariana
 */
public class Coffee {
    private List<String> ingredients = new ArrayList<>();
    
    public void prepare() {
        System.out.println("\nPreparando café básico...");
        for (String ingredient : ingredients) {
            System.out.println("  - Adicionando " + ingredient);
        }
        System.out.println("Pronto! Uma xícara de café delicioso.");
    }
    
    public void addIngredient(String ingredient) {
        ingredients.add(ingredient);
    }
}
