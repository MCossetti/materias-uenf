package atividade2;

/**
 *
 * @author mariana
 */
public class Boss extends Enemy {
    public Boss() {
        super("Chefe", 500, 50);
    }

    @Override
    public void attack() {
        System.out.println(this.name + " atacou com " + this.damage + " de dano!");
    }
}