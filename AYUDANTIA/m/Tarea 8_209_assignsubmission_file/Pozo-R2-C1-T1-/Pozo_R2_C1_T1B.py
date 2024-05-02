
#b.	Realizar un programa que se ingrese una cadena de caracteres por teclado que 
#represente una frase (palabras separadas por espacios), el programa debe presentar 
#la inicial de la letra en may�scula de cada palabra.

frase = input("Introduce una cadena de caracteres: ")   #Ingreso de frase por usuario
iniciales = []                                          #Lista para guardar las iniciales
palabras = frase.split()                                #Separar la frase por palabras
for i in palabras:                                      #Para cada palabra separada:
    c = i[0].upper()                                   #Capitalizar la inicial (posici�n 0)
    iniciales.append(c)                                #A�adir a la lista
print("Iniciales: ", end="")
for j in iniciales:                                     #Imprimir cada incial
    print(j, end="")
print("\nGracias por usar el programa")