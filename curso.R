# Bienvenido al curso de R desde cero.

# NOTA: Esta es un scrip de cálculos, si quieres saber más a detalle sobre cada punto, revisa el arvhico curso.txt adjunto.

# Operaciones artiméticas básicas en R ------------------------------------
# Obedeciendo el orden de operaciones PEMDAS.
# Parentesís
(1+4)*2

# Exponencial o potencia
5^2

# Multiplicación
2*3

# División
10/5

# Cociente de una división
10%/%5

# Residuo de una división
10%%5

# Adición
4+1

# Sustracción
12-6

# Comentarios en R --------------------------------------------------------
# R interpreta cualquier cosa en una línea después de un símbolo # como un comentario. ¡ESTO ES UN COMENTARIO!

# Variables en R ----------------------------------------------------------
# Nombre_Variable <- contenido

# Tipos de datos en R -----------------------------------------------------
# Datos númericos.
var1 <- 3

# Datos decimales.
var1 <- 2.5 # Integers or decimals.

# Datos de caracteres
var2 <- "happiness"
var2 <- "50"  

# Datos booleanos o lógicos
var3 <- TRUE
var3 <- FALSE

# Operaciones con cadena de caracteres ------------------------------------
# Prerequisitos: 
# Intalar la librería "tidyverse" para manipular cadenas sino se tiene instalado.
install.packages('tidyverse')

# Cargar la librería "tidyverse" para poder manipular cadenas.
library(tidyverse)

# NOTA: En caso de no poder intalar la librería no te preocupes, R te permite usarla de todas maneras usando la siguente sintaxis .. 
# nombre_libreria::funtion(argumentos), para nuestro ejemplo futuro se vería así ..
# stringr::str_c(nombre, apellido1, apellido2)

# Definimos tres variables donde la primera guradará el nombre de una persona, la segunda el primer apellido y la tercera el segundo apellido.
nombre <- "heriberto"
apellido1 <- "cartas"
apellido2 <- "barrera"

# Podemos sumar caracteres logrando formar cadenas utilizndo la función str_c():
# Llamando a la librería sin instalar ..
stringr::str_c(nombre, apellido1, apellido2, sep = " ")

# Utilizando la librería ya instalada:
str_c(nombre, apellido1, apellido2, sep = " ")

# Guardando el string en una variable:
nombre_completo <- stringr::str_c(nombre, apellido1, apellido2, sep = " ")

# Eliminar espacios basura al inicio o final:
stringr::str_replace_all(nombre_completo, " ", "")

# Sobreescribiendo la variable nombre_completo:
nombre_completo <- stringr::str_replace_all(nombre_completo, " ", "")

# Cambiar el texto a mayusculas:
stringr::str_to_upper(nombre_completo)

# Cambiar el texto a minusculas:
stringr::str_to_lower(nombre_completo)

# Longitud de una cadena con la función str_length():
stringr::str_length(nombre_completo)