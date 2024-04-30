#-*-coding:cp1252-*-
##############################################################################
#---------Pontificia Universidad Catolica Del Ecuador--------
#-----------------Facultad De Ingenieria---------------------
#---------------------Programación I-------------------------
#-Nombres de los integrantes:William Carrión, Josue Tenesaca-
##############################################################################
#b.	Realizar un programa que se ingrese una cadena de caracteres por teclado que 
#represente una frase (palabras separadas por espacios), el programa debe presentar 
#la inicial de la letra en mayúscula de cada palabra.
##############################################################################
print("-----------------Inicial de la letra en mayúscula -----------------")
G = input("Introduce una cadena de caracteres....") #pedimos al usuario 
E = " " #los espacios que existen en el texto pedido
O = 1 #contador
for i in G: #va a recorrer toda la cadena del texto pedido
    if i == " ": #si encuentra un espacio entonces
        O = 1 #se reinicia el contador
    elif O == 1: #si la palabra es el caracter 1 significa una palabra nueva
        E += i.upper() #.upper es hacer mayuscula 
        O = 0 #el contador 0 es para evitar agregar mas palabras

print(f"Iniciales:{E}")#imprimimos
