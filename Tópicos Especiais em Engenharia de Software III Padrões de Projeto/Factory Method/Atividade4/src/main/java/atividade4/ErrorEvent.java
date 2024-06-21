package atividade4;

/**
 *
 * @author mariana
 */
class ErrorEvent extends Event {
    
    public ErrorEvent(String message) {
        super(message);
    }

    @Override
    public String getType() {
        return "Erro";
    }
}