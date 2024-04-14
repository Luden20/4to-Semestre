import java.awt.*;
import java.applet.*;

class Cuadrado {
    private double Lado;
    
    public void Seteo(double l) {
        this.Lado = l; 
    }   
    
    public void Visualizar(Graphics g) {
        g.drawString("Lado: " + String.format("%.2f", Lado), 500, 10);
        g.drawString("Area: " + String.format("%.2f", CalcularArea()), 500, 50);
    }
    
    public double CalcularArea() {
        return Lado * Lado;
    }
    
    public void Graficar(Graphics g) {
        g.drawRect(50, 50, (int) (Lado * 10), (int) (Lado * 10));
    }
}

public class TrabajoCuadrado extends Applet {
    private Cuadrado x;
    
    public void init() {
        x = new Cuadrado(); // Crear una nueva instancia de Cuadrado
        x.Seteo(10);
    }

    public void paint(Graphics g) {
        x.Graficar(g);
        x.Visualizar(g);
    }
}
