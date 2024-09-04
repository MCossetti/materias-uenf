public class Main {
    public static void main(String[] args) throws Exception {
        Agenda a1 = new Agenda();

        a1.adicionarCompro(DiasDaSemana.SegundaFeira, "Trabalho numérico");
        a1.adicionarCompro(DiasDaSemana.QuintaFeira, "Jogo do Vasco");
        a1.adicionarCompro(DiasDaSemana.QuartaFeira, "Assistir TCC");
    
        a1.mostrarCompro();
    }
}
