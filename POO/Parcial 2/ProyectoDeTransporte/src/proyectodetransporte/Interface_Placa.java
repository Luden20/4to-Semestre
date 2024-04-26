package proyectodetransporte;
import javax.swing.table.DefaultTableModel;
import java.util.LinkedHashMap;
import javax.swing.JOptionPane;
public class Interface_Placa extends javax.swing.JFrame {
    private LinkedHashMap<String, Vehiculo> Vehiculos;
    private  DefaultTableModel TC =new DefaultTableModel();
    public Interface_Placa(LinkedHashMap<String, Vehiculo> vehiculos) {
        this.Vehiculos = vehiculos; 
        initComponents();
        String ids [] = {"Numero Cita","Infraccion","Multa","Fecha","Lugar","Estado"};
        TC.setColumnIdentifiers(ids);
        TB_CITACIONES.setModel(TC);
    }

    private Interface_Placa() {
        throw new UnsupportedOperationException("Not supported yet."); 
    }
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel3 = new javax.swing.JLabel();
        jPanel3 = new javax.swing.JPanel();
        jPanel5 = new javax.swing.JPanel();
        jLabel4 = new javax.swing.JLabel();
        Tabla = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        TB_CITACIONES = new javax.swing.JTable();
        Datos = new javax.swing.JPanel();
        Ingreso_Datos = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        BT_PLACA = new javax.swing.JTextField();
        BT_CONS = new javax.swing.JButton();
        Salida_Datos = new javax.swing.JPanel();
        TT_PROP = new javax.swing.JLabel();
        TT_CED = new javax.swing.JLabel();
        TT_PLACA = new javax.swing.JLabel();
        TT_MODELO = new javax.swing.JLabel();
        TT_MARCA = new javax.swing.JLabel();
        TT_COLOR = new javax.swing.JLabel();
        TT_SERVICIO = new javax.swing.JLabel();
        TT_TIPO = new javax.swing.JLabel();
        TT_EXP = new javax.swing.JLabel();
        TT_CAD = new javax.swing.JLabel();

        jLabel3.setText("jLabel3");

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

        jPanel3.setLayout(new java.awt.BorderLayout());

        jPanel5.setBackground(new java.awt.Color(0, 102, 0));
        jPanel5.setPreferredSize(new java.awt.Dimension(735, 50));

        jLabel4.setFont(new java.awt.Font("Tw Cen MT", 3, 18)); // NOI18N
        jLabel4.setForeground(new java.awt.Color(255, 255, 204));
        jLabel4.setText("Consulta de Citaciones");

        javax.swing.GroupLayout jPanel5Layout = new javax.swing.GroupLayout(jPanel5);
        jPanel5.setLayout(jPanel5Layout);
        jPanel5Layout.setHorizontalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel5Layout.createSequentialGroup()
                .addGap(264, 264, 264)
                .addComponent(jLabel4)
                .addContainerGap(309, Short.MAX_VALUE))
        );
        jPanel5Layout.setVerticalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel5Layout.createSequentialGroup()
                .addGap(14, 14, 14)
                .addComponent(jLabel4)
                .addContainerGap(15, Short.MAX_VALUE))
        );

        jPanel3.add(jPanel5, java.awt.BorderLayout.PAGE_START);

        Tabla.setBackground(new java.awt.Color(0, 153, 153));

        jScrollPane1.setBackground(new java.awt.Color(0, 102, 102));

        TB_CITACIONES.setBackground(new java.awt.Color(51, 255, 204));
        TB_CITACIONES.setFont(new java.awt.Font("Tw Cen MT", 2, 12)); // NOI18N
        TB_CITACIONES.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null}
            },
            new String [] {
                "Numero Citacion", "Infraccion Citacion", "Multa", "Fecha", "Lugar", "Estado"
            }
        ));
        TB_CITACIONES.setPreferredSize(new java.awt.Dimension(150, 200));
        jScrollPane1.setViewportView(TB_CITACIONES);

        javax.swing.GroupLayout TablaLayout = new javax.swing.GroupLayout(Tabla);
        Tabla.setLayout(TablaLayout);
        TablaLayout.setHorizontalGroup(
            TablaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(TablaLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 375, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        TablaLayout.setVerticalGroup(
            TablaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(TablaLayout.createSequentialGroup()
                .addGap(51, 51, 51)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 222, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(65, Short.MAX_VALUE))
        );

        jPanel3.add(Tabla, java.awt.BorderLayout.LINE_END);

        Datos.setBackground(new java.awt.Color(153, 255, 153));
        Datos.setLayout(new java.awt.GridLayout(2, 3, 10, 10));

        Ingreso_Datos.setBackground(new java.awt.Color(153, 255, 153));
        Ingreso_Datos.setLayout(new java.awt.GridLayout(1, 3, 1, 1));

        jLabel1.setBackground(new java.awt.Color(153, 255, 153));
        jLabel1.setFont(new java.awt.Font("Tw Cen MT", 3, 14)); // NOI18N
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("  Placa del Vehiculo");
        Ingreso_Datos.add(jLabel1);

        BT_PLACA.setFont(new java.awt.Font("Tw Cen MT", 2, 12)); // NOI18N
        Ingreso_Datos.add(BT_PLACA);

        BT_CONS.setBackground(new java.awt.Color(204, 255, 204));
        BT_CONS.setFont(new java.awt.Font("Tw Cen MT", 3, 14)); // NOI18N
        BT_CONS.setText("Consultar");
        BT_CONS.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BT_CONSActionPerformed(evt);
            }
        });
        Ingreso_Datos.add(BT_CONS);

        Datos.add(Ingreso_Datos);

        Salida_Datos.setBackground(new java.awt.Color(153, 255, 204));
        Salida_Datos.setLayout(new java.awt.GridLayout(5, 2));

        TT_PROP.setText("Propietario:");
        Salida_Datos.add(TT_PROP);

        TT_CED.setText("Cedula:");
        Salida_Datos.add(TT_CED);

        TT_PLACA.setText("Placa:");
        Salida_Datos.add(TT_PLACA);

        TT_MODELO.setText("Modelo:");
        Salida_Datos.add(TT_MODELO);

        TT_MARCA.setText("Marca:");
        Salida_Datos.add(TT_MARCA);

        TT_COLOR.setText("Color:");
        Salida_Datos.add(TT_COLOR);

        TT_SERVICIO.setText("Servicio:");
        Salida_Datos.add(TT_SERVICIO);

        TT_TIPO.setText("Tipo:");
        Salida_Datos.add(TT_TIPO);

        TT_EXP.setText("Fecha exp:");
        Salida_Datos.add(TT_EXP);

        TT_CAD.setText("Fecha cad:");
        Salida_Datos.add(TT_CAD);

        Datos.add(Salida_Datos);

        jPanel3.add(Datos, java.awt.BorderLayout.CENTER);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, 731, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void BT_CONSActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BT_CONSActionPerformed
        if (Vehiculos.containsKey(BT_PLACA.getText())){
            Vehiculo Carro = Vehiculos.get(BT_PLACA.getText());
            TT_PROP.setText("Propietario: " + Carro.getNombre());
            TT_CED.setText("Cédula: " + Carro.getCedula());
            TT_PLACA.setText("Placa: " + Carro.getPlaca());
            TT_TIPO.setText("Tipo: " + Carro.getTipoVehiculo());
            TT_MARCA.setText("Marca: " + Carro.getMarca());
            TT_MODELO.setText("Modelo: " + Carro.getModelo());
            TT_COLOR.setText("Color: " + Carro.getColor());
            TT_SERVICIO.setText("Servicio: " + Carro.getServicio());
            TT_EXP.setText("Fecha exp: " + Carro.getFecha());
            TT_CAD.setText("Fecha cad: " + Carro.getFechaCaducidadMat());
            LinkedHashMap<String,Citacion> ListaCitaciones = Carro.getListaCitaciones();
            for(Citacion Citaciones : ListaCitaciones.values()){
                TC.addRow(new Object[]{Citaciones.getNumCitacion(),Citaciones.getInfraccion(),Citaciones.getMulta(),Citaciones.getFecha(),Citaciones.getLugar(),Citaciones.getEstado()});
            }
        }
        else {
             JOptionPane.showMessageDialog(this,"Numero de placa no registrado", "Error", JOptionPane.ERROR_MESSAGE);
        }
    }//GEN-LAST:event_BT_CONSActionPerformed

    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Interface_Placa().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton BT_CONS;
    private javax.swing.JTextField BT_PLACA;
    private javax.swing.JPanel Datos;
    private javax.swing.JPanel Ingreso_Datos;
    private javax.swing.JPanel Salida_Datos;
    private javax.swing.JTable TB_CITACIONES;
    private javax.swing.JLabel TT_CAD;
    private javax.swing.JLabel TT_CED;
    private javax.swing.JLabel TT_COLOR;
    private javax.swing.JLabel TT_EXP;
    private javax.swing.JLabel TT_MARCA;
    private javax.swing.JLabel TT_MODELO;
    private javax.swing.JLabel TT_PLACA;
    private javax.swing.JLabel TT_PROP;
    private javax.swing.JLabel TT_SERVICIO;
    private javax.swing.JLabel TT_TIPO;
    private javax.swing.JPanel Tabla;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JScrollPane jScrollPane1;
    // End of variables declaration//GEN-END:variables

    void size(int i, int i0) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
