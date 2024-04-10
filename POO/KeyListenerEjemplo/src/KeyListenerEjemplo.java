import java.awt.*;
import java.applet.*;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;

public class KeyListenerEjemplo extends Applet implements KeyListener {
	
    String mensage = "";//Utilizo una variable para almacenar el texto a mostrar

	public KeyListenerEjemplo() {//constructor
		this.addKeyListener(this);
	}
	
	public void paint(Graphics g) {
        g.drawString(mensage, 20, 20);//imprimo el mensaje
    }
    public void keyPressed(KeyEvent e) {//Función para tecla presionada
        mensage = "Tecla Presionada: " + KeyEvent.getKeyText(e.getKeyCode());
        repaint();//reimprimo
    }

    public void keyReleased(KeyEvent e) {//funcion para tecla soltada
        mensage = "Tecla Soltada: " + KeyEvent.getKeyText(e.getKeyCode());
        repaint();//Reimprimo
    }

    public void keyTyped(KeyEvent e) {//Funcion para tecla tipeada
        mensage = "Tecla Tipeada: " + e.getKeyChar();
        repaint();//Reimprimo
    }
}