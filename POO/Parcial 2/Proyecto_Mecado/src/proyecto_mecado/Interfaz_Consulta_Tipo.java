package proyecto_mecado;
import java.util.HashMap;
import javax.swing.table.DefaultTableModel;
public class Interfaz_Consulta_Tipo extends javax.swing.JFrame {
    DefaultTableModel BXP=new DefaultTableModel();
    private HashMap<String,Productos>  Inventario ;
    public Interfaz_Consulta_Tipo(HashMap Inventario ) {
        this.Inventario = Inventario;
        initComponents();
        String ids [] = {"CODIGO","NOMBRE","TIPO","PRECIO","CANTIDAD"};
        BXP.setColumnIdentifiers(ids);
        TL_TIPO.setModel(BXP);
    }

    private Interfaz_Consulta_Tipo() {
        throw new UnsupportedOperationException("Not supported yet."); 
    }
    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jScrollPane1 = new javax.swing.JScrollPane();
        TL_TIPO = new javax.swing.JTable();
        jPanel1 = new javax.swing.JPanel();
        BT_BUSCAR = new javax.swing.JButton();
        JBT_TIPO = new javax.swing.JComboBox<>();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

        TL_TIPO.setBackground(new java.awt.Color(153, 255, 153));
        TL_TIPO.setFont(new java.awt.Font("Tw Cen MT", 2, 12)); // NOI18N
        TL_TIPO.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null}
            },
            new String [] {
                "CODIGO", "NOMBRE", "TIPO", "PRECIO", "CANTIDAD"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.Object.class, java.lang.Object.class, java.lang.Object.class, java.lang.Double.class, java.lang.Double.class
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }
        });
        TL_TIPO.setSelectionBackground(new java.awt.Color(102, 255, 102));
        jScrollPane1.setViewportView(TL_TIPO);

        jPanel1.setBackground(new java.awt.Color(0, 255, 204));

        BT_BUSCAR.setBackground(new java.awt.Color(204, 255, 204));
        BT_BUSCAR.setFont(new java.awt.Font("Tw Cen MT", 3, 14)); // NOI18N
        BT_BUSCAR.setText("BUSCAR");
        BT_BUSCAR.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BT_BUSCARActionPerformed(evt);
            }
        });

        JBT_TIPO.setBackground(new java.awt.Color(204, 255, 204));
        JBT_TIPO.setFont(new java.awt.Font("Tw Cen MT", 3, 14)); // NOI18N
        JBT_TIPO.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Limpieza", "Alimento", "Vestimenta", "Deporte", "Construcion", "Aseo Personal" }));

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addGap(32, 32, 32)
                .addComponent(BT_BUSCAR)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 120, Short.MAX_VALUE)
                .addComponent(JBT_TIPO, javax.swing.GroupLayout.PREFERRED_SIZE, 143, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(21, 21, 21))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap(14, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(JBT_TIPO, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(BT_BUSCAR))
                .addGap(15, 15, 15))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
            .addComponent(jScrollPane1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 251, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void BT_BUSCARActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BT_BUSCARActionPerformed
        String Tipo = JBT_TIPO.getSelectedItem().toString();
        // Recorrer el HashMap para encontrar todas las personas con el nombre buscado
        for (Productos producto : Inventario.values()) {
            if (producto.getTipo().equals(Tipo)) {
                BXP.addRow(new Object[]{producto.getCantidad(),producto.getNombre(),producto.getTipo(),producto.getPrecio(),producto.getCantidad()});
            }
        }
    }//GEN-LAST:event_BT_BUSCARActionPerformed

    public static void main(String args[]) {
       //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Interfaz_Consulta_Tipo.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Interfaz_Consulta_Tipo.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Interfaz_Consulta_Tipo.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Interfaz_Consulta_Tipo.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Interfaz_Consulta_Tipo().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton BT_BUSCAR;
    private javax.swing.JComboBox<String> JBT_TIPO;
    private javax.swing.JTable TL_TIPO;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    // End of variables declaration//GEN-END:variables
}
