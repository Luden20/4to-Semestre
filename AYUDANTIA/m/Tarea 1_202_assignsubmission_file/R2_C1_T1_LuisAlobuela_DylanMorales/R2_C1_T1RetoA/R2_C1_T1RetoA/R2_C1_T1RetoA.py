#-*-coding:cp1252-*-
#Solución al reto A de la tarea 1 criterio 1 del RDA 2
#Elaborado por: 
#...Alobuela Luis y Morales Dylan...
# a.	Realizar un programa que ingrese una cadena de caracteres por teclado que representa una frase (palabras separadas por espacios), 
# el programa debe contar cuantas palabras tiene la frase.
cad = input("Introduce una cadena de caracteres... ") #Se pregunta al usuario una cadena de caracteres 
cad = cad.strip() + " " #La cadena cortará los espacios extremos y agregará un espacio al final
pos_esp = cad.find(" ") #Esta variable me devulve la posicion del primer espacio encontrado en la subcadena, si no existe una cadena los espacios seran 0
i = 0 # Esta variable será un iterador que me recorrá cada palabra de la cadena
palabra = "" # Esta variable guardará cada palabra de la frase
conteo_pal = 0 #Esta variable me indica cuantas palabras habrá en la cadena 
lonpalabra = 0 #Esta variable sin inicilizar me guardará la longitud de la variable "palabra"
while pos_esp > 0: #El bucle while me permite repetir el conteo de palabras dependiendo la posicion del espacio
    palabra = cad[0:pos_esp+1] #Mi variable "palabra" guardará la cadena desde la posicion 0 hasta la posicion del primer espacio
    lonpalabra = len(palabra) #Mi variable "lonpalabra" guradará la longitud de la variable "palabra" 
    for i in range(0,lonpalabra): #El bucle for recorrerá desde 0 hasta el número de longitud de la variable "palabra"
        if palabra[i] == " ": #El condicionante verifica si cada posicion de mi variable "palabra" existe un espacio
            conteo_pal +=1 #Si mi condicion se cumple, entonces mi conteo de palabras "conteo_pal" aumentará en 1
    cad = cad[pos_esp+1:] #Al terminar el bucle for la cadena original ahora será desde la posicion del espacio + 1 hasta el final de la frase, es un corte de cadena
    pos_esp = cad.find(" ") #Con la cadena original rebanada la posicion del espacio sera hasta la siguiente palabra.
print("Impresion:")
print(f"La frase tiene {conteo_pal} palabras") # Imprime los resultados
