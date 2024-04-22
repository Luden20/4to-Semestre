package bibliotecagrafico;
//package com.mycompany.bibliotecacongrafico;


public class Libro 
{
        /**Definicion de datos miembro*/
	private String Codigo;
	private String Titulo;
	private String Autor;
	private String Fecha_Publicacion;
	private String Editorial;
	private String Genero;
        
        /**Constructor*/
        public Libro (String Codigo, String Titulo, String Autor, String Fecha_Publicacion, String Editorial, String Genero)
	{
		this.Codigo = Codigo; this.Titulo = Titulo; this.Autor = Autor; this.Fecha_Publicacion = Fecha_Publicacion; this.Editorial = Editorial; this.Genero=Genero; 
	}
            /**Funciones miembro para extraer los datos*/
            public String getCodigo() 
            {
                return Codigo;
            }

            public String getTitulo() 
            {
                return Titulo;
            }

            public String getAutor() 
            {
                return Autor;
            }

            public String getFecha_Publicacion() 
            {
                return Fecha_Publicacion;
            }

            public String getEditorial() 
            {
                return Editorial;
            }

            public String getGenero() 
            {
                return Genero;
            }
            
            /**Obtener todos los datos miembro*/
            public String[] getAll() 
            {
                return new String[]{this.Codigo, this.Titulo, this.Autor, this.Fecha_Publicacion, this.Editorial, this.Genero};
            }
            
            /**Devuelve una cadena de caracteres del objeto libro*/
            @Override
            public String toString() 
            {
                return "Código: " + this.Codigo + "\n" + "Título: " + this.Titulo + "\n" + "Autor: " + this.Autor + "\n" + "Fecha de Publicación: " + this.Fecha_Publicacion + "\n" + "Editorial: " + this.Editorial + "\n" + "Género: " + this.Genero;
            }
}
