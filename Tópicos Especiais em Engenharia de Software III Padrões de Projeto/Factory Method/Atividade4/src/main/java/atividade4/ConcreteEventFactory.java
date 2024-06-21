package atividade4;

/**
 *
 * @author mariana
 */
public class ConcreteEventFactory implements EventFactory{
    
    @Override
    public Event createEvent(String message) {
        if (message.startsWith("[ERRO]")) {
            return new ErrorEvent(message);
        } else if (message.startsWith("[AVISO]")) {
            return new WarningEvent(message);
        } else {
            return new InformationalEvent(message);
        }
    }
}