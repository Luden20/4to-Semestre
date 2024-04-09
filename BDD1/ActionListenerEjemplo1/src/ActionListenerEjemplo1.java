/**
 * @(#)ActionListenerEjemplo1.java
 *
 * ActionListenerEjemplo1 Applet application
 *
 * @author 
 * @version 1.00 2024/4/9
 */
 
import java.awt.*;
import java.awt.event.*;
import java.applet.*;

public class ActionListenerEjemplo1 extends Applet implements ActionListener {
    Button boton;

    public void init() {
        boton = new Button("Haz clic");
        boton.addActionListener(this);
        add(boton);
    }

    public void actionPerformed(ActionEvent e) {
    int i = 0;
    // Aquí es donde manejarás la acción del botón
    if (e.getSource() == boton) {
        i++;
        System.out.println("Click");
    }
}

}