package proyectodetransporte;
import java.util.LinkedHashMap;
class Interface_Menu extends javax.swing.JFrame {
    private LinkedHashMap<String,Vehiculo> ListaVehiculos = new LinkedHashMap<String,Vehiculo>();
    public Interface_Menu() {
        initComponents();
    }
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel7 = new javax.swing.JPanel();
        jPanel8 = new javax.swing.JPanel();
        jLabel3 = new javax.swing.JLabel();
        jPanel4 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        BT_RGINF = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();
        BT_CONINF = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel7.setLayout(new java.awt.BorderLayout());

        jPanel8.setBackground(new java.awt.Color(0, 153, 153));
        jPanel8.setPreferredSize(new java.awt.Dimension(398, 50));

        jLabel3.setFont(new java.awt.Font("Tw Cen MT", 3, 18)); // NOI18N
        jLabel3.setText("MENU");

        javax.swing.GroupLayout jPanel8Layout = new javax.swing.GroupLayout(jPanel8);
        jPanel8.setLayout(jPanel8Layout);
        jPanel8Layout.setHorizontalGroup(
            jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel8Layout.createSequentialGroup()
                .addGap(174, 174, 174)
                .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 51, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(173, Short.MAX_VALUE))
        );
        jPanel8Layout.setVerticalGroup(
            jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel8Layout.createSequentialGroup()
                .addGap(15, 15, 15)
                .addComponent(jLabel3)
                .addContainerGap(14, Short.MAX_VALUE))
        );

        jPanel7.add(jPanel8, java.awt.BorderLayout.PAGE_START);

        jPanel4.setBackground(new java.awt.Color(0, 204, 204));
        jPanel4.setLayout(new java.awt.GridLayout(2, 2, 10, 10));

        jLabel1.setFont(new java.awt.Font("Tw Cen MT", 2, 14)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(102, 0, 102));
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("Registro Inf");
        jPanel4.add(jLabel1);

        BT_RGINF.setBackground(new java.awt.Color(0, 255, 204));
        BT_RGINF.setFont(new java.awt.Font("Tw Cen MT", 3, 14)); // NOI18N
        BT_RGINF.setText("Ingresar");
        BT_RGINF.setMaximumSize(new java.awt.Dimension(23, 23));
        BT_RGINF.setMinimumSize(new java.awt.Dimension(23, 23));
        BT_RGINF.setPreferredSize(new java.awt.Dimension(23, 23));
        BT_RGINF.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BT_RGINFActionPerformed(evt);
            }
        });
        jPanel4.add(BT_RGINF);

        jLabel2.setFont(new java.awt.Font("Tw Cen MT", 0, 14)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(102, 0, 102));
        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel2.setText("Consulta Inf");
        jPanel4.add(jLabel2);

        BT_CONINF.setBackground(new java.awt.Color(0, 255, 204));
        BT_CONINF.setFont(new java.awt.Font("Tw Cen MT", 3, 14)); // NOI18N
        BT_CONINF.setText("Ingresar");
        BT_CONINF.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BT_CONINFActionPerformed(evt);
            }
        });
        jPanel4.add(BT_CONINF);

        jPanel7.add(jPanel4, java.awt.BorderLayout.CENTER);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel7, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel7, javax.swing.GroupLayout.DEFAULT_SIZE, 116, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void BT_RGINFActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BT_RGINFActionPerformed
        Interface_IngDatos a = new Interface_IngDatos(ListaVehiculos);
        a.setTitle("Ingreso de Datos");
        a.setVisible(true);
    }//GEN-LAST:event_BT_RGINFActionPerformed

    private void BT_CONINFActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BT_CONINFActionPerformed
        Interface_Placa b= new Interface_Placa(ListaVehiculos);
        b.setTitle("Ingreso de Datos");
        b.setVisible(true);
    }//GEN-LAST:event_BT_CONINFActionPerformed

    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Interface_Menu().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton BT_CONINF;
    private javax.swing.JButton BT_RGINF;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel7;
    private javax.swing.JPanel jPanel8;
    // End of variables declaration//GEN-END:variables
}
