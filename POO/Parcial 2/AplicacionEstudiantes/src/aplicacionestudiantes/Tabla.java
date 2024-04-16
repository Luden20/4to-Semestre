/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package aplicacionestudiantes;
import java.awt.BorderLayout;
import java.util.LinkedHashMap;
import javax.swing.table.DefaultTableModel;
import java.util.Map;
import javax.swing.JScrollPane;
import javax.swing.JTable;
//Esta es la clase tabla, se usa para mostrar una tabla
//No wache como mostrar la tabla desde el netbeans asi que en base a mucha investigacion y tutoriales le hice asi
public class Tabla extends javax.swing.JFrame {
    //Como este es el constructuor paso los datos desde IngresoDatos aca por aqui
    public Tabla(LinkedHashMap<String, Estudiante> l) {
        initComponents();
        //Instancio el modelo y las columnas
        modelo = new DefaultTableModel();
        modelo.addColumn("Cedula");
        modelo.addColumn("Nombre");
        modelo.addColumn("Carrera");
        modelo.addColumn("Semestre");
        //Recorro enla tabla cada entrada de la linkedHashSet
        for (Map.Entry<String, Estudiante> entry : l.entrySet()) {
            modelo.addRow(entry.getValue().getAll());
        }
        //Instancio la tabla con el modelo
        tabla = new JTable(modelo); 
        //Estas son cosas necesarias creo
        //Sin esto no jala 
        JScrollPane scrollPane = new JScrollPane(tabla);
        getContentPane().add(scrollPane); 

        modelo.fireTableDataChanged();
        getContentPane().setLayout(new BorderLayout()); 

        getContentPane().add(scrollPane, BorderLayout.CENTER);
        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 400, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 300, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    public static void main(String args[]) {

        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    // End of variables declaration//GEN-END:variables
    private  JTable tabla;
    private  DefaultTableModel modelo;
}
