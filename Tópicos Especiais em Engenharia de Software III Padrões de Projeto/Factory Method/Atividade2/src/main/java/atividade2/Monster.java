package atividade2;

/**
 *
 * @author mariana
 */
public class Monster extends Enemy {
    public Monster() {
        super("Monstro", 200, 20);
    }

    @Override
    public void attack() {
        System.out.println(this.name + " atacou com " + this.damage + " de dano!");
    }
}