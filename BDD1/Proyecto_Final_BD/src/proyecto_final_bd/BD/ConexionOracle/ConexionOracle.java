
package proyecto_final_bd.BD.ConexionOracle;


import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.PreparedStatement;
import java.util.LinkedList;
import javax.swing.table.DefaultTableModel;


/**
 *
 * @author polip
 */
    public class ConexionOracle {
    private Connection Conexion;
    private String url;
    private String user;
    private String pass;
    
    public ConexionOracle(String IP,String SID,String User,String Password)
    {
        conectar(IP,SID,User,Password);
    }
    public void conectar(String IP,String SID,String User,String Password)
    {
        try
        {
            //De momento me coneecto como el dba, pero debo crear un rol especifico con un user especifico que maneja las tablas de la manera correcta
            Class.forName("oracle.jdbc.OracleDriver");
            url="jdbc:oracle:thin:@"+IP+":1521:"+SID;
            user=User;
            pass=Password;
            Conexion=DriverManager.getConnection(url, user, pass);
            System.out.println("Conectado");
        }
        catch(ClassNotFoundException | SQLException e)
        {
             System.out.println("NO Conectado");
        }
    }
    public ResultSet ejecutarQuery(String sql) 
    {
        System.out.println(sql);
        ResultSet rs = null;
        try {
            PreparedStatement pstmt = Conexion.prepareStatement(sql);
            rs = pstmt.executeQuery();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return rs;
    }
    public void desconectar()
    {
        try
        {
            Conexion.close();
            System.out.println("Desconectado");
        }
        catch(SQLException e)
        {
             System.out.println("NO Conectado");
        }
    }
    public void Instruccion(String sql)
    {
        try
        {
            PreparedStatement pstmt = Conexion.prepareStatement(sql);
            pstmt.executeUpdate();
        }
        catch(SQLException e)
        {
        
        }
    }
    public static void printResultSet(ResultSet rs) {
        try
        {
            ResultSetMetaData metaData = rs.getMetaData();
            int columnCount = metaData.getColumnCount();
            for (int i = 1; i <= columnCount; i++) {
                System.out.print(metaData.getColumnName(i)+"\t");
            }
            System.out.println();         
            while (rs.next()) {
                for (int i = 1; i <= columnCount; i++) {
                    System.out.print(rs.getString(i) + "\t");
                }
                System.out.println();
            }
        }
        catch(SQLException e)
        {
        }
    }
    public Object[] Listado(String Tabla,String Atributo)
    {
        LinkedList<String> aux=new LinkedList<String>();
        aux.add("VACIO");
        try
        {
            aux.clear();
            PreparedStatement p=Conexion.prepareStatement("SELECT "+Atributo+" COUNT(*) FROM "+Tabla+" GROUP BY "+Atributo);
            ResultSet rs=p.executeQuery();
            while(rs.next())
            {
                aux.add(rs.toString());
                rs.next();
            }
        }
        catch(SQLException e)
        {
        
        }
        return aux.toArray();
    }
    public void MostrarTabla(String query,DefaultTableModel T) {
        try
        {
            ResultSet rs=ejecutarQuery(query);
            if(rs!=null)
            {
                T.setRowCount(0);
                ResultSetMetaData metaData = rs.getMetaData();
                int columnCount = metaData.getColumnCount();
                LinkedList<String> aux=new LinkedList<String>();
                for (int i = 1; i <= columnCount; i++) {
                    aux.add(metaData.getColumnName(i));
                }
                T.setColumnIdentifiers(aux.toArray());
                System.out.println();    
                LinkedList<String> aux2=new LinkedList<String>();
                while (rs.next()) {
                    aux2.clear();
                    for (int i = 1; i <= columnCount; i++) {
                        aux2.add(rs.getString(i));
                    }
                    T.addRow(aux2.toArray());
                }
            }
            else
            {
                T.setRowCount(0);
            }
            
        }
        catch(SQLException e)
        {
            T.setRowCount(0);
            System.out.println(e.getMessage());
        }
    }
}
