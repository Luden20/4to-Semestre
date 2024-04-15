/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package aplicacionestudiantes;

/**
 *
 * @author polip
 */

public class Estudiante
{
	/**Definicion de Datos miembros en la clase*/
	private String Cedula;
	private String Nombre;
	private String Carrera;
	private int Semestre;
	/**Creacion del Constructor*/
	public  Estudiante (String Cedula, String Carrera,String Nombre, int Semestre )
	{
		this.Cedula = Cedula;
		this.Carrera = Carrera;
		this.Semestre = Semestre;
		this.Nombre = Nombre;
	}
	/**Creacion funciones miembros que nos permiten consultar los datos miembros sin tener que romper la encapsulacion*/
	public String getCedula(){
		return this.Cedula;
	}
	public String getCarrera(){
		return this.Carrera;
	}
        @Override
	public String toString()
	{
		return "Cedula: "+this.Cedula+" Estudiante "+this.Nombre+" Carrera: "+this.Carrera+" Semestre : "+this.Semestre;
	}
}
