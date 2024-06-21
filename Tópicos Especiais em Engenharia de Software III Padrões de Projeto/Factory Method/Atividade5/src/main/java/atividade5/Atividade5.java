package atividade5;

/**
 *
 * @author mariana
 */
public class Atividade5 {

    public static void main(String[] args) {
        ReportFactory factory = new ConcreteReportFactory();

        Report pdfReport = factory.createReport("PDF");
        Report csvReport = factory.createReport("CSV");
        Report htmlReport = factory.createReport("HTML");

        pdfReport.generate();
        csvReport.generate();
        htmlReport.generate();
    }
}
