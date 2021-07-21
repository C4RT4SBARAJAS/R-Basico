# Nombre del programa: Prueba de primalidad.

es_primo <- function(numero) {
  contador <- 0
  
  for (i in 0:numero) {
    if (numero %% (i+1) != 0) {
      next
      } else {
        contador <- contador + 1
      }
    }
  if (contador == 2) {
    print('Es primo')
  } else {
    print('No es primo')
  }
}

    
run <- function() {
  numero <- as.integer(readline('Ingrese un número: '))
  es_primo(numero)
}

    
run()