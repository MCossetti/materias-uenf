package extraobserver2;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author mariana
 */
public class Boletim implements Subject{
    private List<Voter> voters = new ArrayList<>();
    private List<Candidate> candidates = new ArrayList<>();
    private Map<Candidate, Integer> votes = new HashMap<>();
    
    @Override
    public void addCandidate(Candidate candidate) {
        candidates.add(candidate);
        votes.put(candidate, 0);
        candidate.update(candidate);
    }

    @Override
    public void removeCandidate(Candidate candidate) {
        candidates.remove(candidate);
        votes.remove(candidate);
    }

    @Override
    public void addVoter(Voter voter) {
        voters.add(voter);
    }

    @Override
    public void removeVoter(Voter voter) {
        voters.remove(voter);
    }

    @Override
    public void notifyAllUsers() {
        for (Voter voter : voters) {
            voter.update(null); 
        }
        displayBoletim();
    }

    public void vote(Candidate candidate){
        candidate.votes();
        votes.put(candidate, votes.get(candidate) + 1);
        notifyAllUsers();
    }
    
    private void displayBoletim() {
        for(Candidate candidate : candidates) {
            System.out.println(candidate.getName() + " possui " + votes.get(candidate));
        }
        System.out.println("------------------------------------------------");
    }
}
