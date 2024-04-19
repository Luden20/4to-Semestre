/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.ecuaciones;

import java.awt.Color;
import java.awt.Graphics;

/**
 *
 * @author USUARIO
 */
public class Ecuacion {
    
    private double a;
    private double b;
    private double c;
	
	public Ecuacion(double A,double B,double C)
	{
		this.a=A;
		this.b=B;
		this.c=C;	
	}
	public double CalculoRaiz()
	{
            //Calcula la raíz en caso de ser una ecuación de primer grado
		return (-c/b);	
	}
	public double CalculoRaiz1()
	{
             //Calcula la raíz en caso de ser una ecuación de segundo grado junto con el CalculoRaiz2
		return (-b+Math.sqrt((b*b)-4*a*c))/(2*a);
	}
	public double CalculoRaiz2()
	{
		return (-b-Math.sqrt((b*b)-4*a*c))/(2*a);
	}
	
	public double CalcularY(double X)
	{
            //Calcula el punto en Y
		return a*(X*X)+b*X+c;
	}
	public double CalcularX(double Y)
	{
            //Calcula el punto en X
		return (Y-c)/b;
	}
	private  double[] transformarCoordenadas(double x, double y) {
        double[] resultado = {10 * x + 500, -10 * y + 390};
        return resultado;
    }
	public void Graficar(Graphics g)
	{
        
        g.setColor(Color.BLUE);
		g.drawRect(10,30,1000,750);
		g.setColor(Color.BLACK);
		g.drawLine(500,30,500,775);//Vertical -390 a 390
		g.drawLine(10,390,1000,390);//Horizontal -495 a 495
		//POS X +10 y POS Y -10 equivalen a un 1
		// centro es 500,390
		g.setColor(Color.red);
		if(a==0)
		{
			if(b!=0)
			{
				double[] P1=transformarCoordenadas(CalcularX(-39),-39);
				double[] P2=transformarCoordenadas(CalcularX(39),39);
				g.drawLine((int)P1[0],(int)P1[1],(int)P2[0],(int)P2[1]);
			}
			else
			{
				double[] P1=transformarCoordenadas(-50,c);
				double[] P2=transformarCoordenadas(50,c);
				g.drawLine((int)P1[0],(int)P1[1],(int)P2[0],(int)P2[1]);
			}
			 
		}
		else
		{
			for (double x = -39; x <= 30; x+=0.01)
			{
	            double y =CalcularY(x);
	            double[] P = transformarCoordenadas(x, y);
	            g.fillOval((int)P[0],(int)P[1], 2, 2);
        	}	
		}
		g.setColor(Color.BLACK);
	}
}
    
