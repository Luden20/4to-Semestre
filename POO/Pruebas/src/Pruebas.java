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
    	
    	List<String> stringList = new ArrayList<String>();
		stringList.add("hello");
		addUnrelatedInfo(stringList);
		stringList.add("world");
		System.out.println(stringList);
    }
    public void addUnrelatedInfo(List list) {
    list.add(5);
	}
    
}
