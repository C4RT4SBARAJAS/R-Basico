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


# Función input() ---------------------------------------------------------

# Esta función te permite agregar datos a tus variables de forma más cómoda:
edad1 <- readline("Ingresa tu edad: ")
edad2 <- readline("Ingresa tu edad: ")

# Cambia un tipo de dato a otro tipo en R ---------------------------------
# Cabiar un datos de tipo caracter a númerico usando la función as.integer():
edad1 <- "21"
edad1 <- as.integer(edad1)

# Cabiar un decimal a un entero usando la función int()
edad2 <- 21.999483
edad <- round(edad2)

# Redondeando a 2 decimales:
edad <- round(edad2, 2)

# Cambiando un númerico a string usando la función as.character():
edad <- 21
edad <- as.character(edad)

# Operadores lógicos ------------------------------------------------------
# Definamos dos variables que describen la situación de un estudiante llamado Heriberto: 
estudia <- TRUE
trabaja <- FALSE

# Realizando algúnas preguntas sobre Heriberto:
# 1. ¿Heriberto estudia y trabaja?
estudia & trabaja
# 2. ¿Heriberto estudia o almenos trabaja?
estudia | trabaja

# Invirtiendo el valor de las variables.
! estudia
! trabaja

# Operadores de comparación -----------------------------------------------
# Definamos 3 variables que guardan las edades de tres personas diferentes:
heriberto <- 22
erika <- 22
arlet <- 20

# Realizando algúnas preguntas sobre las edades:
# 1. ¿La edad de heriberto es igual a la edada de erika?
heriberto == erika
# 2. ¿La edad de heriberto es mayor que la edad de erika?
heriberto > erika
# 3. ¿La edad de erika es menor a la edad de arlet?
erika < arlet
# 4. ¿La edad de erika es mayor o igual a la edad de arlet?
erika >= arlet
# 5. ¿La edada de arlet es menor o igual a la edad de heriberto?
arlet <= heriberto
# 6. ¿La edad de erika es distinta a la edad de heriberto?
erika != heriberto

# Condicionales en R ------------------------------------------------------
# Generemos 2 respuestas en base a mi edad, teniendo en cuenta que tengo 22 años. Respuestas: Sí mi edad es menor a 18 años entonces soy menor de edad y sí no entonces soy mayor de edad.

mi_edad <- 22
# Una condicional en R luce de la siguiente manera:
if (mi_edad < 18) {
  print("Soy menor de edad")
} else {
  print("Soy mayor de edad")
}

# Usando la función ifelse():
mi_edad <- 22
ifelse(mi_edad < 18, "Soy menor de edad", "Soy mayor de edad")

# Codicionales booleanas en R ---------------------------------------------
# Generemos 3 respuestas de acuerdo a mi estatura en centímetros, considerando que mido 170 cm. Respuestas: Sí mi estatura es menor a 170 cm entonces soy bajo, sí mi estatura esta entre los 170 y 179 cm entonces soy alto, y sí no es que soy muy alto.

mi_estatura <- 170
# La condicional luce de la siguiente manera:
if (mi_estatura < 170) {
  print("Soy bajo")
} else if (mi_estatura >= 170 & mi_estatura <= 179) {
  print("Soy alto")
} else {
  print("Soy muy alto")
}

# Funciones en R ----------------------------------------------------------
# A continuación, repetimos dos líneas de codigo intencionalmente.
print("Ingresa tu nombre: ")
print("Ingresa tu edad: ")
print("Ingresa tu nombre: ")
print("Ingresa tu edad: ")
print("Ingresa tu nombre: ")
print("Ingresa tu edad: ")

# Las funciones nos evitan repetir líneas de código guardando ese código en funciones que nosotros mismos creamos. Las funciones son una buena práctica. Nuestra función se vería así:
mi_funcion <- function() {
  print("Ingresa tu nombre: ")
  print("Ingresa tu edad: ")
}

# Para ejectur estas lineas de código llamamos a al función el número de veces que queramos:
mi_funcion()
mi_funcion()
mi_funcion()

# Agumentos en una función ------------------------------------------------
# Los argumentos funcionan como variables dentro de una función, es el valor que cambia. 

# A continuación, repetimos un bloque de 4 líneas de código intencionalmente.
print("Hola")# Bloque 1
print("Muchas felicidades")
print("Elejiste la opción 1")# Línea diferente
print("Hasta luego")
print("Hola")# Bloque 2
print("Muchas felicidades")
print("Elejiste la opción 2")# Línea diferente
print("Hasta luego")
print("Hola")# Bloque 3
print("Muchas felicidades")
print("Elejiste la opción 3")# Línea diferente
print("Hasta luego")

# Como pudiste observar hay 3 líneas de códigos comunes en cada bloque de código.
# Ahora escribamos este código de una forma más corta usando una función y un parámetro:
respuestas <- function(mensaje) {
print("Hola")
print("Muchas felicidades")
print(mensaje)
print("Hasta luego")
}

# Para generar cada bloque de código de 4 líneas llamamos a la función creada, modificando unicamente el parámetro mensaje:
respuestas("Elegiste la opción 1")
respuestas("Elegiste la opción 2")
respuestas("Elegiste la opción 3")