import java.awt.*;
import java.applet.*;

class Ecuaciones
{
	private double a;
	private double b;
	private double c;
	
	public void Setear(double A,double B,double C)
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
		return (-b+Math.sqrt((b*b)-4*a*c))/(2*a);
	}
	public double CalculoRaiz2()
	{
		return (-b-Math.sqrt((b*b)-4*a*c))/(2*a);
	}
	
	public double CalcularY(double X)
	{
		return a*(X*X)+b*X+c;
	}
	public double CalcularX(double Y)
	{
		return (Y-c)/b;
	}
	public void MostrarRaiz(Graphics g)
	{
		if(a!=0)
		{
			if(!Double.isNaN(CalculoRaiz1()))
			{
				g.drawString("Raiz1:"+CalculoRaiz1(),10,10);
			}
			else
			{
				g.drawString("No hay raiz 1",10,10);
			}
			
			if(!Double.isNaN(CalculoRaiz2()))
			{
				g.drawString("Raiz2:"+CalculoRaiz2(),10,20);
			}
			else
			{
				g.drawString("No hay raiz 2",10,20);
			}
		}
		else
		{
			if(!Double.isNaN(CalculoRaiz3()))
			{
				g.drawString("Raiz:"+CalculoRaiz3(),10,10);
			}
			else
			{
				g.drawString("No hay raiz 1",10,10);
			}
		}
	}
	public void VerDatos(Graphics g)
	{
		MostrarRaiz(g);
		if(a==0)
		{
			if(b!=0)
			{
				if(c!=0)
				{
					g.drawString(b+"x + "+c+" = y",100,50);
				}
				else
				{
					g.drawString(b+"x = y ",100,50);
				}
				
			}
			else
			{
				g.drawString(c+" = y",100,50);
			}
			 
		}
		else
		{
			if(b!=0)
			{
				if(c!=0)
				{
					g.drawString(a+"x^2 +"+b+"x+"+c+"=y",100,50);
				}
				else
				{
					g.drawString(a+"x^2 +"+b+"x=y",100,50);
				}
				
			}
			else
			{
				g.drawString(a+"x^2 +"+c+"=y",100,50);
			}
		}
		
		
	}
	//Esta es mas una utilidad para poner las cordenadas x y en el aplet de mejor manera
	private  double[] transformarCoordenadas(double x, double y) {
        double[] resultado = {10 * x + 500, -10 * y + 390};
        return resultado;
    }
	public void Graficar(Graphics g)
	{
        
        g.setColor(Color.BLUE);
		g.drawRect(10,30,1000,750);
		g.setColor(Color.BLACK);
		g.drawLine(500,30,500,775);//Vertical -390 a 390
		g.drawLine(10,390,1000,390);//Horizontal -495 a 495
		//POS X +10 y POS Y -10 equivalen a un 1
		// centro es 500,390
		g.setColor(Color.red);
		if(a==0)
		{
			if(b!=0)
			{
				double[] P1=transformarCoordenadas(CalcularX(-39),-39);
				double[] P2=transformarCoordenadas(CalcularX(39),39);
				g.drawLine((int)P1[0],(int)P1[1],(int)P2[0],(int)P2[1]);
			}
			else
			{
				double[] P1=transformarCoordenadas(-50,c);
				double[] P2=transformarCoordenadas(50,c);
				g.drawLine((int)P1[0],(int)P1[1],(int)P2[0],(int)P2[1]);
			}
			 
		}
		else
		{
			for (double x = -39; x <= 30; x+=0.01)
			{
	            double y =CalcularY(x);
	            double[] P = transformarCoordenadas(x, y);
	            g.fillOval((int)P[0],(int)P[1], 2, 2);
        	}	
		}
		g.setColor(Color.BLACK);
	}
}
public class Rectas extends Applet {
	public void paint(Graphics g) {
		Ecuaciones Eq=new Ecuaciones();
		Eq.Setear(4,6,2);
		Eq.Graficar(g);;		
		Eq.VerDatos(g);
	}
}