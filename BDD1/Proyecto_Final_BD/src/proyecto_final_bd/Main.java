/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package proyecto_final_bd;

import proyecto_final_bd.BD.ConexionOracle.ConexionOracle;
import java.sql.ResultSet;
/**
 *
 * @author polip
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       ConexionOracle con= new ConexionOracle();
       String consulta = "SELECT * FROM bodega";
       ResultSet rs = con.ejecutarQuery(consulta);
       ConexionOracle.printResultSet(rs);
       con.desconectar();
    }
    
}
