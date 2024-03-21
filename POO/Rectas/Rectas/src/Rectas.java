import java.awt.*;
import java.applet.*;

class Ecuaciones
{
	private double a;
	private double b;
	private double c;
	
	public void Seteo(double A,double B,double C)
	{
		this.a=A;
		this.b=B;
		this.c=C;	
	}
	public double CalculoRaiz3()
	{
		return (-c/b);	
	}
	public double CalculoRaiz1()
	{
		return (-b+Math.sqrt((b*b)-4*a*c))/2*a;
	}
	public double CalculoRaiz2()
	{
		return (-b-Math.sqrt((b*b)-4*a*c))/2*a;
	}
	public void Ver()
	{
		System.out.println(a+"x2+"+b+"x+"+c+"=y");
		System.out.println(CalculoRaiz1()+"  "+CalculoRaiz2());
	}
	public void CalculoRaiz(Graphics g)
	{
		if(a!=0)
		{
			g.drawString("Raiz1:"+CalculoRaiz1(),10,10);
			g.drawString("Raiz2:"+CalculoRaiz2(),10,20);
		}
		else
		{
			g.drawString("Raiz:"+CalculoRaiz3(),10,10);
		}
	}
	public void Graficar(Graphics g)
	{
		g.drawLine(500,30,500,750);
		g.drawLine(10,390,1000,390);
	}
}
public class Rectas extends Applet {
	private Ecuaciones Eq;
	
	public void init() {
		Eq=new Ecuaciones();
		Eq.Seteo(10,-2,-3);
		Eq.Ver();
		
	}

	public void paint(Graphics g) {
		Eq.CalculoRaiz(g);
		Eq.Graficar(g);
	}
}