#-*-coding:cp1252-*-
#•	EJERCICIO A:
#a.	Realizar un programa que ingrese una cadena de caracteres por teclado que representa una frase 
#(palabras separadas por espacios), el programa debe contar cuantas palabras tiene la frase.

frase = str(input("Ingrese una cadena... "))   #Ingresa frase el usuario
f = frase.split()                              #Aplicar split() para dividir la cadena en palabras
cont = len(f)                                  #Contamos la cantidad de elementos en la lista generada por split()
print(f"La cadena tiene {cont} palabras")      #Imprimir el resultado
print("Gracias por usar el programa")