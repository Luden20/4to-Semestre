import java.awt.*;
import java.awt.event.*;
import java.applet.*;

public class ActionListenerEjemplo1 extends Applet implements TextListener {
    TextField textField;
    //Dos String para guardar dos mensajes
    String S1;
    public void init() {
        textField = new TextField(30);
        textField.addTextListener(this);
        add(textField);    
        S1="TEXTO";
    }
    //El ActionPerformed que acuta en base a que se haya usado
	public void textValueChanged(TextEvent e) {
	    S1=textField.getText();
	    repaint();
	}
	//Muestro en el applet
	public void paint(Graphics g) {
        g.drawString(S1, 20, 20);
    }
    
}
