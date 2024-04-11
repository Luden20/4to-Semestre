/**
 * @(#)Pruebas.java
 *
 * Pruebas application
 *
 * @author 
 * @version 1.00 2024/4/11
 */
import java.util.*;
public class Pruebas {
    
    public static void main(String[] args) {
    	
    	// Crear un TreeMap que mapea nombres de pa�ses a sus capitales
        TreeMap<String, String> capitales = new TreeMap<String,String>();

        // Agregar elementos al TreeMap
        capitales.put("Francia", "Par�s");
        capitales.put("Espa�a", "Madrid");
        capitales.put("Italia", "Roma");
        capitales.put("Alemania", "Berl�n");
        capitales.put("Reino Unido", "Londres");

        // Mostrar el TreeMap completo
        System.out.println("Capitales:");
        System.out.println(capitales);

        // Obtener y mostrar la capital de Espa�a
        String capitalEspana = capitales.get("Espa�a");
        System.out.println("La capital de Espa�a es: " + capitalEspana);

        // Eliminar un elemento del TreeMap
        capitales.remove("Francia");

        // Mostrar el TreeMap actualizado
        System.out.println("Capitales despu�s de eliminar Francia:");
        System.out.println(capitales);

        // Iterar sobre las entradas del TreeMap
        System.out.println("Iterando sobre las entradas del TreeMap:");
        for (Map.Entry<String, String> entry : capitales.entrySet()) {
            String pais = entry.getKey();
            String capital = entry.getValue();
            System.out.println("La capital de " + pais + " es " + capital);
        }
    }
}
