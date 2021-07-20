# Nombre del programa: Recorrediendo caracteres.

# Utilizando un ciclo for.
run <- function() {
  # nombre <- readline('Escribe tu nombre: ')
  # for (letra in nombre) {
  #   print(letra)
  #   }
  
  frase <- readline('Escribe una frase: ')
  for (caracter in frase) {
    print(stringr::str_to_upper(caracter))
  }
  }


run()