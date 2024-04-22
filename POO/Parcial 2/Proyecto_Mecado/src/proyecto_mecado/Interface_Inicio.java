package proyecto_mecado;
import java.util.HashMap;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.JFreeChart;
import org.jfree.data.general.DefaultPieDataset; 
import org.jfree.chart.plot.PiePlot; 
import org.jfree.chart.ChartFrame;
public class Interface_Inicio extends javax.swing.JFrame {
    public Interface_Inicio() {
        initComponents();
    }
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        PNL_ENCA = new javax.swing.JPanel();
        TEXT_ENC = new javax.swing.JLabel();
        PNL_ING = new javax.swing.JPanel();
        TEXT_ING = new javax.swing.JLabel();
        BT_ING = new javax.swing.JButton();
        PNL_CON = new javax.swing.JPanel();
        TEXT_CON = new javax.swing.JLabel();
        BT_CON = new javax.swing.JButton();
        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        TEXT_GRAF = new javax.swing.JLabel();
        BT_GRAF = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setBackground(new java.awt.Color(0, 153, 153));

        PNL_ENCA.setBackground(new java.awt.Color(0, 0, 51));
        PNL_ENCA.setForeground(new java.awt.Color(0, 204, 204));

        TEXT_ENC.setFont(new java.awt.Font("Tw Cen MT", 3, 18)); // NOI18N
        TEXT_ENC.setForeground(new java.awt.Color(255, 255, 0));
        TEXT_ENC.setText("Bienenido al Sistema de Tus cositas");

        PNL_ING.setBackground(new java.awt.Color(0, 51, 102));

        TEXT_ING.setBackground(new java.awt.Color(0, 102, 102));
        TEXT_ING.setFont(new java.awt.Font("Tw Cen MT", 3, 14)); // NOI18N
        TEXT_ING.setForeground(new java.awt.Color(255, 255, 102));
        TEXT_ING.setText("Ingreso de producto");

        BT_ING.setBackground(new java.awt.Color(0, 153, 153));
        BT_ING.setFont(new java.awt.Font("Tw Cen MT", 3, 14)); // NOI18N
        BT_ING.setText("Ingresar");
        BT_ING.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BT_INGActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout PNL_INGLayout = new javax.swing.GroupLayout(PNL_ING);
        PNL_ING.setLayout(PNL_INGLayout);
        PNL_INGLayout.setHorizontalGroup(
            PNL_INGLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(PNL_INGLayout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(BT_ING)
                .addGap(31, 31, 31))
            .addGroup(PNL_INGLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(TEXT_ING)
                .addContainerGap(20, Short.MAX_VALUE))
        );
        PNL_INGLayout.setVerticalGroup(
            PNL_INGLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(PNL_INGLayout.createSequentialGroup()
                .addGap(15, 15, 15)
                .addComponent(TEXT_ING)
                .addGap(18, 18, 18)
                .addComponent(BT_ING)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        PNL_CON.setBackground(new java.awt.Color(0, 51, 102));

        TEXT_CON.setFont(new java.awt.Font("Tw Cen MT", 3, 14)); // NOI18N
        TEXT_CON.setForeground(new java.awt.Color(255, 255, 102));
        TEXT_CON.setText("Consulta de producto");

        BT_CON.setBackground(new java.awt.Color(0, 153, 153));
        BT_CON.setFont(new java.awt.Font("Tw Cen MT", 3, 14)); // NOI18N
        BT_CON.setText("Ingresar");
        BT_CON.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BT_CONActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout PNL_CONLayout = new javax.swing.GroupLayout(PNL_CON);
        PNL_CON.setLayout(PNL_CONLayout);
        PNL_CONLayout.setHorizontalGroup(
            PNL_CONLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(PNL_CONLayout.createSequentialGroup()
                .addGroup(PNL_CONLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(PNL_CONLayout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(TEXT_CON))
                    .addGroup(PNL_CONLayout.createSequentialGroup()
                        .addGap(31, 31, 31)
                        .addComponent(BT_CON)))
                .addContainerGap(14, Short.MAX_VALUE))
        );
        PNL_CONLayout.setVerticalGroup(
            PNL_CONLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(PNL_CONLayout.createSequentialGroup()
                .addGap(14, 14, 14)
                .addComponent(TEXT_CON)
                .addGap(18, 18, 18)
                .addComponent(BT_CON)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel1.setBackground(new java.awt.Color(0, 51, 102));

        jLabel1.setFont(new java.awt.Font("Tw Cen MT", 3, 14)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 102));
        jLabel1.setText("Consulta de tipo");
        jLabel1.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));

        jButton1.setBackground(new java.awt.Color(0, 153, 153));
        jButton1.setFont(new java.awt.Font("Tw Cen MT", 3, 14)); // NOI18N
        jButton1.setText("Ingresar");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(27, 27, 27)
                        .addComponent(jLabel1))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(36, 36, 36)
                        .addComponent(jButton1)))
                .addContainerGap(27, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap(13, Short.MAX_VALUE)
                .addComponent(jLabel1)
                .addGap(18, 18, 18)
                .addComponent(jButton1)
                .addGap(32, 32, 32))
        );

        jPanel2.setBackground(new java.awt.Color(0, 51, 102));

        TEXT_GRAF.setFont(new java.awt.Font("Tw Cen MT", 3, 14)); // NOI18N
        TEXT_GRAF.setForeground(new java.awt.Color(255, 255, 102));
        TEXT_GRAF.setText("Graficar");

        BT_GRAF.setBackground(new java.awt.Color(0, 153, 153));
        BT_GRAF.setFont(new java.awt.Font("Tw Cen MT", 3, 14)); // NOI18N
        BT_GRAF.setText("Graficar");
        BT_GRAF.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BT_GRAFActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap(36, Short.MAX_VALUE)
                .addComponent(TEXT_GRAF, javax.swing.GroupLayout.PREFERRED_SIZE, 103, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(BT_GRAF)
                .addGap(26, 26, 26))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                .addContainerGap(19, Short.MAX_VALUE)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(TEXT_GRAF)
                    .addComponent(BT_GRAF))
                .addGap(13, 13, 13))
        );

        javax.swing.GroupLayout PNL_ENCALayout = new javax.swing.GroupLayout(PNL_ENCA);
        PNL_ENCA.setLayout(PNL_ENCALayout);
        PNL_ENCALayout.setHorizontalGroup(
            PNL_ENCALayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(PNL_ENCALayout.createSequentialGroup()
                .addGap(12, 12, 12)
                .addComponent(PNL_ING, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(PNL_CON, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, PNL_ENCALayout.createSequentialGroup()
                .addContainerGap(118, Short.MAX_VALUE)
                .addComponent(TEXT_ENC, javax.swing.GroupLayout.PREFERRED_SIZE, 253, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(113, 113, 113))
            .addGroup(PNL_ENCALayout.createSequentialGroup()
                .addGap(114, 114, 114)
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        PNL_ENCALayout.setVerticalGroup(
            PNL_ENCALayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(PNL_ENCALayout.createSequentialGroup()
                .addGap(40, 40, 40)
                .addComponent(TEXT_ENC)
                .addGap(30, 30, 30)
                .addGroup(PNL_ENCALayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(PNL_CON, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(PNL_ING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(36, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(PNL_ENCA, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(PNL_ENCA, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void BT_INGActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BT_INGActionPerformed
        Interface_Ingreso a = new Interface_Ingreso(Inventario);
        a.setVisible(true);
        a.setTitle("Ingreso de datos");
    }//GEN-LAST:event_BT_INGActionPerformed

    private void BT_CONActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BT_CONActionPerformed
        Interfaz_Consulta c = new Interfaz_Consulta(Inventario);
        c.setVisible(true);
        c.setTitle("Consultar de Producto");
    }//GEN-LAST:event_BT_CONActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        Interfaz_Consulta_Tipo d = new Interfaz_Consulta_Tipo(Inventario);
        d.setVisible(true);
        d.setTitle("Consultar de Tipo");
    }//GEN-LAST:event_jButton1ActionPerformed

    private void BT_GRAFActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BT_GRAFActionPerformed
        DefaultPieDataset Grafico = new DefaultPieDataset();
        int li =0;int al=0;int vs=0;int dep=0;int cons=0;int as=0;
        for (Productos producto : Inventario.values()) {
            if (producto.getTipo().equals("Limpieza")) 
                li += producto.getPrecio()*producto.getCantidad();
            if (producto.getTipo().equals("Alimento")) 
                al += producto.getPrecio()*producto.getCantidad();
            if (producto.getTipo().equals("Vestimenta")) 
                vs += producto.getPrecio()*producto.getCantidad();
            if (producto.getTipo().equals("Deporte")) 
                dep += producto.getPrecio()*producto.getCantidad();
            if (producto.getTipo().equals("Construcion")) 
                cons += producto.getPrecio()*producto.getCantidad();
            if (producto.getTipo().equals("Aseo Personal")) 
                as+= producto.getPrecio()*producto.getCantidad();
        }
        Grafico.setValue("Limpieza",li);
        Grafico.setValue("Alimento",al);
        Grafico.setValue("Vestimenta",vs);
        Grafico.setValue("Deporte",dep);
        Grafico.setValue("Construccion",cons);
        Grafico.setValue("Aseo Personal",as);
        JFreeChart grafico=ChartFactory.createPieChart("", Grafico,true,true,true);
        PiePlot P=(PiePlot)grafico.getPlot();
        ChartFrame frame=new ChartFrame("Grafico de pastel",grafico);
        frame.setVisible(true);
        frame.setSize(500,500);
    }//GEN-LAST:event_BT_GRAFActionPerformed

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
            java.util.logging.Logger.getLogger(Interface_Inicio.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Interface_Inicio.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Interface_Inicio.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Interface_Inicio.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Interface_Inicio().setVisible(true);
            }
        });
    }

    /**No tocar*/
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton BT_CON;
    private javax.swing.JButton BT_GRAF;
    private javax.swing.JButton BT_ING;
    private javax.swing.JPanel PNL_CON;
    private javax.swing.JPanel PNL_ENCA;
    private javax.swing.JPanel PNL_ING;
    private javax.swing.JLabel TEXT_CON;
    private javax.swing.JLabel TEXT_ENC;
    private javax.swing.JLabel TEXT_GRAF;
    private javax.swing.JLabel TEXT_ING;
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    // End of variables declaration//GEN-END:variables
    /**Declaro la lista que voy a usar en todo el programa*/
    private HashMap<String,Productos>  Inventario;
}
