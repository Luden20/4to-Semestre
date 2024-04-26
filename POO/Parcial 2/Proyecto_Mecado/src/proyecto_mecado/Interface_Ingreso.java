package proyecto_mecado;
import java.util.HashMap;
import javax.swing.JOptionPane;
public class Interface_Ingreso extends javax.swing.JFrame {
    /**Declaro la lista que voy a usar en todo el programa*/
    private HashMap<String,Productos>  Inventario;

    public Interface_Ingreso(HashMap Inventario) {
        this.Inventario = Inventario;
        initComponents();
    }

    private Interface_Ingreso() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    /** No tocar*/
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        TEXT_ENCA = new javax.swing.JLabel();
        TEXT_COD = new javax.swing.JLabel();
        BT_COD = new javax.swing.JTextField();
        TEXT_NOM = new javax.swing.JLabel();
        BT_NOM = new javax.swing.JTextField();
        TEXT_TIPO = new javax.swing.JLabel();
        BT_TIPO = new javax.swing.JComboBox<>();
        TEXT_PRECIO = new javax.swing.JLabel();
        BT_PRECIO = new javax.swing.JTextField();
        TEXT_CANT = new javax.swing.JLabel();
        BT_CANT = new javax.swing.JTextField();
        BT_APLICAR = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

        jPanel1.setBackground(new java.awt.Color(204, 255, 204));
        jPanel1.setForeground(new java.awt.Color(204, 255, 204));

        TEXT_ENCA.setBackground(new java.awt.Color(0, 0, 153));
        TEXT_ENCA.setFont(new java.awt.Font("Tw Cen MT", 3, 14)); // NOI18N
        TEXT_ENCA.setForeground(new java.awt.Color(104, 0, 153));
        TEXT_ENCA.setText("Ingreso de datos");
        TEXT_ENCA.setToolTipText("");

        TEXT_COD.setFont(new java.awt.Font("Tw Cen MT", 2, 12)); // NOI18N
        TEXT_COD.setForeground(new java.awt.Color(204, 0, 204));
        TEXT_COD.setText("Codigo del producto");

        BT_COD.setFont(new java.awt.Font("Tw Cen MT", 2, 12)); // NOI18N
        BT_COD.setForeground(new java.awt.Color(102, 0, 102));
        BT_COD.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BT_CODActionPerformed(evt);
            }
        });

        TEXT_NOM.setFont(new java.awt.Font("Tw Cen MT", 2, 12)); // NOI18N
        TEXT_NOM.setForeground(new java.awt.Color(204, 0, 204));
        TEXT_NOM.setText("Nombre del producto");

        BT_NOM.setFont(new java.awt.Font("Tw Cen MT", 2, 12)); // NOI18N
        BT_NOM.setForeground(new java.awt.Color(102, 0, 102));

        TEXT_TIPO.setFont(new java.awt.Font("Tw Cen MT", 2, 12)); // NOI18N
        TEXT_TIPO.setForeground(new java.awt.Color(204, 0, 204));
        TEXT_TIPO.setText("Tipo de producto");

        BT_TIPO.setFont(new java.awt.Font("Tw Cen MT", 2, 12)); // NOI18N
        BT_TIPO.setForeground(new java.awt.Color(102, 0, 102));
        BT_TIPO.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Limpieza", "Alimento", "Vestimenta", "Deporte", "Construcion", "Aseo Personal", " " }));

        TEXT_PRECIO.setFont(new java.awt.Font("Tw Cen MT", 2, 12)); // NOI18N
        TEXT_PRECIO.setForeground(new java.awt.Color(204, 0, 204));
        TEXT_PRECIO.setText("Precio del producto");

        BT_PRECIO.setFont(new java.awt.Font("Tw Cen MT", 2, 12)); // NOI18N
        BT_PRECIO.setForeground(new java.awt.Color(102, 0, 102));
        BT_PRECIO.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BT_PRECIOActionPerformed(evt);
            }
        });

        TEXT_CANT.setFont(new java.awt.Font("Tw Cen MT", 2, 12)); // NOI18N
        TEXT_CANT.setForeground(new java.awt.Color(204, 0, 204));
        TEXT_CANT.setText("Cantidad en existencia");

        BT_CANT.setFont(new java.awt.Font("Tw Cen MT", 2, 12)); // NOI18N
        BT_CANT.setForeground(new java.awt.Color(102, 0, 102));

        BT_APLICAR.setBackground(new java.awt.Color(153, 255, 153));
        BT_APLICAR.setFont(new java.awt.Font("Tw Cen MT", 3, 14)); // NOI18N
        BT_APLICAR.setForeground(new java.awt.Color(102, 0, 102));
        BT_APLICAR.setText("GUARDAR");
        BT_APLICAR.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BT_APLICARActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(16, 16, 16)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(TEXT_CANT, javax.swing.GroupLayout.DEFAULT_SIZE, 122, Short.MAX_VALUE)
                    .addComponent(TEXT_PRECIO, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(TEXT_NOM, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(TEXT_TIPO, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(TEXT_COD, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 51, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(BT_NOM, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(BT_COD, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(BT_TIPO, javax.swing.GroupLayout.PREFERRED_SIZE, 119, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(BT_PRECIO, javax.swing.GroupLayout.PREFERRED_SIZE, 119, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(BT_CANT, javax.swing.GroupLayout.PREFERRED_SIZE, 119, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(31, 31, 31))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(120, 120, 120)
                        .addComponent(TEXT_ENCA, javax.swing.GroupLayout.PREFERRED_SIZE, 99, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(117, 117, 117)
                        .addComponent(BT_APLICAR)))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(26, 26, 26)
                .addComponent(TEXT_ENCA)
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(BT_COD, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(TEXT_COD, javax.swing.GroupLayout.PREFERRED_SIZE, 27, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(TEXT_NOM)
                    .addComponent(BT_NOM, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(20, 20, 20)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(BT_TIPO)
                    .addComponent(TEXT_TIPO, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(BT_PRECIO, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(TEXT_PRECIO))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(TEXT_CANT)
                    .addComponent(BT_CANT, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(30, 30, 30)
                .addComponent(BT_APLICAR)
                .addContainerGap(28, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    
    
    /**De mas*/
    private void BT_CODActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BT_CODActionPerformed

    }//GEN-LAST:event_BT_CODActionPerformed
    private void BT_PRECIOActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BT_PRECIOActionPerformed

    }//GEN-LAST:event_BT_PRECIOActionPerformed

    private void BT_APLICARActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BT_APLICARActionPerformed
        String Cod=BT_COD.getText();
        if (Inventario.containsKey(Cod)==false)
        {
            if ((!"".equals(BT_NOM.getText()))&&(Double.valueOf(BT_PRECIO.getText())!=null)&&(Double.valueOf(BT_CANT.getText())!=null))
            {
                Inventario.put(Cod,new Productos (Cod,BT_NOM.getText(),BT_TIPO.getSelectedItem().toString(),Double.parseDouble(BT_PRECIO.getText()),Double.parseDouble(BT_CANT.getText())));
            }
            else 
                 JOptionPane.showMessageDialog(this,"Algun parametro se encuentra vacio", "Error", JOptionPane.ERROR_MESSAGE);
        }
        else
             JOptionPane.showMessageDialog(this,"Ese producto ya se encuentra registrado", "Error", JOptionPane.ERROR_MESSAGE);
        Blanquear();
    }//GEN-LAST:event_BT_APLICARActionPerformed
    public void Blanquear(){
        BT_COD.setText("");
        BT_NOM.setText("");
        BT_PRECIO.setText("");
        BT_CANT.setText("");
    }
    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(() -> {
            new Interface_Ingreso().setVisible(true);
        });
    }
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton BT_APLICAR;
    private javax.swing.JTextField BT_CANT;
    private javax.swing.JTextField BT_COD;
    private javax.swing.JTextField BT_NOM;
    private javax.swing.JTextField BT_PRECIO;
    private javax.swing.JComboBox<String> BT_TIPO;
    private javax.swing.JLabel TEXT_CANT;
    private javax.swing.JLabel TEXT_COD;
    private javax.swing.JLabel TEXT_ENCA;
    private javax.swing.JLabel TEXT_NOM;
    private javax.swing.JLabel TEXT_PRECIO;
    private javax.swing.JLabel TEXT_TIPO;
    private javax.swing.JPanel jPanel1;
    // End of variables declaration//GEN-END:variables
}
