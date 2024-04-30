
#-*-coding:cp1252-*-

# ejercico B

#	Realizar un programa que se ingrese una cadena de caracteres por teclado que represente una frase 
#(palabras separadas por espacios), el programa debe presentar la inicial de la letra en mayúscula de cada palabra.

i = 0
iniciales = ''

frase = input("Por favor introduce una cadena de caracteres: ")# Se solicita al usuario que introduzca una cadena de caracteres

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
        
iniciales = iniciales.upper()  # convertir a mayusculas 
print("Iniciales:", iniciales.replace(" ", "")) # Se imprime el resultado final, eliminando los espacios en blanco entre las iniciales
print(" Gracias por usar este programa ")