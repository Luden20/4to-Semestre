package proyectodetransporte;
public class Propietario {
    private String Cedula;
    private String Nombre;
    public Propietario (String Cedula, String Nombre)
    {
        this.Cedula = Cedula;
        this.Nombre = Nombre;
    }
    public String getCedula()
    {
        return this.Cedula;
    }
    public String getNombre()
    {
        return this.Nombre;
    }
}
