package extraobserver2;

/**
 *
 * @author mariana
 */
public class Voter implements Observer{
    private String name;
    private Candidate voted;

    public Voter(String name) {
        this.name = name;
    }
    
    public void vote(Candidate candidate) {
        this.voted = candidate;
        System.out.println(name + " votou em " + candidate.getName());
    }
    
    @Override
    public void update(Candidate candidate) {
        voted = candidate;
        System.out.println(name + " votou em " + voted.getName());
    }
}
