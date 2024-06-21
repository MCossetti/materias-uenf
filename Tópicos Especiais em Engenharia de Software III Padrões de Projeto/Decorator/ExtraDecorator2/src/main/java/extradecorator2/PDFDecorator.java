package extradecorator2;

/**
 *
 * @author mariana
 */
public class PDFDecorator  extends Reports{
    private Reports report;

    public PDFDecorator(Reports report) {
        this.report = report;
    }

    @Override
    public void render(){
        report.render();
        System.out.println(" - Alterado para relatório em PDF");
    }
}
