#-*-coding:cp1252-*-
# Solicitamos al usuario que introduzca una cadena
cadena=input("Introduce una cadena de caracteres: ")
# Dividimos la frase usando split()
palabras=cadena.split()
# Creamos una cadena vac�a para almacenar las iniciales
iniciales=""
# Recorremos las palabras obtenidas
for i in palabras:
    # A�adimos la primera letra en may�scula a la cadena de iniciales
    if i:  # Esto verifica que la palabra no est� vac�a
        iniciales += i[0].upper()
# Imprimimos el resultado
print("Iniciales:", iniciales)

