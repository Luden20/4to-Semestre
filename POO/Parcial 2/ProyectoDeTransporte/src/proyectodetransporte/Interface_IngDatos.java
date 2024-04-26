package proyectodetransporte;
import java.util.LinkedHashMap;
public class Interface_IngDatos extends javax.swing.JFrame {
    /**Declaro un LinkedHashMap que se va a usar en todo el codigo*/
    private LinkedHashMap<String,Vehiculo> Vehiculos;
    public Interface_IngDatos(LinkedHashMap ListaVehiculos) {
        this.Vehiculos=ListaVehiculos;
        initComponents();
    }
    /**Constructor que se crea automaticamente*/
    private Interface_IngDatos() {
        throw new UnsupportedOperationException("Not supported yet."); 
    }
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jLabel11 = new javax.swing.JLabel();
        jPanel3 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        TT_CEDULA = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        TT_NOMBRE = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        TT_PLACA = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        CT_TIPO = new javax.swing.JComboBox<>();
        jLabel5 = new javax.swing.JLabel();
        TT_MARCA = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        TT_MODELO = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        TT_COLOR = new javax.swing.JTextField();
        jLabel8 = new javax.swing.JLabel();
        CT_SERVICIO = new javax.swing.JComboBox<>();
        jLabel9 = new javax.swing.JLabel();
        TT_EXP = new javax.swing.JTextField();
        jLabel10 = new javax.swing.JLabel();
        TT_CAD = new javax.swing.JTextField();
        BT_REGISTRO = new javax.swing.JButton();
        BT_CITACIONES = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

        jPanel1.setLayout(new java.awt.BorderLayout());

        jPanel2.setBackground(new java.awt.Color(0, 153, 153));
        jPanel2.setPreferredSize(new java.awt.Dimension(400, 50));

        jLabel11.setFont(new java.awt.Font("Tw Cen MT", 3, 18)); // NOI18N
        jLabel11.setForeground(new java.awt.Color(255, 255, 204));
        jLabel11.setText("Ingreso de datos");

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(138, 138, 138)
                .addComponent(jLabel11)
                .addContainerGap(148, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(15, 15, 15)
                .addComponent(jLabel11)
                .addContainerGap(14, Short.MAX_VALUE))
        );

        jPanel1.add(jPanel2, java.awt.BorderLayout.PAGE_START);

        jPanel3.setBackground(new java.awt.Color(102, 255, 204));
        jPanel3.setLayout(new java.awt.GridLayout(11, 2, 10, 10));

        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("Propietario Cedula:");
        jPanel3.add(jLabel1);
        jPanel3.add(TT_CEDULA);

        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel2.setText("Propietario Nombre:");
        jPanel3.add(jLabel2);
        jPanel3.add(TT_NOMBRE);

        jLabel3.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel3.setText("Placa del vehiculo:");
        jPanel3.add(jLabel3);
        jPanel3.add(TT_PLACA);

        jLabel4.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel4.setText("Tipo de vehiculo:");
        jPanel3.add(jLabel4);

        CT_TIPO.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "MOTO", "CARRO", "CAMIONETA", "CAMION", "BUS", "TRAILER" }));
        jPanel3.add(CT_TIPO);

        jLabel5.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel5.setText("Marca del vehiculo:");
        jPanel3.add(jLabel5);
        jPanel3.add(TT_MARCA);

        jLabel6.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel6.setText("Modelo del vehiculo:");
        jPanel3.add(jLabel6);
        jPanel3.add(TT_MODELO);

        jLabel7.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel7.setText("Color del vehiculo:");
        jPanel3.add(jLabel7);
        jPanel3.add(TT_COLOR);

        jLabel8.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel8.setText("Servicio del vehiculo:");
        jPanel3.add(jLabel8);

        CT_SERVICIO.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "PUBLICO", "PRIVADO", "PARTICULAR", "GUBERNAMENTAL" }));
        jPanel3.add(CT_SERVICIO);

        jLabel9.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel9.setText("Fecha de matricula:");
        jPanel3.add(jLabel9);

        TT_EXP.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                TT_EXPActionPerformed(evt);
            }
        });
        jPanel3.add(TT_EXP);

        jLabel10.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel10.setText("Fecha de exp de matricula:");
        jPanel3.add(jLabel10);
        jPanel3.add(TT_CAD);

        BT_REGISTRO.setText("Registrar");
        BT_REGISTRO.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BT_REGISTROActionPerformed(evt);
            }
        });
        jPanel3.add(BT_REGISTRO);

        BT_CITACIONES.setText("Añadir Citaciones");
        BT_CITACIONES.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BT_CITACIONESActionPerformed(evt);
            }
        });
        jPanel3.add(BT_CITACIONES);

        jPanel1.add(jPanel3, java.awt.BorderLayout.CENTER);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 396, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void TT_EXPActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_TT_EXPActionPerformed
    }//GEN-LAST:event_TT_EXPActionPerformed

    private void BT_REGISTROActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BT_REGISTROActionPerformed
        String Cedula = TT_CEDULA.getText();
        String Nombre = TT_NOMBRE.getText();
        String Placa = TT_PLACA.getText();
        String Tipo = CT_TIPO.getSelectedItem().toString();
        String Marca = TT_MARCA.getText();
        String Modelo = TT_MODELO.getText();
        String Color = TT_COLOR.getText();
        String Servicio = CT_SERVICIO.getSelectedItem().toString();
        String Exp = TT_EXP.getText();
        String Cad = TT_CAD.getText();
        if (!Vehiculos.containsKey(Placa)){
            Vehiculos.put(Placa , new Vehiculo(Cedula,Nombre,Placa,Tipo,Marca,Modelo,Color,Servicio,Exp,Cad));
        }
        else {
            
        }
    }//GEN-LAST:event_BT_REGISTROActionPerformed

    private void BT_CITACIONESActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BT_CITACIONESActionPerformed
        Interface_IngCitas a = new Interface_IngCitas(Vehiculos);
        a.setTitle("Ingreso de Datos");
        a.setVisible(true);
    }//GEN-LAST:event_BT_CITACIONESActionPerformed

    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Interface_IngDatos().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton BT_CITACIONES;
    private javax.swing.JButton BT_REGISTRO;
    private javax.swing.JComboBox<String> CT_SERVICIO;
    private javax.swing.JComboBox<String> CT_TIPO;
    private javax.swing.JTextField TT_CAD;
    private javax.swing.JTextField TT_CEDULA;
    private javax.swing.JTextField TT_COLOR;
    private javax.swing.JTextField TT_EXP;
    private javax.swing.JTextField TT_MARCA;
    private javax.swing.JTextField TT_MODELO;
    private javax.swing.JTextField TT_NOMBRE;
    private javax.swing.JTextField TT_PLACA;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    // End of variables declaration//GEN-END:variables
}
