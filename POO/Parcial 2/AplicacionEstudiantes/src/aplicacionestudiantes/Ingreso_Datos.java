//Importo lo ncesario
package aplicacionestudiantes;
import java.util.LinkedHashMap;
import javax.swing.JOptionPane;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.JFreeChart;
import org.jfree.data.general.DefaultPieDataset; 
import org.jfree.chart.plot.PiePlot; 
import org.jfree.chart.ChartFrame;
import org.jfree.data.category.DefaultCategoryDataset;

public class Ingreso_Datos extends javax.swing.JFrame {
//Inicializo mis variables que usare mas adelante y que se declaran al final
    public Ingreso_Datos() {
        initComponents();
        ClearBusqueda();
        EstudiantesAlmacenados=new LinkedHashMap<String,Estudiante>();
        IS=0;
        IC=0;
        P=0;
        D=0;
        M=0;
        DG=0;
        O=0;
        F=0;
        FL=0;
        NI=0;
        AD=0;
        
    }
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jTabbedPane1 = new javax.swing.JTabbedPane();
        jTabbedPane2 = new javax.swing.JTabbedPane();
        jLabel1 = new javax.swing.JLabel();
        CedulaTF = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        NombreTF = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        CBuscada = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        SemestreCB = new javax.swing.JComboBox<>();
        CarreraCB = new javax.swing.JComboBox<>();
        PastelBT = new javax.swing.JButton();
        Resultado2LB = new javax.swing.JLabel();
        Resultado3LB = new javax.swing.JLabel();
        Resultado4LB = new javax.swing.JLabel();
        BusquedaE = new javax.swing.JButton();
        BuscarP = new javax.swing.JButton();
        Resultado1LB = new javax.swing.JLabel();
        BorrarBT = new javax.swing.JButton();
        BarrasBT = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setText("Cedula");

        CedulaTF.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                CedulaTFActionPerformed(evt);
            }
        });

        jLabel2.setText("Nombre");

        NombreTF.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                NombreTFActionPerformed(evt);
            }
        });

        jLabel3.setText("Carrera");

        jLabel4.setText("Semestre");

        jButton1.setText("Ingresar");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        CBuscada.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                CBuscadaActionPerformed(evt);
            }
        });

        jLabel5.setText("Cedula Buscada");

        SemestreCB.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "1", "2", "3", "4", "5", "6", "7", "8", " " }));
        SemestreCB.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                SemestreCBActionPerformed(evt);
            }
        });

        CarreraCB.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Ingenieria en Sistemas", "Ingenieria Civil", "Psicologia", "Derecho", "Medicina", "Diseño Grafico", "Odontologia", "Fisioterapia", "Filosofia", "Negocios Internacionales", "Administracion" }));
        CarreraCB.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                CarreraCBActionPerformed(evt);
            }
        });

        PastelBT.setText("Ver Pastel");
        PastelBT.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                PastelBTActionPerformed(evt);
            }
        });

        Resultado2LB.setText("RESULTADO");

        Resultado3LB.setText("RESULTADO");

        Resultado4LB.setText("RESULTADO");

        BusquedaE.setText("Buscar Estudiante");
        BusquedaE.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BusquedaEActionPerformed(evt);
            }
        });

        BuscarP.setText("Buscar Posicion");
        BuscarP.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BuscarPActionPerformed(evt);
            }
        });

        Resultado1LB.setText("RESULTADO");

        BorrarBT.setText("Borrar ");
        BorrarBT.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BorrarBTActionPerformed(evt);
            }
        });

        BarrasBT.setText("Ver Barras");
        BarrasBT.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BarrasBTActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                .addComponent(jLabel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(jLabel2, javax.swing.GroupLayout.Alignment.LEADING))
                            .addComponent(jLabel4)
                            .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 71, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                .addComponent(CedulaTF, javax.swing.GroupLayout.PREFERRED_SIZE, 111, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(NombreTF))
                            .addComponent(jButton1)
                            .addComponent(CarreraCB, javax.swing.GroupLayout.PREFERRED_SIZE, 156, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(SemestreCB, javax.swing.GroupLayout.PREFERRED_SIZE, 44, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(55, 55, 55)
                        .addComponent(PastelBT)
                        .addGap(18, 18, 18)
                        .addComponent(BarrasBT)))
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(61, 61, 61)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                .addComponent(Resultado4LB, javax.swing.GroupLayout.PREFERRED_SIZE, 248, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(Resultado1LB, javax.swing.GroupLayout.PREFERRED_SIZE, 248, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(Resultado2LB, javax.swing.GroupLayout.PREFERRED_SIZE, 248, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(Resultado3LB, javax.swing.GroupLayout.PREFERRED_SIZE, 248, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel5)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(CBuscada, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(BuscarP)
                                        .addGap(10, 10, 10))
                                    .addComponent(BusquedaE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))
                        .addContainerGap(82, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(BorrarBT)
                        .addGap(128, 128, 128))))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(21, 21, 21)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                    .addComponent(jLabel5)
                                    .addComponent(CBuscada, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                            .addGroup(layout.createSequentialGroup()
                                .addContainerGap()
                                .addComponent(BusquedaE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(BuscarP)))
                        .addGap(18, 18, 18)
                        .addComponent(Resultado1LB)
                        .addGap(9, 9, 9)
                        .addComponent(Resultado2LB)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(Resultado3LB)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(Resultado4LB)
                        .addGap(18, 18, 18)
                        .addComponent(BorrarBT))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(27, 27, 27)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel1)
                            .addComponent(CedulaTF, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel2)
                            .addComponent(NombreTF, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(9, 9, 9)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel3)
                            .addComponent(CarreraCB, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel4)
                            .addComponent(SemestreCB, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(27, 27, 27)
                        .addComponent(jButton1)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 20, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(PastelBT)
                    .addComponent(BarrasBT))
                .addGap(37, 37, 37))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void CedulaTFActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_CedulaTFActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_CedulaTFActionPerformed

    private void NombreTFActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_NombreTFActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_NombreTFActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        //Valido que no haya espacios en blanco si no tiro error
        if(Validar())
        {
            //Valido que la cedula que se ingrese no existe si no tiro error
            if(EstaYaPresente(CedulaTF.getText()))
            {
                JOptionPane.showMessageDialog(this,"Esa Cedula ya esta registrada en el periodo actual", "Error", JOptionPane.ERROR_MESSAGE);
                Reset();
            }
            else
            {
                //Si llego aqui es porque puedo ingresar
                //Este mensaje es para depurar , no es realmente util
                System.out.println("Se ingreso "+new Estudiante(CedulaTF.getText(),CarreraCB.getSelectedItem().toString(),NombreTF.getText(),Integer.parseInt(SemestreCB.getSelectedItem().toString())).toString());
                //Ingreso a mi LinkedHashMap los datos, usando la cedula como clave
                EstudiantesAlmacenados.put(CedulaTF.getText(), new Estudiante(CedulaTF.getText(),CarreraCB.getSelectedItem().toString(),NombreTF.getText(),Integer.parseInt(SemestreCB.getSelectedItem().toString())));
                LlevarCuenta(CarreraCB.getSelectedItem().toString());
                //Reseteo los campos a llenar
                Reset();
            }
        }
        else
        {
            JOptionPane.showMessageDialog(this,"Ingrese los datos correctamente", "Error", JOptionPane.ERROR_MESSAGE);
        }
        
    }//GEN-LAST:event_jButton1ActionPerformed

    private void CBuscadaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_CBuscadaActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_CBuscadaActionPerformed

    private void SemestreCBActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_SemestreCBActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_SemestreCBActionPerformed

    private void CarreraCBActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_CarreraCBActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_CarreraCBActionPerformed

    private void PastelBTActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_PastelBTActionPerformed
        // TODO add your handling code here:
        GraficarPastel();
    }//GEN-LAST:event_PastelBTActionPerformed

    private void BusquedaEActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BusquedaEActionPerformed
        // TODO add your handling code here:
        //Antes de buscar valido la busqueda, que no haya "" o sino tiro error
        if(ValidarBusqueda())
        {
            Estudiante aux=Buscar_Estudiante(CBuscada.getText());
            Resultado1LB.setText("Cedula:"+aux.getCedula());
            Resultado2LB.setText("Nombre:"+aux.getNombre());
            Resultado3LB.setText("Carrera:"+aux.getCarrera());
            Resultado4LB.setText("Semestre:"+aux.getSemestre());
        }
        else
        {
            JOptionPane.showMessageDialog(this,"Ingrese una cedula valida", "Error", JOptionPane.ERROR_MESSAGE);
        }
    }//GEN-LAST:event_BusquedaEActionPerformed

    private void BuscarPActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BuscarPActionPerformed
        // TODO add your handling code here:
        //Misma validacion de arriba
        if(ValidarBusqueda())
        {
            Resultado1LB.setText(Buscar_Posicion(CBuscada.getText()));
            Resultado2LB.setText("");
            Resultado3LB.setText("");
            Resultado4LB.setText("");
        }
        else
        {
            JOptionPane.showMessageDialog(this,"Ingrese una cedula valida", "Error", JOptionPane.ERROR_MESSAGE);
        }
        
    }//GEN-LAST:event_BuscarPActionPerformed

    private void BorrarBTActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BorrarBTActionPerformed
        // TODO add your handling code here:
        //Borro lo que esta en los resultados de busqueda
        ClearBusqueda();
    }//GEN-LAST:event_BorrarBTActionPerformed

    private void BarrasBTActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BarrasBTActionPerformed
        // TODO add your handling code here:
        //Llamo a la funcion de graficar las barras
        GraficarBarras();
    }//GEN-LAST:event_BarrasBTActionPerformed
    private void LlevarCuenta(String Carrera) {
        //Depeniendo de la carrera escogida, aumento un determinado contador
        switch (Carrera) {
            case "Ingenieria en Sistemas":
                IS++;
                break;
            case "Ingenieria Civil":
                IC++;
                break;
            case "Psicologia":
                P++;
                break;
            case "Derecho":
                D++;
                break;
            case "Medicina":
                M++;
                break;
            case "Diseño Grafico":
                DG++;
                break;
            case "Odontologia":
                O++;
                break;
            case "Fisioterapia":
                F++;
                break;
            case "Filosofia":
                FL++;
                break;
            case "Negocios Internacionales":
                NI++;
                break;
            case "Administracion":
                AD++;
                break;
            default:
                break;
        }
    }
    public String Buscar_Posicion( String Cedula) 
	{
            //Como es un linked hashmap voy por cada entrada sumando 1 al contador, si encuetro lo que quiero devuevlo la pos
            int i =0;
            for(String Llave : EstudiantesAlmacenados.keySet())
            {
                if(Cedula.equals(Llave))
                {
                    return "Esta en la "+i+" posicion";
                }
                i++;
            }
            return "No existe";
	}
	/**Creacion de funcion no miembro que nos permite Buscar un estudiante y retorna el objeto estudiante*/
	public Estudiante Buscar_Estudiante ( String Cedula)
	{
            //Como es un LinkedHashMap para encontrar algo simplemente necesito un .get()
		Estudiante aux=EstudiantesAlmacenados.get(Cedula);
                if(aux!=null)
                {
                    return aux;
                }
		return new Estudiante();
	}
        public void GraficarPastel()
        {
            //Para graficar hago todo lo que decia la documentacion de Jfreechart
            //Para crear el set de datos utilizo los contadores que cree
            DefaultPieDataset datos=new DefaultPieDataset();
            datos.setValue("Ingeniera en Sistemas",IS);
            datos.setValue("Ingenieria Civil",IC);
            datos.setValue("Psicologia",P);
            datos.setValue("Derecho",D);
            datos.setValue("Medicina",M);
            datos.setValue("Diseño Grafico",DG);
            datos.setValue("Odontologia",O);
            datos.setValue("Fisioterapia",F);
            datos.setValue("Filosofia",FL);
            datos.setValue("Negocios Internacionales",NI);
            datos.setValue("Administracion",AD);
            //Muestro el pastel en una ventana
            JFreeChart grafico=ChartFactory.createPieChart("Estudiantes por Carrera", datos,true,true,true);
            PiePlot P=(PiePlot)grafico.getPlot();
            ChartFrame frame=new ChartFrame("Grafico de pastel",grafico);
            frame.setVisible(true);
            frame.setSize(500,500);
        }
        public void GraficarBarras() {
            //Misma logica que el graficar pastel pero con barras
            DefaultCategoryDataset datos = new DefaultCategoryDataset();
            datos.addValue(IS, "Estudiantes", "Ingeniera en Sistemas");
            datos.addValue(IC, "Estudiantes", "Ingenieria Civil");
            datos.addValue(P, "Estudiantes", "Psicologia");
            datos.addValue(D, "Estudiantes", "Derecho");
            datos.addValue(M, "Estudiantes", "Medicina");
            datos.addValue(DG, "Estudiantes", "Diseño Grafico");
            datos.addValue(O, "Estudiantes", "Odontologia");
            datos.addValue(F, "Estudiantes", "Fisioterapia");
            datos.addValue(FL, "Estudiantes", "Filosofia");
            datos.addValue(NI, "Estudiantes", "Negocios Internacionales");
            datos.addValue(AD, "Estudiantes", "Administracion");
            JFreeChart grafico = ChartFactory.createBarChart("Estudiantes por Carrera", "Carrera", "Cantidad", datos);
            ChartFrame frame = new ChartFrame("Grafico de barras", grafico);
            frame.setVisible(true);
            frame.setSize(800, 600);
        }
        public void Reset()
        {
            //Cambio el texto de estos campos por "" para que el usuario no se confunda
            CedulaTF.setText("");
            NombreTF.setText("");
        }
        public void ClearBusqueda()
        {
            //Borro los resultados de la busqueda
            Resultado1LB.setText("");
            Resultado2LB.setText("");
            Resultado3LB.setText("");
            Resultado4LB.setText("");
        }
        public boolean Validar()
        {
            //Valido que ninguno sea espacio en blanco
            return !"".equals(CedulaTF.getText())&&!"".equals(NombreTF.getText());
        }
        public boolean ValidarBusqueda()
        {
            //Valido que la cedula a buscar no sea un espacio en blanco
            return !"".equals(CBuscada.getText());
        }
        public boolean EstaYaPresente(String Cedula)
        {
            //Reviso si ya existe una key 
            return EstudiantesAlmacenados.containsKey(Cedula);
        }
        public static void main(String args[]) {
        
            java.awt.EventQueue.invokeLater(new Runnable() {
                public void run() {
                    new Ingreso_Datos().setVisible(true);
                }
            });
        }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton BarrasBT;
    private javax.swing.JButton BorrarBT;
    private javax.swing.JButton BuscarP;
    private javax.swing.JButton BusquedaE;
    private javax.swing.JTextField CBuscada;
    private javax.swing.JComboBox<String> CarreraCB;
    private javax.swing.JTextField CedulaTF;
    private javax.swing.JTextField NombreTF;
    private javax.swing.JButton PastelBT;
    private javax.swing.JLabel Resultado1LB;
    private javax.swing.JLabel Resultado2LB;
    private javax.swing.JLabel Resultado3LB;
    private javax.swing.JLabel Resultado4LB;
    private javax.swing.JComboBox<String> SemestreCB;
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JTabbedPane jTabbedPane1;
    private javax.swing.JTabbedPane jTabbedPane2;
    // End of variables declaration//GEN-END:variables
    //Mis propias variables
     private LinkedHashMap<String,Estudiante> EstudiantesAlmacenados;
     //Contadores
     private int IS,IC,P,D,M,DG,O,F,FL,NI,AD;
}
