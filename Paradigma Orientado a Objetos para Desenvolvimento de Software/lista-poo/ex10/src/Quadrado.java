package ex10.src;

public class Quadrado extends FormaGeometrica {
    private float lado;
    
    public Quadrado(float lado) {
        this.lado = lado;
    }
    
    @Override
    public void calcularArea() {
        float area = lado * lado;
        System.out.println("A area do Quadrado é: " + area);
    }
}
