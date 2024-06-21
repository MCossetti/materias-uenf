package atividade;

/**
 *
 * @author mariana
 */
public class Modelo {
    protected String name, email, username;

    public Modelo(String name, String email, String username) {
        this.setName(name);
        this.setEmail(email);
        this.setUsername(username);
    }

    public String getName() {
        return name;
    }

    public final void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public final void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public final void setUsername(String username) {
        this.username = username;
    }
}