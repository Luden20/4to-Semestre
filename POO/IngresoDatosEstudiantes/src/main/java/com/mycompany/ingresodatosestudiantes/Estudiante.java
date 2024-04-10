/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.ingresodatosestudiantes;

/**
 *
 * @author polip
 */
public class Estudiante {
    private String Estudiante;
    private String Nombre;
    private String Carrera;
    private String Nivel;
    
    public Estudiante(String E,String N,String C,String Ni)
    {
     this.Estudiante=E;
     this.Nombre=N;
     this.Carrera=C;
     this.Nivel=Ni;
    }
    public String getDatos()
    {
        return Estudiante+" "+Nombre+" "+Carrera+" "+Nivel;
    }
    
}
