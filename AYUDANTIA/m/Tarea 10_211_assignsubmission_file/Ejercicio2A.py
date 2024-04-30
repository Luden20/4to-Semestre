#-*-coding:cp1252-*-
# Ejercicio 1. B
oracion = input("Introduce una cadena de caracteres... ") #Se crea una variable que guarde la cadena ingresada por el usuario 
palabras = oracion.split() #Se usa la funcion split para contar el numero de veces que aparecen los elementos 
s = "" #Se crea una variable que es el espacio 
for i in palabras: #Se define en rango en funcion de la variable antes creada  
    s += i[0].upper() #Se usa la funcion .upper para que la cadena sea unicamente mayusculas 
    
print(f"Iniciales: {s}") #Se imprime el resultado final
