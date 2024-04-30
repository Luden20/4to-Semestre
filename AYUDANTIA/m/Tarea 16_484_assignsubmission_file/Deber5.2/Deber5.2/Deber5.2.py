#-*-coding:cp1252-*-
# Solicitamos al usuario que introduzca una cadena
cadena=input("Introduce una cadena de caracteres: ")
# Dividimos la frase usando split()
palabras=cadena.split()
# Creamos una cadena vacía para almacenar las iniciales
iniciales=""
# Recorremos las palabras obtenidas
for i in palabras:
    # Añadimos la primera letra en mayúscula a la cadena de iniciales
    if i:  # Esto verifica que la palabra no esté vacía
        iniciales += i[0].upper()
# Imprimimos el resultado
print("Iniciales:", iniciales)

