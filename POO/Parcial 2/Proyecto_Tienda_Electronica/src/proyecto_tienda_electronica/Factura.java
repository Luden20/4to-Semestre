package proyecto_tienda_electronica;

import java.util.LinkedHashMap;
import java.util.Map;
import javax.swing.table.DefaultTableModel;

public class Factura {
    //Atributos de la factura
   private Cliente Comprador;
   private LinkedHashMap<String,Producto> Carrito;
   //El contructor solo requiere cliente 
   public Factura(Cliente c)
   {
       Comprador=c;
       Carrito=new LinkedHashMap<String,Producto>();
   }
   //Funcion para agregar productos y una cantidad
   //El producto se agrega en esta funcion y ademas se le ingresa una cantidad que se va a comprar
   //El producto ingresado es el del inventario, se resta deste producto lo que compramos y
   //copiamos sus datos para generar un nuevo producto igual pero que que tiene la cantidad que compramos
   //Este ultumo se le agrega a la factura
   public void agregarProducto(Producto prod,int CantidadComprada)
   {
       Producto aux=new Producto(prod.getCodigo(),prod.getNombre(),prod.getPrecioUnitarioDouble(),prod.getDescripcion(),0);
       aux.AumentarCantidad(CantidadComprada);
       prod.ReducirCantidad(CantidadComprada);
       if(Carrito.containsKey(aux.getNombre()))
       {
           Carrito.get(aux.getNombre()).AumentarCantidad(CantidadComprada);
       }
       else
       {
           Carrito.put(aux.getNombre(), aux);
       }
       
   }
   //Sirve para calcular el precio total de los productos
   public double getTotalProd()
   {
       double precio=0;
       for (Map.Entry<String, Producto> entry : Carrito.entrySet()) 
            {
                precio=precio+entry.getValue().CalcularPrecioTotal();
            }
       return precio;
   }
   //Sirve para mostrar recibe un tablemodel y lo modifica con los datos
   public void mostratTabla(DefaultTableModel TC)
   {
       //borro todo
       TC.setRowCount(0);
       //agrego producto por producto
       for (Map.Entry<String, Producto> entry : Carrito.entrySet()) 
            {
                TC.addRow(entry.getValue().getAll());
            }
   }
}
