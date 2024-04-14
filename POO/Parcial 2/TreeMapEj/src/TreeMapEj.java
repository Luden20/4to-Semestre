/**
 * @(#)TreeMapEj.java
 *
 * TreeMapEj Applet application
 *
 * @author 
 * @version 1.00 2024/4/14
 */
 
import java.awt.*;
import java.applet.*;
import java.util.*;

public class TreeMapEj extends Applet {
	public void paint(Graphics g) {
		//Creo el treemap
		TreeMap<Integer,String> TM1=new TreeMap<Integer,String>();
		TreeMap<Integer,String> TM2=new TreeMap<Integer,String>();
		//Inserto Valores
		TM1.put(1,"uno");
		TM1.put(2,"dos");
		TM1.put(99,"noventa y nueve");
		TM1.put(50,"cincuenta");
		TM2.put(0,"cerapio");
		//Metodos con explicaciones
		g.drawString("TM1:"+TM1,50,60);
		g.drawString("La llave 99 guarda en TM1 a :"+TM1.get(99),50,80);
		g.drawString("Existe la llave 3 en TM1?"+TM1.containsKey(4),50,100);
		g.drawString("Existe el contenido xd en TM1?"+TM1.containsValue("xd"),50,120);
		
		g.drawString("La primera llave(mas baja) de TM1 es "+TM1.firstKey(),50,140);
		g.drawString("La ultima llave(mas alta) de TM1 es "+TM1.lastKey(),50,160);
		
		g.drawString("Si aplico TM1.floorEntry(10) obtengo"+TM1.floorEntry(10),50,180);
		g.drawString("Si aplico TM1.floorKey(10) obtengo"+TM1.floorKey(10),50,200);
		g.drawString("Si aplico TM1.lowerEntry(10) obtengo"+TM1.lowerEntry(10),50,220);
		g.drawString("Si aplico TM1.lowerKey(10) obtengo"+TM1.lowerKey(10),50,240);
		
		g.drawString("Si aplico TM1.ceilingEntry(10) obtengo"+TM1.ceilingEntry(10),50,260);
		g.drawString("Si aplico TM1.ceilingKey(10) obtengo"+TM1.ceilingKey(10),50,280);
		g.drawString("Si aplico TM1.higherEntry(10) obtengo"+TM1.higherEntry(10),50,300);
		g.drawString("Si aplico TM1.higherKey(10) obtengo"+TM1.higherKey(10),50,320);
		
		g.drawString("Si aplico poolFirstEntry a TM1, obtuve "+TM1.pollFirstEntry(),50,340);
		g.drawString("Si aplico poolLastEntry a TM1, obtuve "+TM1.pollLastEntry(),50,360);
		
		g.drawString("TM1 tiene un tamaño de "+TM1.size(),50,380);
		g.drawString("TM1 luego de estas operaciones :"+TM1,50,400);
		g.drawString("TM2"+TM2,50,420);
		TM2.putAll(TM1);
		g.drawString("TM2 luego de copiarle TM1  "+TM2,50,440);
		TM2.put(0,"cero");
		g.drawString("TM2 luego de reemplazar el valor de 0  "+TM2,50,460);
		TM2=(TreeMap<Integer, String>)TM1.clone();
		g.drawString("TM2 luego de clonar a TM1"+TM2,50,480);
		TM2.clear();
		g.drawString("Esta TM2 vacio luego de aplicarle un clear() "+TM2.isEmpty(),50,500);
		
	}
}