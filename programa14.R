# Nombre del programa: Generador de contraseñas.


generar_contrasena <- function() {
  mayusculas <- c('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'Ñ', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'X', 'Y', 'Z')
  minusculas <- c('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'ñ', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'x', 'y', 'z')
  numeros <- c('1', '2', '3', '4', '5', '6', '7', '8', '9', '0')
  simbolos <- c('*', '+', '-', '/', '@', '_', '?', '!', '[', '{', '(', ')', '}', ']', ',', ';', '.', '>', '<', '~', '°', '^', '&', '$', '#', '"')

caracteres <- c(mayusculas, minusculas, numeros, simbolos)

contrasena <- c()

for (i in 1:15) {
  caracter_sample <- sample(caracteres, 1)
  contrasena[i] <- caracter_sample
  }
return(contrasena)
}

run <- function() {
  contrasena <- generar_contrasena()
  cat('Tu nueva contraseña es: ')
  cat(contrasena)
}

run()