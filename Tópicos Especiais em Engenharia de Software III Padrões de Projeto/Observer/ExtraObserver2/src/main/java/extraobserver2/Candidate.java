package extraobserver2;

/**
 *
 * @author mariana
 */
public class Candidate implements Observer{
    private int num, votes;
    private String name;

    public Candidate(int num, String name) {
        this.num = num;
        this.votes = 0;
        this.name = name;
    }

    public int getNum() {
        return num;
    }

    public String getName() {
        return name;
    }

    public int getVotes() {
        return votes;
    }

    public void votes() {
        votes++;
    }
    
    @Override
    public void update(Candidate candidate) {
        System.out.println("O " + getName() + " se candidatou com o número " + getNum());
    }
}
