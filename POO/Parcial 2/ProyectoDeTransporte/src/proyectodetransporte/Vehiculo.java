package proyectodetransporte;
import java.util.LinkedHashMap;
public class Vehiculo {
    /**Declaro datos miembro*/
    private String Placa;
    private String TipoVehiculo;
    private String Marca;
    private String Modelo;
    private String Color;
    private String Servicio;
    private String FechaMatricula;
    private String FechaCaducidadMat;
    private Propietario Propietario;
    private LinkedHashMap<String,Citacion> ListaCitaciones = new LinkedHashMap<String,Citacion>();
    public Vehiculo(String Cedula,String Nombre,String Placa,String TipoVehiculo,String Marca,String Modelo,String Color,String Servicio,String FechaMatricula, String FechaCaducidadMat)
    {
        /**Utilizo supero e ingreso los valores del constructor de la clase padre*/
        this.Propietario=new Propietario(Cedula,Nombre);
        this.Placa=Placa;
        this.TipoVehiculo=TipoVehiculo;
        this.Marca=Marca;
        this.Modelo=Modelo;
        this.Color=Color;
        this.Servicio=Servicio;
        this.FechaMatricula=FechaMatricula;
        this.FechaCaducidadMat=FechaCaducidadMat;
    }
    /**Funciones miembro principales*/
    public String getPlaca()
    {
        return this.Placa;
    }
    public String getTipoVehiculo()
    {
        return this.TipoVehiculo;
    }
    public String getMarca()
    {
        return this.Marca;
    }
    public String getModelo()
    {
        return this.Modelo;
    }
    public String getColor()
    {
        return this.Color;
    }
    public String getServicio()
    {
        return this.Servicio;
    }
    public String getFecha()
    {
        return this.FechaMatricula;
    }
    public String getFechaCaducidadMat()
    {
        return this.FechaCaducidadMat;
    }
    /**Uso super para poder consultar los datos de la clase padre*/
    public String getCedulaPropietario(){
        return Propietario.getCedula();
    }
    public String getNombrePropietario(){
        return Propietario.getNombre();
    }
    /**Funciones que me a servir para poder realizar una linkdhashmap de las citaciones del vehiculo*/
    public void IngresarCitacion(String NumDeCitacion,Citacion Citaciones){
        ListaCitaciones.put(NumDeCitacion, Citaciones);
    }
    public LinkedHashMap getListaCitaciones(){
        return ListaCitaciones;
    }
}
