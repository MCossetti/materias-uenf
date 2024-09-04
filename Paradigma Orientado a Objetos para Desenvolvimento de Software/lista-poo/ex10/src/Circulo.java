package ex10.src;

public class Circulo extends FormaGeometrica {
    private float raio;

    public Circulo(float raio) {
        this.raio = raio;
    }
    
    @Override
    public void calcularArea() {
        double area = Math.PI * (raio * raio);
        System.out.println("A área do Círculo é: " + area);
    }
}
