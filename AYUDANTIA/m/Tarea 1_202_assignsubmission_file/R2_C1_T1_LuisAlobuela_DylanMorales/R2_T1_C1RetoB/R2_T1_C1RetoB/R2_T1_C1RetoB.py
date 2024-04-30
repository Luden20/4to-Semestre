#-*-coding:cp1252-*-
##Solución al reto B de la tarea 1 criterio 1 del RDA 2
#Elaborado por: 
#...Alobuela Luis y Morales Dylan...
# b.	Realizar un programa que se ingrese una cadena de caracteres por teclado que represente una frase (palabras separadas por espacios), 
# el programa debe presentar la inicial de la letra en mayúscula de cada palabra.
cad = input("Ingrese una cadena de caracteres... ") #Pregunta al ususario que ingrese una cadena de carcteres
cad = cad.strip() + " " #La cadena ingresada recortara los espacios extremos y aumentara un espacio al final
pos_esp = cad.find(" ") #La variable "pos_esp" guardara la posicion del primer espacio encontrada en la cadena
palabra = "" #Esta variable almacenara las palabras encontradas en la cadena
inicial = "" #Esta variable almacenara las iniciales de cada palabra encontrada en la cadana
while pos_esp > 0: #El bucle while me permite repetir la accion de recorrer cada palabra segun el numero de espacios
    palabra = cad[0:pos_esp] #Mi variable "palabra" almacenara la cadena desde la poscion 0 hasta la posicion del espacio encontrado 
    inicial += palabra[0] #La variable "inicial" guardara la primera posicion de la cadena almacenada en la variable "palabra", es decir seran la inicial de la cadena
    cad = cad[pos_esp+1:] #La cadena original sera rebanada a partir desde la posicion del espacio aumentado 1 hasta el final, es decir se iran recortando palabras
    pos_esp = cad.find(" ") #Con la cadena rebanada mi variable "pos_esp" buscara la poscion del siguiente espacio
inicial = inicial.upper() #Al final del bucle las inciales almacenadas seran converidas en mayusculas con la funcion .upper()
print(f"Impresion:\nIniciales {inicial}") #Imprime los resultados

