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
# Intalar el paquete "stringr" para manipular cadenas sino se tiene instalado.
# install.packages('stringr')
# Los paquetes en R son colecciones de funciones y conjunto de datos desarrollados por la comunidad. Estos incrementan la potencialidad de R mejorando las funcionalidades base en R, o añadiendo de nuevas.

# Cargar el paquete "stringr" para poder manipular cadenas.
library(stringr)

# NOTA: En caso de no poder intalar el paquete no te preocupes, R te permite usarla de todas maneras usando la siguente sintaxis .. 
# nombre_libreria::funtion(argumentos), para nuestro ejemplo futuro se vería así ..
# stringr::str_c(nombre, apellido1, apellido2)

# Definimos tres variables donde la primera guradará el nombre de una persona, la segunda el primer apellido y la tercera el segundo apellido.
nombre <- "heriberto"
apellido1 <- "cartas"
apellido2 <- "barrera"

# Podemos lograr formar cadenas de caracteres utilizndo la función str_c():
# Utilizando el paquete "stringr" de R sin instalar..
stringr::str_c(nombre, apellido1, apellido2, sep = " ")

# Cuando instalamos el paquete no es necesario tipear el simbolo "::" para poder usarlo:
str_c(nombre, apellido1, apellido2, sep = " ")

# Guardando el string en una variable:
nombre_completo <- stringr::str_c(nombre, apellido1, apellido2, sep = " ")

# Cambiar el texto a mayusculas:
nombre <- "heriberto"
stringr::str_to_upper(nombre)

# Colocar la primera letra en Mayusculas en las tres variables, y sobreescribiendo la variable:
nombre <- "heriberto"
apellido1 <- "cartas"
apellido2 <- "barrera"

nombre <- stringr::str_to_title(nombre)
apellido1 <- stringr::str_to_title(apellido1)
apellido2 <- stringr::str_to_title(apellido2)

# Eliminar espacios basura al inicio o final:
nombre <- " heriberto "
stringr::str_replace_all(nombre, " ", "")

# Cambiar el texto a minusculas:
nombre <- "HERIBERTO"
stringr::str_to_lower(nombre)

# Remplazar una letra por otra:
nombre <- "heriberto"
stringr::str_replace(nombre, "o", "a")

# Devolviendo la primera letra de la variable nombre:
nombre <- "heriberto"
stringr::str_sub(nombre, start = 1, end = 1)

# Devolviendo la última letra de la variable nombre:
stringr::str_sub(nombre, start = 9, end = 9)

# Longitud de una cadena con la función str_length():
nombre <- "heriberto"
stringr::str_length(nombre)

# Slices en R:
# Los slices en R hacen referencia a rebanadas, donde puedes cortar una cadena de caracteres en las partes que desees. Para ello necesitamos conocer el número de letras que formar el string.
# NOTA: En R el conteo empieza por el número 1. A diferencia de Python donde se empieza de 0:
nombre <- "heriberto"
stringr::str_sub(nombre, start = 1, end = 4)

# Partiendo en dos rebanadas el string "heriberto":
stringr::str_sub(nombre, end = 4)
stringr::str_sub(nombre, start = 4)

# Podemos agregar un número más que representarían los pasos o separaciones en las reabanadas. Por ejemplo, quiero una rebanada que valla del dos al ocho, pero con una separación de dos en dos:
nombre <- "heriberto"
nombre <- stringr::str_sub(nombre, start = 2, end = 8)
stringr::str_length(nombre)
sep1 <- stringr::str_sub(nombre, end = 2-4)
sep2 <- stringr::str_sub(nombre, end = 7-4)
sep3 <- stringr::str_sub(nombre, end = 7-6)
sep4 <- stringr::str_sub(nombre, end = 7-8)

nombre <- c(sep1, sep2, sep3, sep4)

# Obteniendo el string completo:
nombre <- "heriberto"
stringr::str_sub(nombre)

# Obteniendo el string de forma inversa o al reves:
nombre <- "heriberto"
stringi::stri_reverse(nombre)