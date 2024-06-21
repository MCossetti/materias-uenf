package extradecorator2;

/**
 *
 * @author mariana
 */
public class HTMLDecorator  extends Reports{
    private Reports report;

    public HTMLDecorator(Reports report) {
        this.report = report;
    }



    @Override
    public void render(){
        report.render();
        System.out.println(" - Alterado para relatório em HTML");
    }
}