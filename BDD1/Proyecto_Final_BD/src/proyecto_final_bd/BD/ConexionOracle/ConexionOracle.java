
package proyecto_final_bd.BD.ConexionOracle;


import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.PreparedStatement;

/**
 *
 * @author polip
 */
public class ConexionOracle {
    private Connection conn;
    private String url;
    private String user;
    private String pass;
    
    public ConexionOracle()
    {
        conectar();
    }
    public void conectar()
    {
        try
        {
            //De momento me coneecto como el dba, pero debo crear un rol especifico con un user especifico que maneja las tablas de la manera correcta
            Class.forName("oracle.jdbc.OracleDriver");
            url="jdbc:oracle:thin:@192.168.0.107:1521:cdb1";
            user="achafla";
            pass="achafla";
            conn=DriverManager.getConnection(url, user, pass);
            System.out.println("Conectado");
        }
        catch(ClassNotFoundException | SQLException e)
        {
             System.out.println("NO Conectado");
        }
    }
    public void desconectar()
    {
        try
        {
            conn.close();
            System.out.println("Desconectado");
        }
        catch(SQLException e)
        {
             System.out.println("NO Conectado");
        }
    }
    //Anotaciones
    //La ejecucion de un Query me devuelve un result set
    //Esto me devuelve los datos
    //Pero para trabajarlo mejor es necesario un ResultSetMetaData que me da informacion de la tabla
    public ResultSet ejecutarQuery(String sql) {
        ResultSet rs = null;
        try {
            PreparedStatement pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
        } catch (SQLException e) {
            
        }
        return rs;
    }
    public static void printResultSet(ResultSet rs) {
        try
        {
            ResultSetMetaData metaData = rs.getMetaData();
            int columnCount = metaData.getColumnCount();
            for (int i = 1; i <= columnCount; i++) {
                System.out.print(metaData.getColumnName(i) + "\t");
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
    
    
}
