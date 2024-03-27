import java.awt.*;
import java.applet.*;

class Estudiante
{
	/**Definicion de Datos miembros en la clase*/
	private String Cedula;
	private String Nombre;
	private String Carrera;
	private String Semestre;
	/**Creacion del Constructor*/
	public  Estudiante (String Cedula, String Carrera,String Nombre, String Semestre )
	{
		this.Cedula = Cedula;
		this.Carrera = Carrera;
		this.Semestre = Semestre;
		this.Nombre = Nombre;
	}
	/**Creacion de  la funcion miembro que nos permite ver los datos miembros de los estudiantes*/
	public void Ver_Datos(Graphics g,int x)
	{
		g.drawString("Cedula: "+this.Cedula,x,50);
		g.drawString("Estudiante "+this.Nombre,x,100);
		g.drawString("Carrera: "+this.Carrera,x,150);
		g.drawString("Semestre : "+this.Semestre,x,200);
	}
	/**Creacion funciones miembros que nos permiten consultar los datos miembros sin tener que romper la encapsulacion*/
	public String getCedula(){
		return this.Cedula;
	}
	public String getCarrera(){
		return this.Carrera;
	}
}
public class Proyecto_Estudiante extends Applet {
	/** Creacion de funcion no miembro que nos permite Buscar un estudiante y retornar la posicion*/
	public int Buscar_Posicion(Estudiante Tercer_nivel[], String Cedula) 
	{
		for (int i=0; i < Tercer_nivel.length;i++)
		{
			if (Tercer_nivel[i].getCedula() == Cedula)
			{
				return i;
			}
		}
		return -1;
	}
	/**Creacion de funcion no miembro que nos permite Buscar un estudiante y retorna el objeto estudiante*/
	public Estudiante Buscar_Estudiante (Estudiante Tercer_nivel[], String Cedula)
	{
		for (int i=0; i < Tercer_nivel.length;i++)
		{
			 if (Tercer_nivel[i].getCedula() == Cedula)
			{
				return Tercer_nivel[i];
			}	
		}
		return null;
	}
	/**Creacion de funcion no miembro que nos permite realizar una grafica*/
	public void Ver_Grafica(Graphics g,int Sis,int Arq,int Med,int Filo)
	{
		int x=300;int y=Sis+Arq+Med+Filo;
		g.drawLine(50,300,400,300);
		g.drawLine(50,300,50,y*100+300);
		for (int i=0; i<=y;i++)
		{
			g.drawLine(45,x,55,x);
			g.drawString("o",35,x);
			x+=100;
		}	
		g.setColor(Color.RED);
		g.drawString("Sistemas", 80, 290);
		g.fillRect(80, 300, 50, Sis * 100);
		g.setColor(Color.GREEN); 
		g.drawString("Arquitectura", 160, 290);
		g.fillRect(160, 300, 50, Arq * 100);
		g.setColor(Color.BLUE); 
		g.drawString("Medicina", 240, 290);
		g.fillRect(240, 300, 50, Med * 100);
		g.setColor(Color.ORANGE);
		g.drawString("Filosofia", 320, 290);
		g.fillRect(320, 300, 50, Filo * 100);
		
	}
	public void init() {	
	}
	public void paint(Graphics g)  
	{
		//* Se crea el arreglo con los los objetos definidos*/
		Estudiante Tercer_nivel[] = {new Estudiante("1725094070","Sistemas","Pedro","Tercero"),
			new Estudiante("1725094071","Arquitectura","Juan","Tercero"),
			new Estudiante("1725094072","Medicina","XAX","Tercero"),
			new Estudiante("1725094073","Sistemas","UX","Tercero")};
		/**Impresion de los objetos que se encuentran en el arreglo*/
		g.setColor(Color.BLUE);
		//Se define una posicion en x para que no se superpongan los datos generales de los estudiantes
		int x=50;
		int Sis =0; int Med=0; int Arq=0; int Filo=0;
		for (int i =0; i < Tercer_nivel.length;i++)
		{
			Estudiante J = Tercer_nivel[i];
			J.Ver_Datos(g,x);
			x+=200;
		}
		/**Impresion de la Grafica*/
		g.setColor(Color.BLACK);
		for(int i=0;i<Tercer_nivel.length;i++){
			Estudiante J = Tercer_nivel[i];
			if (J.getCarrera()=="Sistemas"){
				Sis++;
			}
			else if (J.getCarrera() == "Arquitectura"){
				Arq++;
			}
			else if (J.getCarrera()=="Medicina"){
				Med++;
			}
			else if (J.getCarrera() == "Filosofia"){
				Filo++;
			}
		}
		Ver_Grafica(g,Sis,Arq,Med,Filo);
		/** Se busca la posicion estudiante por el codigo de cedula determinado*/
		g.setColor(Color.gray);
		int posicion = Buscar_Posicion(Tercer_nivel,"1725094073");
		if (posicion < 0)
		{
			g.drawString("Estudante no encontrado",800,50);
		}
		else if (posicion != -1)
		{
			g.drawString("Se encuentra en la posicion:" + (posicion+1),800,50);
		}
		/**Se busca al estudiante por el codigode cedula determinado*/
		g.setColor(Color.darkGray);
		Estudiante Informacion = Buscar_Estudiante(Tercer_nivel,"172509407");
		g.drawString("Informacion  del estudiante buscado:" ,1000,25);
		if (Informacion==null)
		{
			g.drawString("No encontrado:" ,1000,50);
		}
		else 
		{
			Informacion.Ver_Datos(g,1000);
		}
	}
}