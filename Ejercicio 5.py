Historial=(2350,5960,23000,1000,8900)
total=0
for i in range(len(Historial)):
    total+=Historial[i]
    if Historial[i]<30000:
        print(Historial[i])
    else:
        print("Gastos por encima de lo presupuestado")
    
print("el monto total gastado en Puppy es: $", total)
