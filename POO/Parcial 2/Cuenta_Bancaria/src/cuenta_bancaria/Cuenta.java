/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package cuenta_bancaria;

/**
 *
 * @author Camilo-PC
 */
public class Cuenta {
    private String NCuenta;
    private String nombre;
    private String apellido;
    private String cedula;
    private double Saldo;
	/*Constructor*/
    public Cuenta(String NCuenta, String nombre, String apellido, String cedula,double Saldo){
	this.NCuenta = NCuenta;
	this.nombre = nombre;
        this.apellido = apellido;
        this.cedula = cedula;
	this.Saldo = Saldo;
    }
    public boolean Retirar (double retiro){
	if (Saldo >= retiro  ){
            Saldo -= retiro;
            return true;
	}
	return false;
    }
    /**Codigo para ingresar dinero a la cuenta*/
    public void Depositar (double ingreso){
	Saldo +=ingreso;
    }
    /**Codigo para que me retornen el Saldo de la cuenta*/
    public double GetSaldo(){
        return this.Saldo;
    }
	/**Codigo para retornar el nombre*/
    public String GetNombre(){
	return nombre;
    }
    public String GetApellido(){
        return apellido;
    }
    public String GetCedula(){
        return cedula;
    }
    public String GetNCuenta(){
	return NCuenta;
    }
}
