package proyecto_mecado;

import java.util.Map;

public class Productos {

    static Iterable<Map.Entry<String, Productos>> entrySet() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
   private String Codigo;
   private String Nombre;
   private String Tipo;
   private double Precio;
   private double Cantidad;
   public Productos (String Codigo,String Nombre,String Tipo,double Precio,double Cantidad){
       this.Codigo=Codigo;
       this.Nombre=Nombre;
       this.Tipo=Tipo;
       this.Precio=Precio;
       this.Cantidad=Cantidad;
   }
   public String getCodigo(){
       return this.Codigo;
   }
   public String getNombre(){
       return this.Nombre;
   }
   public String getTipo(){
       return this.Tipo;
   }
   public double getPrecio(){
       return this.Precio;
   }
   public double getCantidad(){
       return this.Cantidad;
   }
}
