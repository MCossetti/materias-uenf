package atividade2;

/**
 *
 * @author mariana
 */
public abstract class Enemy {
    protected String name;
    protected int health;
    protected int damage;

    public Enemy(String name, int health, int damage) {
        this.name = name;
        this.health = health;
        this.damage = damage;
    }

    public abstract void attack();

    public void takeDamage(int damage) {
        this.health -= damage;
        if (this.health <= 0) {
            System.out.println(this.name + " foi derrotado!!");
        }
    }
}