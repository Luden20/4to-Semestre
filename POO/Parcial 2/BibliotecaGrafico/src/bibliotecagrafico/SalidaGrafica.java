package bibliotecagrafico;
import java.util.LinkedHashMap;
import javax.swing.JOptionPane;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.JFreeChart;
import org.jfree.data.general.DefaultPieDataset; 
import org.jfree.chart.plot.PiePlot; 
import org.jfree.chart.ChartFrame;
import org.jfree.data.category.DefaultCategoryDataset;

public class SalidaGrafica extends javax.swing.JFrame 
{

    public SalidaGrafica() 
    {
        initComponents();
        /**Inicializacion del inventario y contadores necesarios*/
        InventarioBiblioteca = new LinkedHashMap<String, Libro>();
        Accion = 0;
        CienciaFiccion = 0;
        Romance = 0;
        Fantasia = 0;
        Terror = 0;
        Poesia = 0;
        Misterio = 0;
        
      

    }


    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        TFCodigo = new javax.swing.JTextField();
        TFTitulo = new javax.swing.JTextField();
        TFAutor = new javax.swing.JTextField();
        TFPublicacion = new javax.swing.JTextField();
        TFEditorial = new javax.swing.JTextField();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        TFBuscar = new javax.swing.JTextField();
        LRTitulo = new javax.swing.JLabel();
        LRAutor = new javax.swing.JLabel();
        LRPublicacion = new javax.swing.JLabel();
        LREditorial = new javax.swing.JLabel();
        LRGenero = new javax.swing.JLabel();
        BotonBusqueda = new javax.swing.JButton();
        CBGenero = new javax.swing.JComboBox<>();
        BotonPastel = new javax.swing.JButton();
        BotonBarras = new javax.swing.JButton();
        BotonDatos = new javax.swing.JButton();
        BotonIngresoo = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
        jLabel1.setText("Ingreso de Libro");

        jLabel2.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
        jLabel2.setText("Codigo:");

        jLabel3.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
        jLabel3.setText("Titulo:");

        jLabel4.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
        jLabel4.setText("Autor:");

        jLabel5.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
        jLabel5.setText("Publicacion:");

        jLabel6.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
        jLabel6.setText("Editorial:");

        jLabel7.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
        jLabel7.setText("Genero:");

        TFCodigo.setBackground(new java.awt.Color(75, 208, 149));
        TFCodigo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                TFCodigoActionPerformed(evt);
            }
        });

        TFTitulo.setBackground(new java.awt.Color(75, 208, 149));

        TFAutor.setBackground(new java.awt.Color(75, 208, 149));

        TFPublicacion.setBackground(new java.awt.Color(75, 208, 149));

        TFEditorial.setBackground(new java.awt.Color(75, 208, 149));

        jLabel8.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
        jLabel8.setText("Busqueda de Libro");

        jLabel9.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
        jLabel9.setText("Ingreso del Codigo");

        TFBuscar.setBackground(new java.awt.Color(75, 208, 149));
        TFBuscar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                TFBuscarActionPerformed(evt);
            }
        });

        LRTitulo.setText("Titulo");

        LRAutor.setText("Autor");

        LRPublicacion.setText("Publicacion");

        LREditorial.setText("Editorial");

        LRGenero.setText("Genero");

        BotonBusqueda.setBackground(new java.awt.Color(7, 50, 66));
        BotonBusqueda.setForeground(new java.awt.Color(255, 255, 255));
        BotonBusqueda.setText("Nueva Busqueda");
        BotonBusqueda.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BotonBusquedaActionPerformed(evt);
            }
        });

        CBGenero.setBackground(new java.awt.Color(75, 208, 149));
        CBGenero.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "(Seleccionar Genero)", "Accion", "Ciencia Ficcion", "Romance", "Fantasia", "Terror", "Poesia", "Misterio" }));
        CBGenero.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                CBGeneroActionPerformed(evt);
            }
        });

        BotonPastel.setBackground(new java.awt.Color(7, 50, 66));
        BotonPastel.setForeground(new java.awt.Color(255, 255, 255));
        BotonPastel.setText("Ver Pastel");
        BotonPastel.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BotonPastelActionPerformed(evt);
            }
        });

        BotonBarras.setBackground(new java.awt.Color(7, 50, 66));
        BotonBarras.setForeground(new java.awt.Color(255, 255, 255));
        BotonBarras.setText("Ver Barras");
        BotonBarras.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BotonBarrasActionPerformed(evt);
            }
        });

        BotonDatos.setBackground(new java.awt.Color(7, 50, 66));
        BotonDatos.setForeground(new java.awt.Color(255, 255, 255));
        BotonDatos.setText("Ver Datos");
        BotonDatos.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BotonDatosActionPerformed(evt);
            }
        });

        BotonIngresoo.setBackground(new java.awt.Color(7, 50, 66));
        BotonIngresoo.setForeground(new java.awt.Color(255, 255, 255));
        BotonIngresoo.setText("Ingreso");
        BotonIngresoo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BotonIngresooActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(50, 50, 50)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel1)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel2)
                            .addComponent(jLabel3)
                            .addComponent(jLabel4)
                            .addComponent(jLabel5)
                            .addComponent(jLabel6)
                            .addComponent(jLabel7))
                        .addGap(61, 61, 61)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(TFCodigo)
                            .addComponent(TFTitulo)
                            .addComponent(TFAutor)
                            .addComponent(TFPublicacion)
                            .addComponent(TFEditorial)
                            .addComponent(CBGenero, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addComponent(BotonIngresoo))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 43, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(BotonBusqueda)
                    .addComponent(LRTitulo)
                    .addComponent(LRAutor)
                    .addComponent(LRPublicacion)
                    .addComponent(LREditorial)
                    .addComponent(LRGenero)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel9)
                        .addGap(18, 18, 18)
                        .addComponent(TFBuscar, javax.swing.GroupLayout.PREFERRED_SIZE, 99, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(jLabel8))
                .addGap(71, 71, 71))
            .addGroup(layout.createSequentialGroup()
                .addGap(110, 110, 110)
                .addComponent(BotonDatos)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(BotonPastel)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(BotonBarras)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(20, 20, 20)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(jLabel8))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(TFCodigo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel9)
                    .addComponent(TFBuscar, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(TFTitulo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(LRTitulo))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(TFAutor, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(LRAutor))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel5)
                    .addComponent(TFPublicacion, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(LRPublicacion))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel6)
                    .addComponent(TFEditorial, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(LREditorial))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel7)
                    .addComponent(CBGenero, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(LRGenero))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 35, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(BotonBusqueda)
                    .addComponent(BotonIngresoo))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(BotonPastel)
                    .addComponent(BotonBarras)
                    .addComponent(BotonDatos))
                .addGap(26, 26, 26))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void TFCodigoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_TFCodigoActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_TFCodigoActionPerformed

    private void BotonBusquedaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BotonBusquedaActionPerformed
        // TODO add your handling code here:
        /**Verificar si el campo de la busqueda no esta vacio*/
        if (!TFBuscar.getText().isEmpty()) 
        {
            /**Obtencion del codigo a buscar*/
            String codigoBuscado = TFBuscar.getText();
            /**Busqueda por codigo*/
            Libro libroEncontrado = buscarLibroPorCodigo(codigoBuscado);
               
            /**Se encuentra el libro*/
            if (libroEncontrado != null) 
            {
                LRTitulo.setText("Titulo: " + libroEncontrado.getTitulo());
                LRAutor.setText("Autor: " + libroEncontrado.getAutor());
                LRPublicacion.setText("Publicacion: " + libroEncontrado.getFecha_Publicacion());
                LREditorial.setText("Editorial: " + libroEncontrado.getEditorial());
                LRGenero.setText("Genero: " + libroEncontrado.getGenero());
            } 
            /**No se encuentra el libro*/
            else 
            {
                JOptionPane.showMessageDialog(this, "El libro no fue encontrado", "Error", JOptionPane.ERROR_MESSAGE);
            }
        } 
        /**Error en caso de tener el campo vacio*/
        else 
        {
            JOptionPane.showMessageDialog(this, "Ingrese un Codigo Valido", "Error", JOptionPane.ERROR_MESSAGE);
        }
    }//GEN-LAST:event_BotonBusquedaActionPerformed

    private void TFBuscarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_TFBuscarActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_TFBuscarActionPerformed

    private void CBGeneroActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_CBGeneroActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_CBGeneroActionPerformed

    private void BotonPastelActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BotonPastelActionPerformed
        // TODO add your handling code here:
        graficoPastel();
    }//GEN-LAST:event_BotonPastelActionPerformed

    private void BotonBarrasActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BotonBarrasActionPerformed
        // TODO add your handling code here:
        graficoBarras();
    }//GEN-LAST:event_BotonBarrasActionPerformed

    private void BotonDatosActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BotonDatosActionPerformed
        // TODO add your handling code here:
        verDatos();
    }//GEN-LAST:event_BotonDatosActionPerformed

    private void BotonIngresooActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BotonIngresooActionPerformed
        // TODO add your handling code here:
                /**Verificacion si los campos son validos*/
        if(validar())
        {
            /**Verificacion si el libro existe*/
            if (existe(TFCodigo.getText()))
            {
                /**Error en caso de existir*/
                JOptionPane.showMessageDialog(this,"El libro ya Esta Registado", "Error", JOptionPane.ERROR_MESSAGE);
                reset();
            }
            else
            {   
                /**Se crea y añade un nuevo libro*/
                System.out.println("Se ingresó " + new Libro(TFCodigo.getText(), CBGenero.getSelectedItem().toString(), TFTitulo.getText(), TFAutor.getText(), TFPublicacion.getText(), TFEditorial.getText()).toString());
                InventarioBiblioteca.put(TFCodigo.getText(), new Libro(TFCodigo.getText(), TFTitulo.getText(), TFAutor.getText(), TFPublicacion.getText(), TFEditorial.getText(), CBGenero.getSelectedItem().toString()));
                /**Actualizacion de cantidades y limpieza de campos*/
                cantidades(CBGenero.getSelectedItem().toString());
                reset();  
            }
        }
        else
        {
            /**Error si los campos no estan completos*/
            JOptionPane.showMessageDialog(this,"Ingrese los datos correctamente", "Error",JOptionPane.ERROR_MESSAGE);
        }
    }//GEN-LAST:event_BotonIngresooActionPerformed


    // Funciones adicionales
    
    /**Verificacion si los campos de busqueda estan complestos*/
    public boolean validar()
    {
        return !"".equals(TFCodigo.getText())&&!"".equals(TFTitulo.getText())&&!"".equals(TFAutor.getText())&&!"".equals(TFEditorial.getText());
    }
    
    /**Verificacion si ya existe en el inventario*/
    public boolean existe(String TFCodigo)
    {
        return InventarioBiblioteca.containsKey(TFCodigo);
    }
    
    /**Reestablecer todos los campos de Busqueda*/
    public void reset()
    {
        TFCodigo.setText("");
        TFTitulo.setText("");
        TFAutor.setText("");
        TFPublicacion.setText("");
        TFEditorial.setText("");
        CBGenero.setSelectedIndex(0);
    }
    
    /**Contar las cantidades para los graficos*/
    private void cantidades (String genero)
    {
        //Uso del Rule Switch mediante switch expressions
        switch (genero)
        {
            case "Accion" -> Accion++;
            case "Ciencia Ficcion" -> CienciaFiccion++;
            case "Romance" -> Romance++;
            case "Fantasia" -> Fantasia++;
            case "Terror" -> Terror++;
            case "Poesia" -> Poesia++;
            case "Misterio" -> Misterio++;
        }
    }
    
    /**Buscar libro por su codigo para aumentarlo en el inventario*/
    public Libro BusquedaLibro (String Codigo)
    {
        Libro auxiliar = InventarioBiblioteca.get(Codigo);
        if (auxiliar != null)
        {
            return auxiliar;
        }
        /**En caso de no existir, se crea uno nuevo con los parametros especificados*/
        return new Libro(TFCodigo.getText(), CBGenero.getSelectedItem().toString(), TFTitulo.getText(), TFAutor.getText(), TFPublicacion.getText(), TFEditorial.getText());
    }
    
    /**Creacion del grafico de barras*/
    public void graficoBarras() 
    {
        /**Creacion del conjunto de datos*/
        DefaultCategoryDataset datos = new DefaultCategoryDataset();
        datos.addValue(Accion, "Accio", "Accion");
        datos.addValue(CienciaFiccion, "Ciencia Ficcion", "Ciencia Ficcion");
        datos.addValue(Romance, "Romance", "Romance");
        datos.addValue(Fantasia, "Fantasia", "Fantasia");
        datos.addValue(Terror, "Terror", "Terror");
        datos.addValue(Poesia, "Poesia", "Poesia");
        datos.addValue(Misterio, "Misterio", "Misterio");
        /**Creacion del grafico*/
        JFreeChart grafico = ChartFactory.createBarChart("Libros por Genero", "Genero", "Cantidad", datos);
        ChartFrame frame = new ChartFrame("Grafico de barras", grafico);
        frame.setVisible(true);
        frame.setSize(800, 600);
    }
    
    /**Creacion del grafico de pastel*/
    public void graficoPastel()
    {
        /**Creacion del conjunto de datos*/
        DefaultPieDataset datos = new DefaultPieDataset();
        datos.setValue("Accion",Accion);
        datos.setValue("Ciencia Ficcion",CienciaFiccion);
        datos.setValue("Romance",Romance);
        datos.setValue("Fantasia",Fantasia);
        datos.setValue("Terror",Terror);
        datos.setValue("Poesia",Poesia);
        datos.setValue("Misterio",Misterio);
        /**Creacion del grafico*/
        JFreeChart grafico=ChartFactory.createPieChart("Estudiantes por Carrera", datos,true,true,true);
        PiePlot P = (PiePlot)grafico.getPlot();
        ChartFrame frame=new ChartFrame("Grafico de pastel",grafico);
        frame.setVisible(true);
        frame.setSize(500,500);
    }
    
    /**Funcion para mostrar todos los datos en una ventana adicional*/
    public void verDatos()
    {
        TablaRegistro tabla=new TablaRegistro(InventarioBiblioteca);
        tabla.setSize(500,500);
        tabla.setVisible(true);
        tabla.setTitle("Tabla de datos");
    }
    
    public static void main(String args[]) 
    {
        java.awt.EventQueue.invokeLater(new Runnable() 
        {
            public void run() 
            {
                new SalidaGrafica().setVisible(true);

            }
        });
    }
    
    public Libro buscarLibroPorCodigo(String codigo) 
    {
        return InventarioBiblioteca.get(codigo);
    }
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton BotonBarras;
    private javax.swing.JButton BotonBusqueda;
    private javax.swing.JButton BotonDatos;
    private javax.swing.JButton BotonIngresoo;
    private javax.swing.JButton BotonPastel;
    private javax.swing.JComboBox<String> CBGenero;
    private javax.swing.JLabel LRAutor;
    private javax.swing.JLabel LREditorial;
    private javax.swing.JLabel LRGenero;
    private javax.swing.JLabel LRPublicacion;
    private javax.swing.JLabel LRTitulo;
    private javax.swing.JTextField TFAutor;
    private javax.swing.JTextField TFBuscar;
    private javax.swing.JTextField TFCodigo;
    private javax.swing.JTextField TFEditorial;
    private javax.swing.JTextField TFPublicacion;
    private javax.swing.JTextField TFTitulo;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    // End of variables declaration//GEN-END:variables

     //Variables adicionales
     private LinkedHashMap<String,Libro> InventarioBiblioteca;
     //Contadores
     private int Accion,CienciaFiccion,Romance,Fantasia,Terror,Poesia, Misterio;
    
}    
