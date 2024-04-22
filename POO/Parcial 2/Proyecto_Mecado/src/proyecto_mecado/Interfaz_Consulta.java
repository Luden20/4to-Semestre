package proyecto_mecado;
import java.util.HashMap;
import javax.swing.JOptionPane;
public class Interfaz_Consulta extends javax.swing.JFrame {
    HashMap<String,Productos>  Inventario ;
    public Interfaz_Consulta(HashMap Inventario) {
        this.Inventario = Inventario;
        initComponents();
    }

    private Interfaz_Consulta() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jInternalFrame1 = new javax.swing.JInternalFrame();
        jPanel1 = new javax.swing.JPanel();
        PNL_ENCA = new javax.swing.JPanel();
        TEXT_ENCA = new javax.swing.JLabel();
        TEXT_CODBUS = new javax.swing.JLabel();
        BT_CODBUS = new javax.swing.JTextField();
        PNL_DATOS = new javax.swing.JPanel();
        TEXT_COD = new javax.swing.JLabel();
        TEXT_NOM = new javax.swing.JLabel();
        TEXT_TIP = new javax.swing.JLabel();
        TEXT_PREC = new javax.swing.JLabel();
        TEXT_CANT = new javax.swing.JLabel();
        BT_BUSCAR = new javax.swing.JButton();

        jInternalFrame1.setVisible(true);

        javax.swing.GroupLayout jInternalFrame1Layout = new javax.swing.GroupLayout(jInternalFrame1.getContentPane());
        jInternalFrame1.getContentPane().setLayout(jInternalFrame1Layout);
        jInternalFrame1Layout.setHorizontalGroup(
            jInternalFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 0, Short.MAX_VALUE)
        );
        jInternalFrame1Layout.setVerticalGroup(
            jInternalFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 0, Short.MAX_VALUE)
        );

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

        jPanel1.setBackground(new java.awt.Color(255, 153, 102));

        PNL_ENCA.setBackground(new java.awt.Color(255, 153, 153));
        PNL_ENCA.setForeground(new java.awt.Color(242, 242, 242));

        TEXT_ENCA.setFont(new java.awt.Font("Tw Cen MT", 2, 18)); // NOI18N
        TEXT_ENCA.setText("Consulta de Productos");

        TEXT_CODBUS.setFont(new java.awt.Font("Tw Cen MT", 2, 12)); // NOI18N
        TEXT_CODBUS.setText("Codigo del producto");

        BT_CODBUS.setFont(new java.awt.Font("Tw Cen MT", 2, 12)); // NOI18N
        BT_CODBUS.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BT_CODBUSActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout PNL_ENCALayout = new javax.swing.GroupLayout(PNL_ENCA);
        PNL_ENCA.setLayout(PNL_ENCALayout);
        PNL_ENCALayout.setHorizontalGroup(
            PNL_ENCALayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(PNL_ENCALayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(TEXT_CODBUS, javax.swing.GroupLayout.PREFERRED_SIZE, 110, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 41, Short.MAX_VALUE)
                .addComponent(BT_CODBUS, javax.swing.GroupLayout.PREFERRED_SIZE, 136, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, PNL_ENCALayout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(TEXT_ENCA)
                .addGap(64, 64, 64))
        );
        PNL_ENCALayout.setVerticalGroup(
            PNL_ENCALayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(PNL_ENCALayout.createSequentialGroup()
                .addGap(10, 10, 10)
                .addComponent(TEXT_ENCA)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(PNL_ENCALayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(PNL_ENCALayout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(BT_CODBUS, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(PNL_ENCALayout.createSequentialGroup()
                        .addComponent(TEXT_CODBUS, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGap(3, 3, 3)))
                .addContainerGap())
        );

        PNL_DATOS.setBackground(new java.awt.Color(255, 153, 153));

        TEXT_COD.setFont(new java.awt.Font("Tw Cen MT", 2, 12)); // NOI18N
        TEXT_COD.setText("Codigo: ");

        TEXT_NOM.setFont(new java.awt.Font("Tw Cen MT", 2, 12)); // NOI18N
        TEXT_NOM.setText("Nombre:");

        TEXT_TIP.setFont(new java.awt.Font("Tw Cen MT", 2, 12)); // NOI18N
        TEXT_TIP.setText("Tipo:");

        TEXT_PREC.setFont(new java.awt.Font("Tw Cen MT", 2, 12)); // NOI18N
        TEXT_PREC.setText("Precio:");

        TEXT_CANT.setFont(new java.awt.Font("Tw Cen MT", 2, 12)); // NOI18N
        TEXT_CANT.setText("Cantidad:");

        javax.swing.GroupLayout PNL_DATOSLayout = new javax.swing.GroupLayout(PNL_DATOS);
        PNL_DATOS.setLayout(PNL_DATOSLayout);
        PNL_DATOSLayout.setHorizontalGroup(
            PNL_DATOSLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(PNL_DATOSLayout.createSequentialGroup()
                .addGap(20, 20, 20)
                .addGroup(PNL_DATOSLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(TEXT_CANT, javax.swing.GroupLayout.DEFAULT_SIZE, 157, Short.MAX_VALUE)
                    .addComponent(TEXT_COD, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(TEXT_NOM, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(TEXT_TIP, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(TEXT_PREC, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap(24, Short.MAX_VALUE))
        );
        PNL_DATOSLayout.setVerticalGroup(
            PNL_DATOSLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(PNL_DATOSLayout.createSequentialGroup()
                .addGap(17, 17, 17)
                .addComponent(TEXT_COD)
                .addGap(18, 18, 18)
                .addComponent(TEXT_NOM)
                .addGap(18, 18, 18)
                .addComponent(TEXT_TIP)
                .addGap(18, 18, 18)
                .addComponent(TEXT_PREC)
                .addGap(18, 18, 18)
                .addComponent(TEXT_CANT)
                .addContainerGap(22, Short.MAX_VALUE))
        );

        BT_BUSCAR.setBackground(new java.awt.Color(255, 204, 102));
        BT_BUSCAR.setFont(new java.awt.Font("Tw Cen MT", 3, 14)); // NOI18N
        BT_BUSCAR.setText("Buscar");
        BT_BUSCAR.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BT_BUSCARActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(29, 29, 29)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(PNL_ENCA, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(PNL_DATOS, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(BT_BUSCAR, javax.swing.GroupLayout.PREFERRED_SIZE, 85, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(19, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(18, 18, 18)
                .addComponent(PNL_ENCA, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(27, 27, 27)
                        .addComponent(PNL_DATOS, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(107, 107, 107)
                        .addComponent(BT_BUSCAR)))
                .addContainerGap(40, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void BT_CODBUSActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BT_CODBUSActionPerformed

    }//GEN-LAST:event_BT_CODBUSActionPerformed

    private void BT_BUSCARActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BT_BUSCARActionPerformed
            String Cod = BT_CODBUS.getText();
            if (Inventario.containsKey(Cod)==true)
            {
                Productos Producto = Inventario.get(Cod);
                TEXT_COD.setText("Codigo:" + Producto.getCodigo());
                TEXT_NOM.setText("Nombre:" + Producto.getNombre());
                TEXT_TIP.setText("Tipo:" + Producto.getTipo());
                TEXT_PREC.setText("Precio:" + Producto.getPrecio());
                TEXT_CANT.setText("Cantidad:" + Producto.getCantidad());
            }
            else 
                 JOptionPane.showMessageDialog(this,"Producto no registrado, porfavor vuelva a intentar con otro", "Error", JOptionPane.ERROR_MESSAGE);
    }//GEN-LAST:event_BT_BUSCARActionPerformed

    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Interfaz_Consulta().setVisible(true);
            }
        });
    }

    /**No tocar*/
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton BT_BUSCAR;
    private javax.swing.JTextField BT_CODBUS;
    private javax.swing.JPanel PNL_DATOS;
    private javax.swing.JPanel PNL_ENCA;
    private javax.swing.JLabel TEXT_CANT;
    private javax.swing.JLabel TEXT_COD;
    private javax.swing.JLabel TEXT_CODBUS;
    private javax.swing.JLabel TEXT_ENCA;
    private javax.swing.JLabel TEXT_NOM;
    private javax.swing.JLabel TEXT_PREC;
    private javax.swing.JLabel TEXT_TIP;
    private javax.swing.JInternalFrame jInternalFrame1;
    private javax.swing.JPanel jPanel1;
    // End of variables declaration//GEN-END:variables
}
