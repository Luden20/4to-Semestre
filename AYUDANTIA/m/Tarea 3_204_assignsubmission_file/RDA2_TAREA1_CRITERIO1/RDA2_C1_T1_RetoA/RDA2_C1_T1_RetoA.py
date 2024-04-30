#-*-coding:cp1252-*-
#Leslie Palacios y Andrea Navas
#Literal A RDA1_C1_T1
i=0
n=input("Introduce una cadena de caracteres… ") #Solicitar al usuario ingresar cadena
i=n.count(" ")
print(f"La frase tiene {i+1} palabras") #cantidad de palabras en una cadena
n=n.strip() + " " #retirar posibles espacios externos
print("Fin del programa")
