import java.awt.*;
import java.applet.*;
import java.util.*;

public class VectorEj extends Applet {
	
	public void init() {
	}

	public void paint(Graphics g) {
		//Declaro los vectores
		Vector<Integer> v1=new Vector<Integer>();
		Vector<Integer> v2=new Vector<Integer>();
		//Agrego elementos
		v1.add(2);
		v1.add(1);
		v1.addElement(77);
		v1.add(2);
		v2.add(20);
		v2.add(20);	
		g.drawString("v1:"+v1+" v2:"+v2,50,60);
		v1.add(1,5);
		g.drawString("v1 luego de agregar 5 en la pos 1 "+v1,50,80);
		v2.addAll(v1);
		g.drawString("v2 luego de agregarle v1 "+v2,50,100);
		g.drawString("La capacidad de v2 es de "+v2.capacity()+" porque esa es la capacidad por defecto",50,120);
		g.drawString("El tamaño de v2 es de "+v2.size(),50,140);
		g.drawString("v2 contiene a 77? "+v2.contains(77),50,160);
		g.drawString("v2 contiene a v1?"+v2.containsAll(v1),50,180);
		g.drawString("El elemento en la pos 2 de v2 es "+v2.elementAt(2),50,200);
		g.drawString("El elemento en la pos 2 de v2 es "+v2.get(2),50,220);
		g.drawString("El primer elemento de v2 es "+v2.firstElement(),50,240);
		g.drawString("El ultimo elemento de v2 es "+v2.lastElement(),50,260);
		g.drawString("La primera aparicion de 2 es en la pos "+v2.indexOf(2),50,280);
		g.drawString("La ultima aparicion de 2 es en la pos "+v2.lastIndexOf(2),50,300);
		v2.set(0,19);
		g.drawString("v2 luego de cambiar al elemento 0 por 19 "+v2,50,320);
		v2.removeAll(v1);
		g.drawString("v2 luego de borrarle v1 "+v2,50,340);
		v2.clear();
		g.drawString("Esta v2 vacio luego de aplicarle un clear() ?"+v2.isEmpty(),50,360);
		v2=(Vector<Integer>)v1.clone();
		g.drawString("v2 luego de clonar a v1 "+v2,50,380);
		v2.trimToSize();
		g.drawString("La capacidad de v2 luego de un trimToSize() es "+ v2.capacity(),50,400);
	}
}