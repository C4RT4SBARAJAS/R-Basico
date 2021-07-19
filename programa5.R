# Nombre del programa: Bienvenida, Eligé una opción.

# Bienvenida --------------------------------------------------------------
# mi_funcion <- function() {
#   print("Curso de R desde cero")
#   nombre <- readline("Ingresa tu nombre: ")
#   print(paste("Bienvenido", nombre))
# }
# 
# 
# mi_funcion()



# Eligé una opción --------------------------------------------------------
opcion <- as.integer(readline("Elige una opción (1), (2), (3): "))

respuestas <- function(mensaje) {
  print("Hola")
  print("Muchas felicidades")
  print(mensaje)
  print("Hasta luego")
}

if (opcion == 1) {
  respuestas("Elegiste la opción 1")
} else if (opcion == 2) {
  respuestas("Elegiste la opción 2")
} else if (opcion == 3) {
  respuestas("Elegiste la opción 3")
} else {
  print("Escriba una opción correcta")
}