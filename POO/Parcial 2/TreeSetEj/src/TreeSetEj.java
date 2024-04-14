/**
 * @(#)TreeSetEj.java
 *
 * TreeSetEj Applet application
 *
 * @author 
 * @version 1.00 2024/4/14
 */
 
import java.awt.*;
import java.applet.*;
import java.util.*;

public class TreeSetEj extends Applet {
	public void paint(Graphics g) {
		//Creo los tree set
    	TreeSet<Integer> TS1=new TreeSet<Integer>();
    	TreeSet<Integer> TS2=new TreeSet<Integer>();
    	//Como es un set solo se agregara 1 una vez
    	TS1.add(1);
    	TS1.add(1);
    	TS1.add(3);
    	TS1.add(8);
    	TS1.add(9);
    	TS1.add(15);
    	//Metodo para ver el primer elemento
    	TS2.add(99);
    	TS2.add(103);
    	g.drawString("TS1:"+TS1,50,40);
    	g.drawString("TS2:"+TS2,50,60);
    	g.drawString(TS1.first()+" es el primer elemento de TS1",50,80);
    	TS2.addAll(TS1);
    	g.drawString("TS2 luego de agregarle todo TS1:"+TS2,50,100);
    	//Limpio TS2
    	TS2.clear();
    	g.drawString("Esta TS2 vacio luego de aplicarle un clear()?"+TS2.isEmpty(),50,120);
    	//Clono en TS2 a TS1
    	TS2=(TreeSet)TS1.clone();
    	//Aqui aplico difernetes metodos, pero explico lo que hago y lo muestro
    	g.drawString("TS2 luego de clonarle TS1:"+TS2,50,140);
    	g.drawString("TS2 contiene a 3? "+TS2.contains(3),50,160);
    	g.drawString("El primer elemento sacado de TS2: "+TS2.pollFirst()+",el utimo elemento sacado de TS2: "+TS2.pollLast(),50,180);
    	g.drawString("TS2 luego de quitarle esos elementos :"+TS2,50,200);	
    	g.drawString("TS2 tiene un tamaño de:"+TS2.size(),50,220);
    	g.drawString("Se puede quitar 3 de TS2_"+TS2.remove(3),50,240);
    	g.drawString("Si aplico cealing(5)a TS1 el resultado es "+TS1.ceiling(5),50,260);
    	g.drawString("Si aplico floor(5)a TS1 el resultado es "+TS1.floor(5),50,280);
    	g.drawString("Si uso higher(3) en TS1 el resultado es "+TS1.higher(3),50,300);
    	g.drawString("Si uso lower(3) en TS1 el resultado es "+TS1.lower(3),50,320);
	}
}