# Nombre del programa: Conversor de moneda.

# El siguiente programa busca convertir pesos méxicanos a dolares. La persona podra ingresar la cantidad de pesos méxicanos que tenga y el programa le dirá su equivalencia en dolares.

pesos <- readline("¿Cuántos pesos méxicanos tienes?: ")
pesos <- as.integer(pesos)
valor_dolar <- 20
dolares <- pesos / valor_dolar
dolares <- round(dolares, 2)
dolares <- as.character(dolares)
print(paste("Tienes $",dolares, " dólares", sep = ""))

# Para correr todas las líneas de código como un guión, podemos hacerlo de dos maneras:
# Presionando las teclas Control + Shift + S. Guarda los cambios y después los ejecuta.

# Utilizando la función source(). Donde ingresamos como agumento la ruta del script.
# > source("~/personalProyects/proyectoR/programa1.R") # Debiendo guardar primero los cambios.