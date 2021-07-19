# Nombre del programa: Dime tu edad.

edad <- readline("Escribe tu edad: ")
edad <- as.integer(edad)

if (edad < 18) {
  print("Eres menor de edad")
} else {
  print("Eres mayor de edad")
}