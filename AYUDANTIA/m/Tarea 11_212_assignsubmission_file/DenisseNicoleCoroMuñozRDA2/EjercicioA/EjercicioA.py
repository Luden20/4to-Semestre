#-*-coding:cp1252-*-

# ejercico A

#	Realizar un programa que ingrese una cadena de caracteres por teclado que representa una frase 
#(palabras separadas por espacios), el programa debe contar cuantas palabras tiene la frase.

cad = input("Por favor introduce una cadena de caracteres: ")
cadena = cad.strip()
num_espacios = cadena.count(" ")
print("La frase tiene", num_espacios + 1, "palabras")