
#-*-coding:cp1252-*-
#Se define la variable iterativa i que se usara para contar palabras
i = 0
#Se define las demás variables del programa
comp = " "
cont = 1
#Se pide al usuario introducir una cadena de caracteres
cad = input("Introduzca una cadena de caracteres... ")
#Se elimina cualquier espacio antes y después de la cadena con la función .strip()
cad = cad.strip()
#Se usa un bucle for que recorre todo el largo de la cadena 
#Este bucle cuenta cada espacio en la palabra, y por cada espacio el contador de palabras aumenta en 1
for i in range(len(cad)):
    if cad[i] == comp:
        cont += 1
#Se imprime la cantidad de palabras
print(f"La frase tiene {cont} palabras")
print("Fin del programa")