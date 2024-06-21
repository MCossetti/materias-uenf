package atividade4;

/**
 *
 * @author mariana
 */
public class InformationalEvent extends Event {
    
    public InformationalEvent(String message) {
        super(message);
    }

    @Override
    public String getType() {
        return "Informativo";
    }
}