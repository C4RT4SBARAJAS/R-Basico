# Nombre del programa: Conversor de moneda.

# El siguiente programa busca convertir pesos méxicanos a dolares. La persona prodra ingresas la cantidad de pesos méxicanos que tenga y el programa le dira su equivalencia en dolares.

pesos <- readline("¿Cuántos pesos méxicanos tienes?: ")
pesos <- as.integer(pesos)
valor_dolar = 20
dolares <- pesos / valor_dolar
dolares <- round(dolares, 2)
dolares <- as.character(dolares)
print(paste("Tienes $",dolares, " dólares", sep = ""))

# Para correr todas las líneas como un guión de código usamos la función source():
# > source("~/personalProyects/proyectoR/programa1.R")
# Debiendo guardar el script primero.