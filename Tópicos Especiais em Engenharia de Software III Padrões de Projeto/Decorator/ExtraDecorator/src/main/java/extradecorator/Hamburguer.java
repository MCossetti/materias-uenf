package extradecorator;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author mariana
 */
public class Hamburguer {
    private List<String> ingredients = new ArrayList<>();
    
    public void prepare() {
        System.out.println("\nPreparando Hambúrguer...");
        for (String ingredient : ingredients) {
            System.out.println("  - Adicionando " + ingredient);
        }
        System.out.println("Pronto!");
    }
    
    public void addIngredient(String ingredient) {
        ingredients.add(ingredient);
    }
}
