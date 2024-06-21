package extradecorator2;

/**
 *
 * @author mariana
 */
public class CompleteDecorator extends Reports{
    private Reports report;

    public CompleteDecorator(Reports report) {
        this.report = report;
    }

    @Override
    public void render(){
        report.render();
        System.out.println(" - Alterado para relatório completo");
    }
}
