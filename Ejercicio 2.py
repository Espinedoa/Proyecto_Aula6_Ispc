﻿#Crear una lista en Python denominada “Dueno2”  y recorrerla con un bucle  mostrando sus elementos por pantalla con excepción del DNI y el apellido. Los elementos de la lista son:
#23546987,  “Maria”,  “Perez”, 4789689,  “Pueyrredon  811”
# que representan los datos del dueño de un perro (DNI, nombre, apellido, teléfono y dirección) 

Dueño2 = [23546987,  "Maria",  "Perez", 4789689,  "Pueyrredon  811"]

for i in (Dueño2):
   if i == 23546987 or i=="Perez":
      Dueño2= ["Maria",  "Perez","Pueyrredon  811"]
      
print (Dueño2)