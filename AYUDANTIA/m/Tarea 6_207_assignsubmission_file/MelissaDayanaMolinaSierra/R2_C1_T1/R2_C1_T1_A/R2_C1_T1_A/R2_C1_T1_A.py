#-*-coding:cp1252-*-
# Realizar un programa que ingrese una cadena de caracteres por teclado que representa una frase
# (palabras separadas por espacios), el programa debe contar cuantas palabras tiene la frase.

#Elaborado por: Michael(melissa) Molina Sierra

i = 0
num_palabras = 1

cad1 = input("Ingrese una cadena de caracteres... ")
cad2 = cad1.strip()
for i in range(len(cad2)):
    if cad2[i] == " ":
        num_palabras += 1

print(f"La frase '{cad2}' tiene {num_palabras} palabras")

