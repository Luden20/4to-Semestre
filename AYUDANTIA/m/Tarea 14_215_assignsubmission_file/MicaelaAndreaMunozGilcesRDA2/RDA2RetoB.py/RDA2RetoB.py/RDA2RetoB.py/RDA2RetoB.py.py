#-*-coding:cp1252-*-
#Realizar un programa que se ingrese una cadena de caracteres por teclado que represente una
# frase (palabras separadas por espacios), el programa debe presentar la inicial de la letra 
# en mayúscula de cada palabra
i = 0
iniciales = ''

frase = input("Introduce una cadena de caracteres,POR FAVOR: ")# Se solicita al usuario que introduzca una cadena de caracteres

while i < len(frase):
    if frase[i] != ' ':
        iniciales += frase[i]
        while i < len(frase) - 1 and frase[i+1] != ' ':
            i += 1
        if i < len(frase) - 1 and frase[i+1] == ' ':
            iniciales += ' '
        i += 1
    else:
        i += 1
        
iniciales = iniciales.upper()  # Funcion para convertir a mayusculas 
print("Iniciales:", iniciales.replace(" ", "")) 
print(" Fin del programa ")

