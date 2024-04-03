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
		double prob[]={0.15, 0.35,0.35,0.15};
		MostrarPastel(g,10,10,100,100,prob);

	}
	public void MostrarPastel(Graphics g, int x, int y, int h, int w, double arr[]) {
		//Contadores para saber desde que angulos grafico
	    int ini = 0;
	    int fin = 0;
	    //Graphics2D para graficar
	    Graphics2D g2d = (Graphics2D) g;    
	    g2d.setColor(Color.RED);
	    //	Calculo el angulo final en base a la prmiera posicion del arr
	    fin = (int) (arr[0] * 360);
	    g2d.fillArc(x, y, h, w, ini, fin);
	    //El angulo final e vuelve el inicial y calculo el nuevo final sumandole al anterior
	    ini += fin; 
	    fin = (int) (arr[1] * 360);
	    g2d.setColor(Color.BLUE);
	    g2d.fillArc(x, y, h, w, ini, fin);
	    ini += fin;
	    fin = (int) (arr[2] * 360);
	    g2d.setColor(Color.GRAY);
	    g2d.fillArc(x, y, h, w, ini, fin);
	    ini += fin; 
	    fin = (int) (arr[3] * 360);
	    g2d.setColor(Color.GREEN);
	    g2d.fillArc(x, y, h, w, ini, fin);
	    g2d.setColor(Color.BLACK);
}

}