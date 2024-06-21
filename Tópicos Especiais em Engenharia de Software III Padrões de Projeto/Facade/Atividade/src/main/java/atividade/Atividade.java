    package atividade;

/**
 * Considere uma classe Cliente que precisa interagir com uma classe BaseDeDados
 * para efetuar operações de cadastro, recuperação, atualização e remoção 
 * de instâncias de uma classe Modelo que possui vários Elementos. 
 * O Cliente precisa estabelecer uma conexão como a BaseDeDados receber uma instância de uma classe Conexão 
 * e a partir da Conexão efetuar as operações desejadas. Forneça uma solução utilizando padrões que simplifique 
 * a interação do Cliente com as demais classes deste subsistema.
 * 
 * @author mariana
 */
public class Atividade {

    public static void main(String[] args) {
        Modelo mariana = new Modelo("Mariana Cossetti Dalfior", "marianacossetti@hotmail.com", "MCossetti");
        Modelo jose = new Modelo("José Lucio Azevedo", "joselucio@gmail.com", "Zehlu");
        
        Facade facade = new Facade();
        
        /**
         * facade.cadastrar(jose);
         * facade.recuperar("José Lucio Azevedo");
         * facade.atualizacao(jose);
         * facade.cadastrar(mariana);
         * facade.remover(mariana);*/
        
        facade.verificar(jose);
        
        facade.verificar(mariana);
    }
}
