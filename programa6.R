# Nombre del programa: Palíndromo.

# El programa trata de averiguar si una palabra es un palíndromo o no.
# Un palíndromo es una palabra que se lee igual al derecho y al reves, pudiendo ser tanto una palabra como una frase. Por ejemplo: Ana, Yo hago yoga hoy, Luz azul.

palindromo <- function(palabra) {
  palabra <- stringr::str_replace_all(palabra,' ', '')
  palabra <- stringr::str_to_lower(palabra)
  palabra_invertida <- stringi::stri_reverse(palabra)
  if (palabra == palabra_invertida) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}
  
 
run <- function() {
  palabra <-readline('Escribe una palabra: ')
  es_palindrono <- palindromo(palabra)
  if (es_palindrono == TRUE) {
    print('Es palíndromo 👍')
  } else {
    print('No es palíndromo 👎')
  }
}
  
cat('Es palíndromo o no lo es 🤔')
run()