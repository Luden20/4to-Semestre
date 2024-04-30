#--coding:cp1252--
#Danny Alajo, David Vallejo 

cad=input("Introduce una cadena de caracteres… ")
i=0
j=1
a=""
print(cad[0:1].upper(), end = "") #la cadena upper convierte todos los caracteres alfabéticos de la cadena en mayúscula. 
while i!=len(cad):
 i+=1
 j+=1
 n=cad[i:j]
 if n==" ":
  a=cad[i+1:j+1]
  print(a.upper(), end="")
print()
