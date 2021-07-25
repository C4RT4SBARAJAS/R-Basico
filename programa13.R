# Nombre del programa: Tipo diccionario

# Mirando el contenido del diccionario:
# run <- function() {
#   mi_diccionario <- vector(mode="list", length=3)
#   names(mi_diccionario) <- c("llave1", "llave2", "llave3")
#   mi_diccionario[[1]] <- 1; mi_diccionario[[2]] <- 2; mi_diccionario[[3]] <- 3
#   print(mi_diccionario)
  
  
  # Mirando el contenido de cada elemento:
  # print(mi_diccionario[["llave1"]])
  # print(mi_diccionario[["llave2"]])
  # print(mi_diccionario[["llave3"]])
# }

# Un diccionario de países:
run <- function() {
  poblacion_paises <- vector(mode="list", length=3)
  names(poblacion_paises) <- c("Argentina", "Brasil", "Colombia")
  poblacion_paises [[1]] <- 44938712; poblacion_paises [[2]] <- 210147125; poblacion_paises [[3]] <- 50372424
  # print(poblacion_paises[["Argentina"]])
  
  # for (pais in names(poblacion_paises)) {
  #   print(pais)
  # }
  
  # for (pais in poblacion_paises) {
  #   print(pais)
  # }

  for (pais in poblacion_paises) {
    print(paste0(names(poblacion_paises), ' tiene ', as.character(pais), ' habitantes'))
    break
  }
}


run()

