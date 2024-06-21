package extradecorator2;

/**
 *
 * @author mariana
 */
public class ExtraDecorator2 {

    public static void main(String[] args) {
        //Relatório simples
        Reports report = new Reports();
        report.render();
        
        //Relatório completo
        Reports reportComplete = new CompleteDecorator(report);
        reportComplete.render();
        
        //Relatório em HTML
        Reports reportHTML = new HTMLDecorator(report);
        reportHTML.render();
        
        //Relatório em PDF
        Reports reportPDF = new PDFDecorator(report);
        reportPDF.render();
    }
}
