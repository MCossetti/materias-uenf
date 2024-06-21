package extradecorator2;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author mariana
 */
public class Reports {
    private List<String> reports = new ArrayList<>();

    public void render() {
        System.out.println("\nRelatório simples...");
        for (String report : reports) {
            System.out.println("  - Alterado para " + report);
        }
        System.out.println("Pronto! Relatório alterado.");
    }
    
    public void addReport(String report) {
        reports.add(report);
    }
}