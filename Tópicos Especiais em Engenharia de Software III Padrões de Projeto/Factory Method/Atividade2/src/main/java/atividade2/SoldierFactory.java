package atividade2;

/**
 *
 * @author mariana
 */
public class SoldierFactory extends EnemyFactory {
    
    @Override
    public Enemy createEnemy() {
        return new Soldier();
    }
}

