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
	public double  Calcular_area()
	{
		return ((base_mayor+base_menor)*altura/2);
	}
	public void Ver_datos (Graphics g)
	{
		g.drawString("Base mayor: " + String.format("%.2f", base_mayor), 200, 10);
		g.drawString("Base menor: " + String.format("%.2f", base_menor), 200, 30);
        g.drawString("Altura: " + String.format("%.2f", altura), 200, 50);
        g.drawString("Area: " + String.format("%.2f", Calcular_area()), 200, 70);
	}
	public void Graficar (Graphics g)
	{
		int  A1 = 100+(int)(base_mayor-base_menor)/2;
		int	 A2 = A1+(int)base_menor;
		int A3 = 100 +(int)base_mayor;
		int A4 = 100;
		int A5 = 100+(int)altura;
		g.setColor(Color.BLACK);
		g.drawLine(A1,A4,A2,A4);
		g.drawLine(A1,A4,A4,A5);
		g.drawLine(A2,A4,A3,A5);
		g.drawLine(A4,A5,A3,A5);
	}
}

class Rombo
{
	private double diagonalMayor ; 
    private double diagonalMenor; 
    public void Setear(double diagonalMayor, double diagonalMenor) {
        this.diagonalMayor = diagonalMayor;
        this.diagonalMenor = diagonalMenor;
    }

    public double Calcular_area() {
        return (diagonalMayor * diagonalMenor) / 2;
    }
    //Revisar que sea escalable
    public void Graficar(Graphics g) {
        int[] xPoints = { 200, 200 + (int)(diagonalMayor / 2), 200, 200 - (int)(diagonalMayor / 2) };
        int[] yPoints = { 200 - (int)(diagonalMenor / 2), 200, 200 + (int)(diagonalMenor / 2), 200 };
        g.drawPolygon(xPoints, yPoints, 4);
    }
    public void Ver_datos(Graphics g) {
        g.drawString("Diagonal Menor: " + String.format("%.2f", diagonalMenor), 500, 10);
        g.drawString("Diagonal Mayor: " + String.format("%.2f", diagonalMayor), 500, 30);
        g.drawString("Area: " + String.format("%.2f", Calcular_area()), 500, 50);
    }
}

class Rectangulo {
    private double Base;
    private double Altura;
    
    public void Setear(double base, double altura) {
        this.Base = base;
        this.Altura = altura; 
    }   
    
    public void Ver_datos(Graphics g) {
        g.drawString("Base: " + String.format("%.2f", Base), 500, 10);
        g.drawString("Altura: " + String.format("%.2f", Altura), 500, 30);
        g.drawString("Area: " + String.format("%.2f", Calcular_area()), 500, 50);
    }
    
    public double Calcular_area() {
        return Base * Altura;
    }
    
    public void Graficar(Graphics g) {
        g.drawRect(50, 50, (int) Base, (int) Altura);
    }
}

class Piramide {
    private double Lado;
    private double Altura;
    
    public void Setear(double l, double h) {
        this.Lado = l;
        this.Altura = h;
    }   
    public void Ver_datos(Graphics g) {
        g.drawString("Lado: " + String.format("%.2f", Lado), 500, 10);
        g.drawString("Altura: " + String.format("%.2f", Altura), 500, 30);
        g.drawString("Area: " + String.format("%.2f", Calcular_area()), 500, 50);
        g.drawString("Volumen: " + String.format("%.2f", Calcular_volumen()), 500, 70);
    }
    public double  Calcular_area() {
        return (4*((Calcular_apotema()*Lado)/2))+(Lado*Lado);
    }
    public double Calcular_volumen()
    {
    	return (Lado*Lado*Altura)/3;
    }
    public double Calcular_apotema() {
        return Math.sqrt((Altura * Altura) + ((Lado * Lado) / 4));
    }
    public void Graficar(Graphics g)
    {
    	int A1x=10,A1y=200+(int)Calcular_apotema();
    	int A2x=10+(int)Lado,A2y=A1y;
    	int A3x=A1x+(int)Lado/2,A3y=A1y-(int)Lado/2;
    	int A4x=A3x+(int)Lado,A4y=A3y;
    	int A5x=(int)(A1x+A4x)/2,A5y=(int)(A1y+A4y)/2;
    	int A6x=A5x,A6y=(int)A5y-(int)Calcular_apotema()*10;
    	System.out.print(A1y);
    	//La base se dibuja como un paralelogramo por la perspectiva
    	g.drawLine(A1x,A1y,A2x,A2y);
    	g.drawLine(A1x,A1y,A3x,A3y);
    	g.drawLine(A3x,A3y,A4x,A4y);
    	g.drawLine(A2x,A2y,A4x,A4y);
    	//Se unen las esquinas en un punto para completar la piramide
    	g.drawLine(A1x,A1y,A6x,A6y);
    	g.drawLine(A2x,A2y,A6x,A6y);
    	g.drawLine(A3x,A3y,A6x,A6y);
    	g.drawLine(A4x,A4y,A6x,A6y);  	
    }
}
class Circulo {
    private double Radio;
    public void Setear(double r) {
        this.Radio = r;
    }   
    
    public void Ver_datos(Graphics g) {
        g.drawString("Radio: " + String.format("%.2f", Radio), 500, 10);
        g.drawString("Area: " + String.format("%.2f", Calcular_area()), 500, 30);
    }
    
    public double Calcular_area() {
        return Math.PI * Radio * Radio;
    }
    public void Graficar(Graphics g) {

    g.drawOval((int)(100 - Radio), (int)(100 - Radio), (int) (2 * Radio), (int) (2 * Radio));
}
}

class Cilindro {
    private double radio;
    private double altura;

    public void Setear(double radio, double altura){
        this.radio = radio;
        this.altura = altura;
    }

    public double Calcular_area() {
        return 2 * Math.PI * this.radio * (this.radio + this.altura);
    }

    public double Calcular_volumen() {
        return Math.PI * this.radio * this.radio * this.altura;
    }

    public void Ver_datos(Graphics g){
        g.drawString("Radio: " + String.format("%.2f", radio), 500, 10);
        g.drawString("Altura: " + String.format("%.2f", altura), 500, 30);
        g.drawString("Area: " + String.format("%.2f", Calcular_area()), 500, 50);
        g.drawString("Volumen: " + String.format("%.2f", Calcular_volumen()), 500, 70);
    }

	public void Graficar(Graphics g){
	    g.drawOval(200 - (int)radio, 500 - (int)altura / 2 - (int)altura / 4, (int)radio * 2, (int)altura / 2);
    	g.drawOval(200 - (int)radio, 500 + (int)altura / 2 - (int)altura / 4, (int)radio * 2, (int)altura / 2);
    	g.drawRect(200 - (int)radio, 500 - (int)altura / 2 , (int)radio * 2, (int)altura);
	}
}

public class ClasesGeometricas extends Applet {

	public void paint(Graphics g) {
		
		Cuadrado x=new Cuadrado();
		x.Setear(25);
		x.Graficar(g);
		x.Ver_datos(g);
		
	}
}