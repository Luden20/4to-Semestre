package bibliotecagrafico;
import java.awt.Color;

public class BibliotecaGrafico {
    public static void main(String[] args) 
    {
        /**Creacion de instancia de la salida*/
        SalidaGrafica SG = new SalidaGrafica();
        /**Tamano de la ventana*/
        SG.setSize(800,500);
        /**Visibilidad*/
        SG.setVisible(true);
        /**Nombre de la Ventana*/
        SG.setTitle("Registro Biblioteca");
        /**Color del fondo de la ventana*/
        SG.getContentPane().setBackground(new Color(187, 231, 219));

    }
    
}
