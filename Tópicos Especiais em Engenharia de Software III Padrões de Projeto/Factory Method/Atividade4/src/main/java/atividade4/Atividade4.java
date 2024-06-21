package atividade4;

/**
 *
 * @author mariana
 */
public class Atividade4 {

    public static void main(String[] args) {
        ConcreteEventFactory factory = new ConcreteEventFactory();

        Event errorEvent = factory.createEvent("[ERRO] Falha no sistema!");
        Event warningEvent = factory.createEvent("[AVISO] Recurso esgotado.");
        Event infoEvent = factory.createEvent("Operação concluída com sucesso.");

        System.out.println("Tipo: " + errorEvent.getType() + ", Mensagem: " + errorEvent.getMessage());
        System.out.println("Tipo: " + warningEvent.getType() + ", Mensagem: " + warningEvent.getMessage());
        System.out.println("Tipo: " + infoEvent.getType() + ", Mensagem: " + infoEvent.getMessage());
    }
}