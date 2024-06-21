package atividade2;

/**
 *
 * @author mariana
 */
public class MonsterFactory extends EnemyFactory {
    
    @Override
    public Enemy createEnemy() {
        return new Monster();
    }
}