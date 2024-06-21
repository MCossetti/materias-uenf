package atividade2;

/**
 *
 * @author mariana
 */
public class BossFactory extends EnemyFactory {
    
    @Override
    public Enemy createEnemy() {
        return new Boss();
    }
}