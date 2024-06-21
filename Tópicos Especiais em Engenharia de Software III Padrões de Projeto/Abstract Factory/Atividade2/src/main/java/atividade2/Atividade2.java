package atividade2;

/**
 *
 * @author mariana
 */
public class Atividade2 {

    public static void main(String[] args) {
        WidgetsFactory modern = new ModernStyleFactory();
        WidgetsFactory classic = new ClassicStyleFactory();
        
        Widgets button1 = modern.createButton();
        Widgets textarea1 = modern.createTextArea();
        Widgets menu1 = modern.createMenu();

        Widgets button2 = classic.createButton();
        Widgets textarea2 = classic.createTextArea();
        Widgets menu2 = classic.createMenu();

        button1.render();
        textarea1.render();
        menu1.render();

        button2.render();
        textarea2.render();
        menu2.render();
    }
}
