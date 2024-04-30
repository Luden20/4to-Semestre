#-*-coding:cp1252-*-
n=input("Ingrese una cadena...")
i=n.count(" ")
n=n.upper() #Convertir en mayuscula
espa= n.find(" ") 
while espa>0: #repetir bucle cada que exista un espacio
    palabra=n[0:espa] #la cadena hasta el espacio
    print(n[0], end= "") #imprimir palabra
    n=n[espa+1:]
    espa= n.find(" ")
print()
print("Fin del programa")



