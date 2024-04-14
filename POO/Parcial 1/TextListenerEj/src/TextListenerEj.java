import java.awt.*;
import java.awt.event.*;
import java.applet.*;

public class TextListenerEj extends Applet implements TextListener{
	//TextField para probar el textListener
	TextField textField;
    //String para mostrar lo que haya de texto
    String S1;
    public void init() {
        textField = new TextField(30);
        textField.addTextListener(this);
        add(textField);    
        S1="TEXTO";
    }
    //El TextListener se llama cuando cambie el valor de texto del TF
	public void textValueChanged(TextEvent e) {
		//Redefino S1
	    S1=textField.getText();
	    repaint();
	}
	//Muestro en el applet
	public void paint(Graphics g) {
        g.drawString(S1, 20, 20);
    }
}