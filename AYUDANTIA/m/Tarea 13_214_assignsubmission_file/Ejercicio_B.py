#-*-coding:cp1252-*-
#Elaborado por: Moreno Karol y Vizcaino Cielo

cad=0
pal=0
palas=0
inciales=0
cad=input("Ingrese una cadena de caracteres...")
palas = cad.split()
iniciales = ""
for pal in palas:
    iniciales += pal[0].upper()
print("Iniciales:", iniciales)
