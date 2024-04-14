import java.awt.*;
import java.applet.*;

class Trapecio
{
	private double  altura;
	private double  base_menor;
	private double  base_mayor;
	
	public void Setear(int altura,int base_menor, int base_mayor)
	{
		this.altura = altura; this.base_mayor= base_mayor; this.base_menor = base_menor;
	}
	public double  Calcular_Area()
	{
		return ((base_mayor+base_menor)*altura/2);
	}
	public void ver_datos (Graphics g)
	{
		g.drawString("Base mayor: " + String.format("%.2f", base_mayor), 200, 10);
		g.drawString("Base menor: " + String.format("%.2f", base_menor), 200, 30);
        g.drawString("Altura: " + String.format("%.2f", altura), 200, 50);
        g.drawString("Area: " + String.format("%.2f", Calcular_Area()), 200, 70);
	}
	public void Graficar (Graphics g)
	{
		int  A1 = 10+(int)(base_mayor-base_menor)/2;
		int	 A2 = A1+(int)base_menor;
		int A3 = 10 +(int)base_mayor;
		int A4 = 10;
		int A5 = 10+(int)altura;
		g.setColor(Color.BLACK);
		g.drawLine(A1,A4,A2,A4);
		g.drawLine(A1,A4,A4,A5);
		g.drawLine(A2,A4,A3,A5);
		g.drawLine(A4,A5,A3,A5);
	}
}

public class Trabajo_Trapecio extends Applet {
	private Trapecio Ejemplo;
	public void init() {
		Ejemplo = new Trapecio();
		Ejemplo.Setear(100,50,150);	
		double Area = Ejemplo.Calcular_Area();	
	}
	public void paint(Graphics g) {
		Ejemplo.ver_datos(g);
        Ejemplo.Graficar(g);
	}
}