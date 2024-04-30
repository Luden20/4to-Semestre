#-*-coding:cp1252-*-
#Se define la variable iterativa i para usarla después en un bucle
i = 0
#Se definen el resto de las variables del programa
comp = " "
iniciales = ""
#Se le pide al usuario una cadena con la función input
cad = input("Introduce una cadena de caracteres... ")
#Se quitan todos los espacios antes y después de la palabra dentro de la cadena con la función strip
cad = cad.strip()
#Se cambia todas las letras de la cadena a mayúsculas con la función upper
cad = cad.upper()
#La primera inicial es la primera letra de la cadena
iniciales += cad[0]
#Se realiza un bucle for que recorrera toda la cadena
for i in range(len(cad)):
    #Con un condicionante if se compara la letra actual de la cadena para saber si es un espacio en blanco
    if cad[i] == comp:
        #Si es un espacio en blanco, a las iniciales se le añadirá la letra que este 1 espacio a la derecha del espacio en blanco
        iniciales += cad[i+1]
#Al usuario se le mostrará una cadena con todas las iniciales
print(f"Las iniciales de la cadena son: {iniciales}")
print("Fin del programa")