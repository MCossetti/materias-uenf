package atividade4;

/**
 *
 * @author mariana
 */
abstract class Event {
    protected String message;

    public Event(String message) {
        this.message = message;
    }

    public abstract String getType();
    public String getMessage() {
        return message;
    }
}