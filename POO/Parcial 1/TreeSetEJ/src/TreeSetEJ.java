import java.util.*; 
public class TreeSetEJ {
    
    public static void main(String[] args) {
    	//Creo los tree set
    	TreeSet<Integer> TS1=new TreeSet();
    	TreeSet<Integer> TS2=new TreeSet();
    	//Como es un set solo se agregara 
    	TS1.add(1);
    	TS1.add(1);
    	TS1.add(3);
    	System.out.println(TS1.first());
    	TS2.add(99);
    	TS2.add(103);
    	TS1.addAll(TS2);
    	System.out.println(TS1.ceiling(2));
    	System.out.println(TS1.floor(2));
    	TS2.clear();
    	System.out.println(TS2.isEmpty());
    	TS2=(TreeSet)TS1.clone();
    	System.out.println(TS2.contains(3));
    	TS2.pollFirst();
    	TS2.pollLast();
    	System.out.println(TS1);
    	System.out.println(TS2);
    	
    }
}
