#-*-coding:cp1252-*-
# Elaborado por:
# Integrantes: Andres Hualpa, Steven Rosero
#Resolucion del Reto 1, Ejercicio 1


print("CONTADOR DE PALABRAS") # Titulo del Programa
print("----------------------")

# Solicitar al usuario que ingrese la frase
cad= input("Introduce una cadena de caracteres... ")

# Dividir la frase en palabras utilizando el espacio como separador y contar cuántas palabras hay
cantidad_palabras = len(cad.split())

# Imprimir el resultado<
print("La frase tiene", cantidad_palabras, "palabras.")
# Mensaje de despedida
print("Gracias por usar este programa.")
