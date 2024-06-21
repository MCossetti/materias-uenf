package extraobserver2;

/**
 *
 * @author mariana
 */
public interface Subject {
    public void addCandidate(Candidate candidate);
    public void removeCandidate(Candidate candidate);
    public void addVoter(Voter voter);
    public void removeVoter(Voter voter);
    public void notifyAllUsers();
}