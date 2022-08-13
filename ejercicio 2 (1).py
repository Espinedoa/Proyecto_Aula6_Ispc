#2)   Crear una lista en Python denominada “Dueno2”  y recorrerla con un bucle  mostrando sus elementos por pantalla
#con excepción del DNI y el apellido. Los elementos de la lista son:

      #     23546987,  “Maria”,  “Perez”, 4789689,  “Pueyrredon  811”
Dueno2 = [23546987,  "Maria",  "Perez", 4789689,  "Pueyrredon  811"]
for i in  Dueno2 :
    if  i==23546987 or i=="Perez" : 
        Dueno2 = ["Maria",4789689,"Pueyrredon  811"]
    
print(Dueno2)
    