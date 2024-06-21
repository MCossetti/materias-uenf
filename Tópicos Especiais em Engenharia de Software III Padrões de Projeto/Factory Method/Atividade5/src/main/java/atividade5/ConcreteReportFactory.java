package atividade5;

/**
 *
 * @author mariana
 */
class ConcreteReportFactory implements ReportFactory {
    
    @Override
    public Report createReport(String type) {
        switch (type.toUpperCase()) {
            case "PDF" -> {
                return new PDFReport();
            }
            case "CSV" -> {
                return new CSVReport();
            }
            case "HTML" -> {
                return new HTMLReport();
            }
            default -> throw new IllegalArgumentException("Tipo de relatório não suportado: " + type);
        }
    }

}