package atividade2;

/**
 *
 * @author mariana
 */
public class Soldier extends Enemy {
    public Soldier() {
        super("Soldado", 100, 10);
    }

    @Override
    public void attack() {
        System.out.println(this.name + " atacou com " + this.damage + " de dano!");
    }
}