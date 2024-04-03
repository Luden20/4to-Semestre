import java.awt.*;
import java.applet.*;

class Cuenta_Bancaria
{
	/*definicion de los datos miembro de la clase cuenta*/
	private String Codigo_Cuenta;
	private String usuario;
	private double Deposito_Mes;
	private double Retiro_Mes;
	private double credito;
	private double deuda;
	private String Nombre_Banco;
	/*Constructor*/
	public Cuenta_Bancaria (String Codigo_Cuenta, String usuario, double Deposito_Mes, double Retiro_Mes, double credito, double deuda,String Nombre_Banco){
		this.Codigo_Cuenta = Codigo_Cuenta;
		this.usuario = usuario;
		this.Deposito_Mes = Deposito_Mes;
		this.Retiro_Mes = Retiro_Mes;
		this.credito = credito;
		this.deuda = deuda;
		this.Nombre_Banco = Nombre_Banco;
	}
	//*Visualizacion*/
	public void Ver_Datos(Graphics g, int ejex, int ejey)	{
		g.drawString("Codigo de cuenta: " + this.Codigo_Cuenta, ejex, ejey);
		g.drawString("Usuario: " + this.usuario, ejex, ejey + 30);
		g.drawString("Deposito Mensual: " + this.Deposito_Mes, ejex, ejey + 60);
		g.drawString("Retiro mensual: " + this.Retiro_Mes, ejex, ejey + 90);
		g.drawString("Credito: " + this.credito, ejex, ejey + 120);
		g.drawString("Deuda: " + this.deuda, ejex, ejey + 150);
		g.drawString("Nombre del Banco: " + this.Nombre_Banco, ejex, ejey + 180);
	}
	
	//*Funciones miembro para extraer datos miembro*/
	//*Codigo de Cuenta*/
	public String get_CodigoCuenta ()	{
		return Codigo_Cuenta;
	}
	/*Banco*/
	public String get_Banco(){
		return Nombre_Banco;
	}
	//*Obtener el total/
	public double getTotal(){
		return Deposito_Mes + Retiro_Mes + credito + deuda;
	}
	public double [] getPorcentajes()	{
		double total = getTotal();
		return new double[]	{
			(Deposito_Mes / total),
			(Retiro_Mes / total),
			(credito / total),
			(deuda / total)
		};
	}

}

public class Proyecto_Cuenta_Banco extends Applet {
	//*Funcion no miembro que busca la posicion de la cuenta/
	public String Buscar_Posicion (Cuenta_Bancaria Registro[][], String Codigo_Cuenta){
		for (int i = 0; i < 3; i++)	{
			for (int j = 0; j < 3; j++)		{
				if(Registro[i][j].get_CodigoCuenta() == Codigo_Cuenta)
					return "Columna: " + i + "Fila " + j;
			}
		}
		return "Cuenta No Encontrada";
	}
	//*Funcion no miembro que busca la cuenta por el numero de cuenta/
	public Cuenta_Bancaria Buscar_Cuenta (Cuenta_Bancaria Registro[][], String Codigo_Cuenta){
		for (int i = 0; i < 3; i++)	{
			for (int j = 0; j < 3; j++)		{
				if(Registro[i][j].get_CodigoCuenta() == Codigo_Cuenta)
					return Registro[i][j];
			}
		}
		return null;
	}
	//*Grafica/
	//*Circulo/
	public void Graficar_Circulo(Graphics g, int x, int y, int radio) {
        g.drawOval(x - radio, y - radio, 2 * radio, 2 * radio);
    }
    //*Rectangulo/
    public void Graficar_Rectangulo(Graphics g, int x, int y, int h, int w){
    	g.drawRect(x, y, h, w);
    }
	 public void MostrarPastel(Graphics g, int x, int y, int h, int w, double arr[]) {
			//Contadores para saber desde que angulos grafico
		    int ini = 0;
		    int fin = 0; 
		    g.setColor(Color.BLUE);
		    //	Calculo el angulo final en base a la prmiera posicion del arr
		    fin = (int) (arr[0] * 360);
		    g.fillArc(x, y, h, w, ini, fin);
		    //El angulo final e vuelve el inicial y calculo el nuevo final sumandole al anterior
		    ini += fin; 
		    fin = (int) (arr[1] * 360);
		    g.setColor(Color.GRAY);
		    g.fillArc(x, y, h, w, ini, fin);
		    ini += fin;
		    fin = (int) (arr[2] * 360);
		    g.setColor(Color.GREEN);
		    g.fillArc(x, y, h, w, ini, fin);
		    ini += fin; 
		    fin = (int) (arr[3] * 360);
		    g.setColor(Color.RED);
		    g.fillArc(x, y, h, w, ini, fin);
		    g.setColor(Color.BLACK);
	}
	public void paint(Graphics g) {
		//*Ingreso de datos/
		Cuenta_Bancaria[][] Registro = {
			{
				 new Cuenta_Bancaria("4021-8840-6088-9817", "Xavier Jacome", 520, 22, 65, 0, "Produbanco"),
				 new Cuenta_Bancaria("4143-6763-5172-3249", "Sebastian Sarmiento", 114, 43, 33, 1, "Pichincha"),
				 new Cuenta_Bancaria("4456-9157-1982-4989", "Antonio Proaño", 567, 328, 15, 156, "Produbanco")
			},
			{		
				 new Cuenta_Bancaria("4557-4844-6152-9807", "David Novillo", 14325, 6320, 12620, 9420, "Guayaquil"),
				 new Cuenta_Bancaria("4823-2526-1693-9496", "Camilo Buitron", 0, 20, 0, 0, "Pichincha"),
				 new Cuenta_Bancaria("4421-4562-5063-1683", "Andres Arrollo", 1423692, 63216, 12056, 28323, "Guayaquil")
			},
			{
			
				 new Cuenta_Bancaria("4161-9852-8538-4102", "Daniel Calvopina", 825, 43, 67, 5, "Pichincha"),
				 new Cuenta_Bancaria("4551-6050-6365-9297", "Sebastian Orellana", 234, 56, 15, 108, "Guayaquil"),
				 new Cuenta_Bancaria("4002-0876-3455-9907", "Alfonso Chafla", 5420, 1268, 670, 3209, "Produbanco")
			}
		};
		//*Salida de Datos/
		g.drawString("Todas las cuentas del registro", 25, 25);
		int y = 50;
		for(int i = 0; i < 3; i++)	{
			for(int j = 0; j < 3; j++)		{
				Cuenta_Bancaria J = Registro[i][j];
				J.Ver_Datos(g, 70 + (j * 500),y);
				Graficar_Rectangulo(g, 60 + (j * 500), y - 20, 450, 210);
				Graficar_Rectangulo(g, 60 + (j * 500), y - 20, 240, 210);
				double prob[]=J.getPorcentajes();
				{
					MostrarPastel(g, 305 + (j * 500), y - 15 , 200, 200, prob);
				}
				
				Graficar_Circulo(g, 405 + (j * 500), y + 85, 100);
			}
			y = y + 300;
		}
	}
}