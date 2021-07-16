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
# Definimos tres variables donde la primera guradará el nombre de una persona, la segunda el primer apellido y la tercera el segundo apellido.
nombre <- "heriberto"
apellido1 <- "cartas"
apellido2 <- "barrera"

# Podemos sumar caracteres logrando formar cadenas:
completo <- c(nombre, apellido1)
completo