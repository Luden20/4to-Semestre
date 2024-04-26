package proyectodetransporte;
import java.util.LinkedHashMap;
import javax.swing.JOptionPane;
public class Interface_IngCitas extends javax.swing.JFrame {
    private LinkedHashMap<String,Vehiculo> Vehiculos;
    public Interface_IngCitas(LinkedHashMap Vehiculos) {
        this.Vehiculos = Vehiculos;
        initComponents();
    }
    private Interface_IngCitas() {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jPanel3 = new javax.swing.JPanel();
        jLabel4 = new javax.swing.JLabel();
        TT_PLACA = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        TT_NCT = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        TT_INF = new javax.swing.JComboBox<>();
        jLabel5 = new javax.swing.JLabel();
        TT_MM = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        TT_FS = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        TT_LS = new javax.swing.JTextField();
        jLabel8 = new javax.swing.JLabel();
        TT_ESTADO = new javax.swing.JComboBox<>();
        BT_REG = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

        jPanel1.setPreferredSize(new java.awt.Dimension(400, 300));
        jPanel1.setLayout(new java.awt.BorderLayout());

        jPanel2.setBackground(new java.awt.Color(153, 0, 153));
        jPanel2.setPreferredSize(new java.awt.Dimension(388, 50));

        jLabel1.setFont(new java.awt.Font("Tw Cen MT", 3, 18)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(51, 255, 204));
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("Ingreso de Citaciones");

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(118, 118, 118)
                .addComponent(jLabel1)
                .addContainerGap(134, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(15, 15, 15)
                .addComponent(jLabel1)
                .addContainerGap(14, Short.MAX_VALUE))
        );

        jPanel1.add(jPanel2, java.awt.BorderLayout.PAGE_START);

        jPanel3.setBackground(new java.awt.Color(204, 153, 255));
        jPanel3.setLayout(new java.awt.GridLayout(8, 2, 5, 5));

        jLabel4.setFont(new java.awt.Font("Tw Cen MT", 3, 12)); // NOI18N
        jLabel4.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel4.setText("Numero de placa");
        jPanel3.add(jLabel4);

        TT_PLACA.setFont(new java.awt.Font("Tw Cen MT", 2, 12)); // NOI18N
        jPanel3.add(TT_PLACA);

        jLabel7.setFont(new java.awt.Font("Tw Cen MT", 3, 12)); // NOI18N
        jLabel7.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel7.setText("Numero de Citacion");
        jPanel3.add(jLabel7);

        TT_NCT.setFont(new java.awt.Font("Tw Cen MT", 2, 12)); // NOI18N
        jPanel3.add(TT_NCT);

        jLabel6.setFont(new java.awt.Font("Tw Cen MT", 3, 12)); // NOI18N
        jLabel6.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel6.setText("Infraccion");
        jPanel3.add(jLabel6);

        TT_INF.setFont(new java.awt.Font("Tw Cen MT", 2, 12)); // NOI18N
        TT_INF.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Velocidad", "Salio en pico y placa", "Se paso un rojo", "Giro prohibido", "Vehiculo dañado", "Parqueo Prohibido" }));
        jPanel3.add(TT_INF);

        jLabel5.setFont(new java.awt.Font("Tw Cen MT", 3, 12)); // NOI18N
        jLabel5.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel5.setText("Monto de la multa");
        jPanel3.add(jLabel5);

        TT_MM.setFont(new java.awt.Font("Tw Cen MT", 2, 12)); // NOI18N
        TT_MM.setText("0");
        jPanel3.add(TT_MM);

        jLabel2.setFont(new java.awt.Font("Tw Cen MT", 3, 12)); // NOI18N
        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel2.setText("Fecha del suceso");
        jPanel3.add(jLabel2);

        TT_FS.setFont(new java.awt.Font("Tw Cen MT", 2, 12)); // NOI18N
        jPanel3.add(TT_FS);

        jLabel3.setFont(new java.awt.Font("Tw Cen MT", 3, 12)); // NOI18N
        jLabel3.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel3.setText("Lugar donde se realizo");
        jPanel3.add(jLabel3);

        TT_LS.setFont(new java.awt.Font("Tw Cen MT", 2, 12)); // NOI18N
        jPanel3.add(TT_LS);

        jLabel8.setFont(new java.awt.Font("Tw Cen MT", 3, 12)); // NOI18N
        jLabel8.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel8.setText("Estado de la multa");
        jPanel3.add(jLabel8);

        TT_ESTADO.setFont(new java.awt.Font("Tw Cen MT", 2, 12)); // NOI18N
        TT_ESTADO.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Cancelado", "Procesando", "Pendiente" }));
        jPanel3.add(TT_ESTADO);

        BT_REG.setFont(new java.awt.Font("Tw Cen MT", 3, 14)); // NOI18N
        BT_REG.setText("Registar");
        BT_REG.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BT_REGActionPerformed(evt);
            }
        });
        jPanel3.add(BT_REG);

        jPanel1.add(jPanel3, java.awt.BorderLayout.CENTER);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 261, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void BT_REGActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BT_REGActionPerformed
        String Placa = TT_PLACA.getText();
        String Num = TT_NCT.getText();
        String Infraccion = TT_INF.getSelectedItem().toString();
        double Monto = Double.valueOf(TT_MM.getText());
        String Fecha= TT_FS.getText();
        String Lugar = TT_LS.getText();
        String Estado = TT_ESTADO.getSelectedItem().toString();
        if ((Vehiculos.containsKey(Placa)==true)){
             Vehiculo J = Vehiculos.get(Placa);
             if (!J.getListaCitaciones().containsKey(Num))
             J.IngresarCitacion( Num, new Citacion(Num,Infraccion,Monto,Fecha,Lugar,Estado));
        }
        else {
            JOptionPane.showMessageDialog(this,"Numero de placa no registrado", "Error", JOptionPane.ERROR_MESSAGE);
        }
        
    }//GEN-LAST:event_BT_REGActionPerformed

    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Interface_IngCitas().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton BT_REG;
    private javax.swing.JComboBox<String> TT_ESTADO;
    private javax.swing.JTextField TT_FS;
    private javax.swing.JComboBox<String> TT_INF;
    private javax.swing.JTextField TT_LS;
    private javax.swing.JTextField TT_MM;
    private javax.swing.JTextField TT_NCT;
    private javax.swing.JTextField TT_PLACA;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    // End of variables declaration//GEN-END:variables
}
