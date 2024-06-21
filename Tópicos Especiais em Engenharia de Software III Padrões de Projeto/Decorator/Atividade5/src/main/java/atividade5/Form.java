package atividade5;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author mariana
 */
public class Form {
    private List<String> forms = new ArrayList<>();
    
    public void render() {
        System.out.println("\nFormulário básico...");
        for (String form : forms) {
            System.out.println("  - Alterado para " + form);
        }
        System.out.println("Pronto! Formulário alterado.");
    }
    
    public void addForm(String form) {
        forms.add(form);
    }
}
