package atividade4;

/**
 *
 * @author mariana
 */
class WarningEvent extends Event {
    
    public WarningEvent(String message) {
        super(message);
    }

    @Override
    public String getType() {
        return "Aviso";
    }
}