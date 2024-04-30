#-*-coding:cp1252-*-
##############################################################################
#---------Pontificia Universidad Catolica Del Ecuador--------
#-----------------Facultad De Ingenieria---------------------
#---------------------Programación I-------------------------
#-Nombres de los integrantes:William Carrión, Josue Tenesaca-
##############################################################################
#a.	Realizar un programa que ingrese una cadena de caracteres por teclado que 
#representa una frase (palabras separadas por espacios), el programa debe contar  
#cuantas palabras tiene la frase.
##############################################################################
print("---------------------cuantas palabras tiene la frase---------------------")
G = input("Introduce una cadena de caracteres: ")#pedimos que infrese una frase 
P = 0  #contador en 0
A = len(G) #para ver la longitud de la cadena
for i in range(A): #recorremos los caracteres de la cadena
    if G[i] != " ": # Verificamos si el caracter actual no es un espacio en blanco, [i]accedemos a la posición
        if i == 0: # Verificamos si es el primer caracter de la cadena
            P += 1  #incrementamos el contador de palabras
        else:
            if G[i - 1] == ' ': #verificamos si el caracter anterior es un espacio en blanco
                P += 1  #incrementamos el contador de palabras
print(f"La frase tiene {P} palabras")
