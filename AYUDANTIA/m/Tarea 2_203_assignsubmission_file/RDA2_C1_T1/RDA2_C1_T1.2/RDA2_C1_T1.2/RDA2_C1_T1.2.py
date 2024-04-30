#-*-coding:cp1252-*-
#Elaborado por:
#Integrantes: Andres Hualpa, Steven Rosero
#Resolucion del reto1 , ejercicio 2 
print("LETRAS MAYUSCULAS DE CADA PALABRA DE LA CADENA INGRESADA") # Titulo del programa
print("-----------------------------------------------------------") # Lineas divisorias

cad = input("Introduce una cadena de caracteres... ") # Solicita al usuario ingresar una cadena de caracteres 
inicial = "" # Inicia la cadena vacia para almacebar las iniciales
for palabra in cad.split(): #Itera sobre la palabra con espacio
    inicial += palabra[0].upper() # Obtiene la incial de cada palabra y la convierte en mayuscula
print(f"Iniciales: {inicial}") #Imprime los resulatdos
print("Gracias por usar este programa.") #Mensaje de despedida para el usuario
