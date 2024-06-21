package atividade5;

/**
 * Implemente o padrão decorator na classe Formulario, introduzindo o método render(). 
 * Este método deve lidar com a renderização do formulário básico, 
 * enquanto oferece a flexibilidade para adicionar campos como texto, seleção ou data.
 *
 * @author mariana
 */
public class Atividade5 {

    public static void main(String[] args) {
        //Formulário simples
        Form form = new Form();
        form.render();
        
        //Formulário com caixa de texto
        Form formText = new TextDecorator(form);
        formText.render();
        
        //Com caixa de texto e caixa de seleção
        Form formTextAndSelect = new SelectDecorator(formText);
        formTextAndSelect.render();
        
        //Com todos os elementos adicionais
        Form formComplete = new DateDecorator(formTextAndSelect);
        formComplete.render();
    }
}
