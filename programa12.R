# Nombre del programa: Video juego adivina el número.

# En este código usamos la función suppressWarnings({código}), para mensajes de advertencia que podemos ignorar. 

run <- function() suppressWarnings ({
  numero_aleatorio <- sample(1:100)
  numero_elegido <- as.integer(readline('Elige un número del 1 al 100: '))
  while (numero_elegido != numero_aleatorio) {
    if (numero_elegido < numero_aleatorio) {
      cat('Elige un numero más grande')
    } else {
      cat('Elige un número más pequeño')
    }
    numero_elegido <- as.integer(readline('Elige otro número: '))
  }
  cat('¡Ganaste!')
})


run()