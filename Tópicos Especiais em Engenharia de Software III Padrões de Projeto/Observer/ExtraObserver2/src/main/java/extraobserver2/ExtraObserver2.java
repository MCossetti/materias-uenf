package extraobserver2;

/**
 *
 * @author mariana
 */
public class ExtraObserver2 {

    public static void main(String[] args) {
        Candidate candidate1 = new Candidate(10, "Rosana");
        Candidate candidate2 = new Candidate(30, "Carlão");

        Boletim boletim = new Boletim();

        boletim.addCandidate(candidate1);
        boletim.addCandidate(candidate2);
        System.out.println("");
        
        Voter voter1 = new Voter("João");
        Voter voter2 = new Voter("Maria");

        boletim.addVoter(voter1);
        boletim.addVoter(voter2);

        voter1.vote(candidate1);
        voter2.vote(candidate2);
        voter1.vote(candidate2);
    }
}
