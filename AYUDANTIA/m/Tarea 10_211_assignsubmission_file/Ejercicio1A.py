#-*-coding:cp1252-*-
# Ejercicio 1. A
oracion = input("Introduce una cadena de caracteres... ") #Se crea una variable que guarde la cadena ingresada por el usuario 
palabras = oracion.split() #Se usa la funcion split para contar el numero de veces que aparecen los elementos 
total = len(palabras) #Se usa la funcion len para saber la longitud de la cadena 
print(f"La frase tiene {total} palabras.") #Se imprime el resultado final 
