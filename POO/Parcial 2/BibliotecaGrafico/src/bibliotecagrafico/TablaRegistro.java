/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package bibliotecagrafico;
import java.awt.BorderLayout;
import java.util.LinkedHashMap;
import javax.swing.table.DefaultTableModel;
import java.util.Map;
import javax.swing.JScrollPane;
import javax.swing.JTable;

public class TablaRegistro extends javax.swing.JFrame 
{
    public TablaRegistro(LinkedHashMap<String, Libro> InventarioBiblioteca) 
    {
        initComponents();
        
        /**Creacion de un modelo de tabla*/
        modelo = new DefaultTableModel();
        /**Creacion de las columnas de la tabla*/
        modelo.addColumn("Codigo");
        modelo.addColumn("Titulo");
        modelo.addColumn("Autor");
        modelo.addColumn("Fecha de Publicacion");
        modelo.addColumn("Editorial");
        modelo.addColumn("Genero");
        
        /**Se agregan los datos*/
        for (Map.Entry<String, Libro> entry : InventarioBiblioteca.entrySet())
        {
            modelo.addRow(entry.getValue().getAll());
        }
        
        /**Creacion de la tabla con el modelo*/
        table = new JTable(modelo);
        
        /**Codigo mandatorio para el funcionamiento*/
        JScrollPane scrollPane = new JScrollPane(table);
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
        /**Creacion y muestra de la tabla*/
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    // End of variables declaration//GEN-END:variables
    /**Variables propias*/
    private JTable table;
    private DefaultTableModel modelo;
}
