package atividade5;

/**
 *
 * @author mariana
 */
class PDFReport implements Report {
    
    @Override
    public void generate() {
        System.out.println("Gerando relatório em formato PDF...");
    }
}