# Nombre del programa: Conversor de moneda.

# Versión 1 ---------------------------------------------------------------

# El siguiente programa busca convertir pesos méxicanos a dolares. La persona podra ingresar la cantidad de pesos méxicanos que tenga y el programa le dirá su equivalencia en dolares.

# pesos <- readline("¿Cuántos pesos méxicanos tienes?: ")
# pesos <- as.integer(pesos)
# valor_dolar <- 20
# dolares <- pesos / valor_dolar
# dolares <- round(dolares, 2)
# dolares <- as.character(dolares)
# print(paste("Tienes $",dolares, " dólares", sep = ""))

# Para correr todas las líneas de código como un guión, podemos hacerlo de dos maneras:
# Presionando las teclas Control + Shift + S. Guarda los cambios y después los ejecuta.

# Utilizando la función source(). Donde ingresamos como agumento la ruta del script.
# > source("~/personalProyects/proyectoR/programa1.R") # Debiendo guardar primero los cambios.




# Versión 2 ---------------------------------------------------------------

# El siguiente programa busca convertir pesos méxicanos, colombianos, argentinos a dolares. La persona prodra ingresas la cantidad de pesos que tenga según su país y el programa le dira su equivalencia en dolares.

# cat("Bienvenido al conversor de monedas 💰
# 
# (1) Pesos mexicanos
# (2) Pesos colombianos
# (3) Pesos argentinos
#     ")
# 
# menu <- "Elige una opción escribiendo el número: "
# 
# opcion <- as.integer(readline(menu))
# 
# if (opcion == 1) {
#   pesos <- readline("¿Cuántos pesos méxicanos tienes?: ")
#   pesos <- as.integer(pesos)
#   valor_dolar <- 20
#   dolares <- pesos / valor_dolar
#   dolares <- round(dolares, 2)
#   dolares <- as.character(dolares)
#   print((paste("Tienes $", dolares, " dólares", sep = "")))
# } else if (opcion == 2) {
#   pesos <- readline("¿Cuántos pesos colombianos tienes?: ")
#   pesos <- as.integer(pesos)
#   valor_dolar <- 3875
#   dolares <- pesos / valor_dolar
#   dolares <- round(dolares, 2)
#   dolares <- as.character(dolares)
#   print(paste("Tienes $", dolares, " dólares", sep = ""))
# } else if (opcion == 3) {
#   pesos <- readline("¿Cuántos pesos argentinos tienes?: ")
#   pesos <- as.integer(pesos)
#   valor_dolar <- 65
#   dolares <- pesos / valor_dolar
#   dolares <- round(dolares, 2)
#   dolares <- as.character(dolares)
#   print(paste("Tienes $", dolares, " dólares", sep = ""))
# } else {
#   print("Ingrese una opción correcta")
# }




# Versión 3 ---------------------------------------------------------------
conversor <- function(tipo_pesos, valor_dolar) {
  pesos <- readline(paste("¿Cuántos pesos ", tipo_pesos, " tienes?: ", sep = ""))
  pesos <- as.integer(pesos)
  dolares <- pesos / valor_dolar
  dolares <- round(dolares, 2)
  dolares <- as.character(dolares)
  print(paste0("Tienes $", dolares, " dólares"))
}

cat("Bienvenido al conversor de monedas 💰

(1) Pesos mexicanos
(2) Pesos colombianos
(3) Pesos argentinos
    ")

menu <- "Elige una opción escribiendo el número: "

opcion <- as.integer(readline(menu))

if (opcion == 1) {
  conversor("mexicanos", 20)
} else if (opcion == 2) {
  conversor("colombianos", 3875)
} else if (opcion == 3) {
  conversor("argentinos", 65)
} else {
  print("Ingrese una opción correcta")
}