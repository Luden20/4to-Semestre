package proyecto_tienda_electronica;

import java.util.LinkedHashMap;

public class Proyecto_Tienda_Electronica {

    public static void main(String[] args) {
        // TODO code application logic here
        
        Producto producto1 = new Producto("001", "XBOX SERIE S", 399.99, "XBOZ", 4);
        Producto producto2 = new Producto("002", "IPHONE 15", 1229.99, "TU ERE POBRE TU NO TIENE IPHONE", 30);
        Producto producto3 = new Producto("003", "COMPUTADOR GAMER XD", 999.99, "COMPUTADOR", 10);
        Producto producto4 = new Producto("004", "Rizen 4", 199.99, "Ryzen 4", 20);;

        LinkedHashMap<String,Categoria> Existencias=new LinkedHashMap<String,Categoria>();
        Existencias.put("Componentes", new Categoria("Componentes"));
        Existencias.put("Consolas", new Categoria("Consolas"));
        Existencias.put("Celulares", new Categoria("Celulares"));
        Existencias.put("Computadores", new Categoria("Computadores"));
        
        Existencias.get("Consolas").agregarProducto(producto1);
        Existencias.get("Celulares").agregarProducto(producto2);
        Existencias.get("Computadores").agregarProducto(producto3);
        Existencias.get("Componentes").agregarProducto(producto4);
        Pantalla_Inicio a=new Pantalla_Inicio(Existencias);
        a.setTitle("Menu");
        a.setVisible(true);
        
        
    }
    
}
