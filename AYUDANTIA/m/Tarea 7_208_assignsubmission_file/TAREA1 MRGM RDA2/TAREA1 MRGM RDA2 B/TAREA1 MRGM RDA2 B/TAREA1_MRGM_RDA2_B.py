#-*-coding:cp1252-*-
cad = input("Ingrese una cadena:... ")
print("Impresion:")
print("Resultados: ", end = "")
res = cad.split()  # Divide la cadena en palabras utilizando el m�todo split() y almacena el resultado en (res)
for i in (res):  # Itera sobre cada palabra en la lista (res)
    i = i.upper()  # Convierte la palabra a may�sculas
    print(i[0], end ="")  ## Imprime el primer car�cter de la palabra sin saltar de l�nea
print("\nGRACIAS POR USAR ESTE PROGRAMA")
