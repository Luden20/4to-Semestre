package proyectodetransporte;
public class Citacion {
    private String NumCitacion;
    private String Infraccion;
    private double Multa;
    private String Fecha;
    private String Lugar;
    private String Estado;
    public Citacion(String NumCitacion,String Infraccion,double Multa,String Fecha, String Lugar,String Estado)
    {
        this.NumCitacion=NumCitacion;
        this.Infraccion=Infraccion;
        this.Multa=Multa;
        this.Fecha=Fecha;
        this.Lugar=Lugar;
        this.Estado = Estado;
    }
    public String getNumCitacion()
    {
        return this.NumCitacion;
    }
    public String getInfraccion()
    {
        return this.Infraccion;
    }
    public double getMulta()
    {
        return this.Multa;
    }
    public String getFecha()
    {
        return this.Fecha;
    }
    public String getLugar()
    {
        return this.Lugar;
    }
    public String getEstado(){
        return this.Estado;
    }
}
