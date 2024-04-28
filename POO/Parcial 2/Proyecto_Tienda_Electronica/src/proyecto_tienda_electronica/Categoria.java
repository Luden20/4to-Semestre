package proyecto_tienda_electronica;

import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Map;
import javax.swing.table.DefaultTableModel;

public class Categoria {
    //Datos miembro de categoria 
    private String Nombre;
    //Productos almacenado
    private LinkedHashMap<String,Producto> ProductosAlmacenados;
    public Categoria(String Nombre)
    {
        this.Nombre=Nombre;
        ProductosAlmacenados=new LinkedHashMap<String,Producto>();
    }
    public boolean Existe(Producto Buscado)
    {
        if(ProductosAlmacenados.get(Buscado.getNombre())==null)
        {
            return false;
        }
        return true;
    }
    public void agregarProducto(Producto agregado)
    {
        ProductosAlmacenados.put(agregado.getNombre(),agregado);
    }
    public Producto getProducto(String Nombre)
    {
        return ProductosAlmacenados.get(Nombre);
    }
    public Object[] getListado()
    {
        LinkedList<String> lista=new LinkedList<String>();
        for (Map.Entry<String, Producto> entry : ProductosAlmacenados.entrySet()) 
            {
                lista.add(entry.getKey());
            }
        return lista.toArray();
    }
    public void mostrarTabla(DefaultTableModel TC)
   {
       TC.setRowCount(0);
       for (Map.Entry<String, Producto> entry : ProductosAlmacenados.entrySet()) 
            {
                TC.addRow(entry.getValue().getAllCompleto());
            }
   }
            
}
