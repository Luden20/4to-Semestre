#-*-coding:cp1252-*-
cad = input("Ingrese una cadena:... ")
print("Impresion:")
print("Resultados: ", end = "")
res = cad.split()  # Divide la cadena en palabras utilizando el método split() y almacena el resultado en (res)
for i in (res):  # Itera sobre cada palabra en la lista (res)
    i = i.upper()  # Convierte la palabra a mayúsculas
    print(i[0], end ="")  ## Imprime el primer carácter de la palabra sin saltar de línea
print("\nGRACIAS POR USAR ESTE PROGRAMA")
