/**
 * @(#)busqueda_estudiantes.java
 *
 * busqueda_estudiantes Applet application
 *
 * @author 
 * @version 1.00 2024/3/25
 */
 
import java.awt.*;
import java.applet.*;
class Estudiantes
{
	private String Carrera;
	private String Cedula;
	private String Nombre;
	private int Semestre;
	public Estudiantes(String Carrera, String Cedula,String Nombre, int Semestre)
	{
		this.Carrera=Carrera;
		this.Cedula=Cedula;
		this.Nombre=Nombre;
		this.Semestre=Semestre;
	}
	public void VerDato(Graphics g)
	{
		g.drawString("Cedula:"+this.Cedula,10,10);
		g.drawString("Nombre:"+this.Nombre,10,20);
		g.drawString("Carrera:"+this.Carrera,10,30);
		g.drawString("Semestre:"+this.Semestre,10,40);
	}
	public String getCedula()
	{
		return Cedula;
	}
	
}

public class busqueda_estudiantes extends Applet {
	public int Buscar(Estudiantes tercer_nivel[],String Cedula)
	{
		int i;
		for(i=0;i<tercer_nivel.length;i++)
		{
			if(tercer_nivel[i].getCedula()==Cedula)
			{
				return i;	
			}
		}
		return -1;
	}
	public Estudiantes Buscar2(Estudiantes tercer_nivel[],String Cedula)
	{
		Estudiantes aux=new Estudiantes("","","",0);
		for(int i=0;i<tercer_nivel.length;i++)
		{
			if(tercer_nivel[i].getCedula()==Cedula)
			{
				aux=tercer_nivel[i];
				break;	
			}
		}
		return aux;
	}
	
	public void init() {
	}

	public void paint(Graphics g) {
		
		Estudiantes tercer_nivel[]=
		{
			new Estudiantes("Sistemas","1","Paco",4),
			new Estudiantes("Enfermeria","2","Luis",3),
			new Estudiantes("Sistemas","3","Hugo",7),
			new Estudiantes("Civil","4","Sebas",1)
		};
		Buscar2(tercer_nivel,"3").VerDato(g);
		
		
	}
}