#-*-coding:cp1252-*-
# Realizar un programa que se ingrese una cadena de caracteres por teclado que represente una frase 
# (palabras separadas por espacios), el programa debe presentar la inicial de la letra en mayúscula 
# de cada palabra.

#Elaborado por: Michael(melissa) Molina Sierra

cad = input("Ingrese una cadena de caracteres... ").strip()

iniciales = ""
iniciales += cad[0]
space = 0

for i in range(len(cad)):
    if cad[i] == " ":
        space += 1
        iniciales += cad[i+1]

print("Iniciales: ", iniciales.upper())