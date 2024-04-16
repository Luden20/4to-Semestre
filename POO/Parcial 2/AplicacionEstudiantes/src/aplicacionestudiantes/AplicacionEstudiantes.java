package aplicacionestudiantes;
import java.awt.Color;


public class AplicacionEstudiantes {

    public static void main(String[] args) {
            Ingreso_Datos IG=new Ingreso_Datos();
            IG.setSize(800,500);
            IG.setVisible(true);
            IG.setTitle("Aplicativo Estudiantes");
            IG.getContentPane().setBackground(new Color(255, 248, 220));
    }
}
