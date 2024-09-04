import java.util.HashMap;
import java.util.Map;

public class Agenda {
    private Map<DiasDaSemana, String> compromissos;
    
    public Agenda() {
        compromissos = new HashMap<>();
    }

    public void adicionarCompro(DiasDaSemana dia, String compromisso) {
        compromissos.put(dia, compromisso);
    }

    public void mostrarCompro() {
        for (DiasDaSemana dia : DiasDaSemana.values()) {
            String compromisso = compromissos.get(dia);
            if (compromisso == null) {
                System.out.println(dia + ": Não possui compromissos!");
            } else {
                System .out.println(dia + ": " + compromisso);
            }
        }
    }
}
