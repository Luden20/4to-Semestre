#-*-coding:cp1252-*-
# Ejemplo A
#Realizar un programa que ingrese una cadena de caracteres por teclado que representa una frase 
#(palabras separadas por espacios), el programa debe contar cuantas palabras tiene la frase
cad=input("Ingrese una cadena de caracteres:    ")
total=cad.strip() #Se utiliza  esta función para que se devuelva los espacios de la cadena
cadena=total.count("")#Se utiliza esta función para contar los caracteres
print(f"La cadena tiiene",cadena+1,"de caracteres")
print("Fin del programa")


