package atividade2;

/**
 *
 * @author mariana
 */
public class Atividade2 {

    public static void main(String[] args) {
        EnemyFactory enemyFactory = new SoldierFactory();
        Enemy enemy = enemyFactory.createEnemy();
        enemy.attack();

        enemyFactory = new MonsterFactory();
        enemy = enemyFactory.createEnemy();
        enemy.attack();

        enemyFactory = new BossFactory();
        enemy = enemyFactory.createEnemy();
        enemy.attack();
    }
}
