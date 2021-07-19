# Nombre del programa: Dime tú altura.

altura <- as.integer(readline("Escribe tu altura en centímetros: "))

if (altura < 170) {
  print("Bajo")
} else if (altura >= 170 & altura < 180) {
  print("Alto")
} else {
  print("Muy alto")
}