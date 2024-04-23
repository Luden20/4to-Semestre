/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package cuenta_bancaria;
import java.awt.Color;
/**
 *
 * @author Camilo-PC
 */
public class Cuenta_Bancaria {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        IngresoDatos IG=new IngresoDatos();
        IG.setSize(675,310);
        IG.setVisible(true);
        IG.setTitle("Aplicativo Cuenta Bancaria");
        IG.getContentPane().setBackground(new Color(255, 248, 220));
    }
    
}
