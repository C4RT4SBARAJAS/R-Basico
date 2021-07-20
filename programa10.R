# Nombre del programa: impresor de números pares e impresor hasta el número 5353.

# Impresor de números pares -----------------------------------------------
# Utilizando un ciclo for, continue y next.
  # run <- function() {
  # for (contador in 1:1000) {
  #   if (contador %% 2 != 0) {
  #     next
  #   }
  #   print(contador)
  # }
  # }

# Impresor hasta el número 5353 -------------------------------------------
# Utilizando break
# run <- function() {
#   for (i in 1:10000) {
#   if (i == 5353) {
#     break
#     }
#     print(i)
#   }
#   }

# Textos con la letra o ---------------------------------------------------
texto <- readline('Escribe un texto: ')

run <- function() {
  for (letra in texto) {
    if (letra == 'o') {
      letra <- stringr::str_replace(letra, "o", "a")
      }
    print(letra)
  }
  }

run()