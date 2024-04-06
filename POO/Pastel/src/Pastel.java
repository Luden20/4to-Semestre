/**
 * @(#)Pastel.java
 *
 * Pastel Applet application
 *
 * @author 
 * @version 1.00 2024/4/2
 */
 
import java.awt.*;
import java.applet.*;

public class Pastel extends Applet {
	
	public void init() {
	}
	public void paint(Graphics g) {
		double prob[]={0.08,0.08,0.08,0.08,0.08,0.08,0.08,0.08,0.08};
		MostrarPastel(g,10,10,100,100,prob);

	}
	public double prob(Producto[] arr)
	{
		double total=0;
		for (int i=0,i<3,i++)
		{
			for(int j=0,j<3,j++)
			{
				total=total+arr[i][j].Get_Precio_Total();
			}
		}
		double p[]=new double[9];
		int x=0;
		for (int i=0,i<3,i++)
		{
			for(int j=0,j<3,j++)
			{
				p[x++]=arr[i][j].Get_Precio_Total()/total;
			}
		}
		return p;
		
	}
	public void MostrarPastel(Graphics g, int x, int y, int h, int w, double arr[]) {
		//Contadores para saber desde que angulos grafico
	    int ini = 0;
	    int fin = 0;
   
	    g.setColor(Color.RED);
	    //	Calculo el angulo final en base a la prmiera posicion del arr
	    fin = (int) (arr[0] * 360);
	    g.fillArc(x, y, h, w, ini, fin);
	    //El angulo final e vuelve el inicial y calculo el nuevo final sumandole al anterior
	    ini =ini+ fin; 
	    fin = fin+(int) (arr[1] * 360);
	    g.setColor(Color.BLUE);
	    g.fillArc(x, y, h, w, ini, fin);
	    ini = ini+ fin;
	    fin =fin+ (int) (arr[2] * 360);
	    g.setColor(Color.GRAY);
	    g.fillArc(x, y, h, w, ini, fin);
	    ini = ini+ fin; 
	    fin = fin+ (int) (arr[3] * 360);
	    g.setColor(Color.GREEN);
	    g.fillArc(x, y, h, w, ini, fin);
	    ini =ini+ fin; 
	    fin = fin+(int) (arr[4] * 360);
	    g.setColor(Color.MAGENTA);
	    g.fillArc(x, y, h, w, ini, fin);
	    ini += fin; 
	    fin = (int) (arr[5] * 360);
	    g.setColor(Color.DARK_GRAY);
	    g.fillArc(x, y, h, w, ini, fin);
	    ini += fin; 
	    fin = (int) (arr[6] * 360);
	    g.setColor(Color.CYAN);
	    g.fillArc(x, y, h, w, ini, fin);
	    ini += fin; 
	    fin = (int) (arr[7] * 360);
	    g.setColor(Color.LIGHT_GRAY);
	    g.fillArc(x, y, h, w, ini, fin);
	    ini += fin; 
	    fin = (int) (arr[8] * 360);
	    g.setColor(Color.PINK);
	    g.fillArc(x, y, h, w, ini, fin);
	    
}

}