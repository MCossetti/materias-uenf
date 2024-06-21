package atividade;

/**
 * Uma classe Cliente precisa requisitar serviços de uma classe preexistente cuja
 * interface não é a interface esperada pela classe Cliente. Estabeleça uma solução 
 * usando padrões que resolva o problema de discrepância das interfaces.
 * 
 * @author mariana
 */
public class Atividade {
    public static void main(String[] args) {
        
        ClassAdapter adapter = new ClassAdapter();
        
        adapter.insert();
        adapter.delete();
        adapter.notifyThis();
    }
}