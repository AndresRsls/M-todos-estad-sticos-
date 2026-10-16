options(digits = 10)

# CAMBIAR AQUÍ: categorías de X e Y
valores_X <- c(0, 1, 2, 3)
valores_Y <- c(-2, -1, 0, 1, 2)

# CAMBIAR AQUÍ: frecuencias de cada fila
fila1 <- c(2, 7, 12, 10, 4)
fila2 <- c(5, 14, 23, 15, 7)
fila3 <- c(12, 31, 23, 8, 3)
fila4 <- c(20, 18, 8, 2, 1)

# Guardar las filas en una lista
datos <- list(fila1, fila2, fila3, fila4)

# CAMBIAR AQUÍ: condiciones solicitadas
condicion_X <- 2
condicion_Y <- -1

# Detectar las dimensiones de la tabla
filas <- length(datos)
columnas <- length(datos[[1]])

# Encontrar la fila de X = 2
fila_condicion <- match(condicion_X, valores_X)

# Distribución de Y condicionada a X = 2
total_fila <- sum(datos[[fila_condicion]])
resultado_Y <- c()

for (j in 1:columnas) {
  resultado_Y[j] <- datos[[fila_condicion]][j] / total_fila
}

print("Distribution of Y given X:")
print(resultado_Y)

# Encontrar la columna de Y = -1
columna_condicion <- match(condicion_Y, valores_Y)

# Distribución de X condicionada a Y = -1
total_columna <- 0

for (i in 1:filas) {
  total_columna <- total_columna +
    datos[[i]][columna_condicion]
}

resultado_X <- c()

for (i in 1:filas) {
  resultado_X[i] <-
    datos[[i]][columna_condicion] / total_columna
}

print("Distribution of X given Y:")
print(resultado_X)