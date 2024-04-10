import java.awt.*;
import java.awt.event.*;
import java.applet.*;

public class ActionListenerEjemplo1 extends Applet implements ActionListener {
	//Creo un boton y un textfield para probar como interactuan con el actionlistener
    Button boton;
    TextField textField;
    //Dos String para guardar dos mensajes
    String S1;
    String S2;
    //Dos contadores para contar cuando se clikea el boton y se hace enter en el textfield
    int i;
    int j;
    public void init() {
    	//Creo el boton y el textfield
        boton = new Button("Clickeame");
        textField = new TextField(30);
        //Les agrego al ActionListener
        boton.addActionListener(this);
        textField.addActionListener(this);
        //Los muestro
        add(boton);
        add(textField);    
        //Inicializo mis variables   
        i=1;
        j=1;
        S1="Clicks n"+i;
        S2="TXF n"+j;
    }
    //El ActionPerformed que acuta en base a que se haya usado
	public void actionPerformed(ActionEvent e) {
	    if (e.getSource() == boton) {
	        i++;
	        S1="Clicks n"+i;
	    }  
	    if (e.getSource() == textField) {
	        j++;
	        S2="TXF n"+j;
	    }  
	    repaint();
	}
	//Muestro en el applet
	public void paint(Graphics g) {
        g.drawString(S1, 20, 20);
        g.drawString(S2, 20, 40);
    }
    
}
