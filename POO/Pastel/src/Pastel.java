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
		Graphics2D g2d = (Graphics2D) g;
		g2d.setColor(Color.PINK);
		float prob[]={0.5f, 0.5f};
		int ang1=0;
		int anglef=0;
		for(int i=0; i<prob.length; i++) 
		{
			g2d.setColor(Color.);
		    anglef = ang1 + (int)(prob[i]*360);
		    g2d.fillArc(30, 100, 100, 100, ang1, anglef - ang1);   
		    ang1 = anglef;
		}

	}
}