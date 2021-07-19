# Nombre del programa: Conversor de dolares.

# El siguiente programa busca convertir dolares a pesos méxicanos. La persona podra ingresar la cantidad de dolares que tenga y el programa le dirá su equivalencia en pesos méxicanos.

dolares <- readline("¿Cuántos dólares tienes?: ")
dolares <- as.integer(dolares)
valor_pesos <- 20
pesos <- dolares * valor_pesos
pesos <- round(pesos, 2)
pesos <- as.character(pesos)
print(paste("Tienes $", pesos, " pesos", sep = ""))

# Para correr todas las líneas de código como un guión, podemos hacerlo de dos maneras:
# Presionando las teclas Control + Shift + S. Guarda los cambios y después los ejecuta.

# Utilizando la función source(). Donde ingresamos como agumento la ruta del script.
# > source("~/personalProyects/proyectoR/programa1.R") # Debiendo guardar primero los cambios.