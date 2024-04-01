import java.awt.*;
import java.applet.*;

class libro
{
	/**Defincion de los datos miembros de la clase libro*/
	private String Codigo;
	private String Titulo;
	private String Autor;
	private String Fecha_Publicacion;
	private String Editoria;
	private String Genero;
	/**Realización del constructor */
	public libro (String Codigo, String Titulo, String Autor, String Fecha_Publicacion, String Editoria, String Genero)
	{
		this.Codigo = Codigo; this.Titulo = Titulo; this.Autor = Autor; this.Fecha_Publicacion = Fecha_Publicacion; this.Editoria = Editoria; this.Genero=Genero; 
	}
	/**Realzacion de visualizacion de la informacion de los datos miembro*/
	public void Ver_Datos(Graphics g,int Ejex,int Ejey)
	{
		g.drawString("Codigo: "+this.Codigo,Ejex,Ejey);
		g.drawString("Titulo: "+this.Titulo,Ejex,Ejey+50);
		g.drawString("Autor: "+this.Autor,Ejex,Ejey+100);
		g.drawString("Fecha de publicacion : "+this.Fecha_Publicacion,Ejex,Ejey+150);
		g.drawString("Editorial: "+this.Editoria,Ejex,Ejey+200);
		g.drawString("Genero : "+this.Genero,Ejex,Ejey+250);
	}
	/**Funcion para poder sacar el codigo del libro*/
	public String get_codigo(){
		return Codigo;
	}
	/**Funcion para poder sacar la categoria del libro*/
	public String get_Genero(){
		return Genero;
	}
	
}
public class Trabajo_Biblioteca extends Applet {
	
	/** Funcion no miembro que te indican la pocision del libro que se esta buscando*/
	public String Buscar_Posicion (libro Biblioteca[][],String codigo)
	{
		for (int x=0;x<3;x++)
		{
			for (int y=0;y<3;y++)
			{
				if (Biblioteca[x][y].get_codigo()==codigo)
					return "Columna: "+x+" Fila: "+y;
			}
		}
		return "-1";
	}
	/** Funcion no miembro que se encarga de buscar el libro por el codigo*/
	public libro Buscar_Libro (libro Biblioteca[][],String codigo)
	{
		for (int x=0;x<3;x++)
		{
			for (int y=0;y<3;y++)
			{
				if (Biblioteca[x][y].get_codigo()==codigo)
					return Biblioteca[x][y];
			}
		}
		return null;
	}	
	/** Funcion que nos permite ver una grafica con el numero de Generos en la tienda*/
	public void Ver_GraficaGenero(Graphics g,int Fan,int Ac,int Dra,int Sus){
		int x=400;int y=Fan+Ac+Dra+Sus;
		g.drawString("Grafica de Generos: ", 350, 375);
		g.drawLine(350,400,750,400);
		g.drawLine(350,400,350,y*100);
		for (int i=0; i<=y;i++)
		{
			g.drawLine(345,x,355,x);
			g.drawString("o",340,x);
			x+=100;
		}	       
		g.setColor(Color.RED);
		g.drawString("Fantasia", 360, 390);
		g.fillRect(360, 400, 50, Fan * 100);
		g.setColor(Color.GREEN); 
		g.drawString("Accion", 440, 390);
		g.fillRect(440, 400, 50, Ac * 100);
		g.setColor(Color.BLUE); 
		g.drawString("Drama", 520, 390);
		g.fillRect(520, 400, 50, Dra * 100);
		g.setColor(Color.ORANGE);
		g.drawString("Suspenso", 600, 390);
		g.fillRect(600,400, 50, Sus * 100);
		
	}
	public void init() {
	}
	public void paint(Graphics g) 
	{
		/** Ingreso de datos dentro del arreglo bidimensional de 3x3*/
		libro[][] Biblioteca = new libro [3][3];
		Biblioteca[0][0] = new libro("S150","Alicia, en el espejo","Lewis Carrol","1871","Alfaguara","Accion");
		Biblioteca[0][1] = new libro("A230","El Rey titan","Alfonso Chafla","1877","Corimbo","Fantasia");
		Biblioteca[0][2] = new libro("G120","El gato me vigila","Daniel Calvopiña","1950","Alfaguara","Drama");
		Biblioteca[1][0] = new libro("HT50","Los 7 misterios misteriosos","Sebastian Jacome","1885","Edelvives","Suspenso");
		Biblioteca[1][1] = new libro("SJ25","Simba el gato volador","Adonis de Mora","1942","Ediciones el naranjo","Fantasia");
		Biblioteca[1][2] = new libro("AC07","La 5ta ola","Anthonio Proaño","2003","Corimbo","Fantasia");
		Biblioteca[2][0] = new libro("DC10","El quiere que sonria","Luxor Anderson","2019","","Suspenso");
		Biblioteca[2][1] = new libro("CB15","Cometas en el cielo","Pedro Pascal","2011","Kokinos","Drama");
		Biblioteca[2][2] = new libro("TO55","Las flipantes aventuras de jonathan","Mathi carrazco","1999","SM","Fantasia");
		/** Realizo un for para que me imprima todos todos los libros*/
		int x=50;
		g.drawString("Todos los libros de la base de datos",25,25);
		for (int i=0;i<3;i++)
		{
			for (int y=0;y<3;y++)
			{
				libro J = Biblioteca[i][y];
				J.Ver_Datos(g,x,50);
				x+=200;
			}
		}
		g.drawLine(10,320,1800,320);
		/** Buscar la posicion por codigo de libro*/
		g.drawString("Posicion del libro: ",10,350);
		String Posicion = Buscar_Posicion(Biblioteca, "TO55");
		if ( Posicion == "-1")
			g.drawString("Libro inexistente", 10,375);
		else
			g.drawString("El libro se encuentra ubicado en: "+Posicion,10,375);
		/**Buscar el libro por el codigo del libro*/
		g.drawString("Informacion del libro : ",10,400);
		libro J = Buscar_Libro(Biblioteca, "TO55");
		if ( J == null){
			g.drawString("Libro inexistente", 10,425);
		}
		else{
				J.Ver_Datos(g,10,425);
		}
		/** Tabla estadistica de Genero*/
		int Fan =0;int Dr=0;int AC =0; int Sus=0;
		for(int i=0;i<3;i++){
			for(int y=0;y<3;y++){
				J = Biblioteca[i][y];
			if (J.get_Genero () =="Fantasia"){
				Fan++;
			}
			else if (J.get_Genero() == "Drama"){
				Dr++;
			}
			else if (J.get_Genero()=="Accion"){
				AC++;
			}
			else if (J.get_Genero() == "Suspenso"){
				Sus++;
			}
			}
		}
		Ver_GraficaGenero(g,Fan,AC,Dr,Sus);
		
	}
}