#-*-coding:cp1252-*-
#Le pedimos al usuario que ingrese la cadena
cadena=input('Ingrese una cadena: ')
#Usamos el .count para poder contar los espacios que existen
cadena=cadena.count(' ')
#Imprimimos el numero de espacios mas uno
print('El numero de palabras es: ',cadena+1)
