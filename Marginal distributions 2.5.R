options(digits = 10)

# CAMBIAR AQUÍ: introducir las frecuencias de la tabla
# Cada vector representa una fila y puede tener tantas columnas como necesites
fila1 <- c(8, 2, 5)
fila2 <- c(12, 3, 4)
fila3 <- c(6, 7, 9)
fila4 <- c(2, 5, 1)

# Guardar todas las filas en una lista
datos <- list(fila1, fila2, fila3, fila4)

# Número de filas y columnas
numero_filas <- length(datos)
numero_columnas <- length(datos[[1]])

# Crear vectores para guardar los resultados
marginal_X <- c()
marginal_Y <- c()

# Sumar cada fila: marginal frequencies of X
for (i in 1:numero_filas) {
  marginal_X[i] <- sum(datos[[i]])
}

# Sumar cada columna: marginal frequencies of Y
for (j in 1:numero_columnas) {
  suma <- 0
  
  for (i in 1:numero_filas) {
    suma <- suma + datos[[i]][j]
  }
  
  marginal_Y[j] <- suma
}

# Calcular el total de observaciones
N <- sum(marginal_X)

# Mostrar los resultados
print("Marginal frequencies of X:")
print(marginal_X)

print("Marginal frequencies of Y:")
print(marginal_Y)

print("Total number of observations:")
print(N)

# Calcular las frecuencias relativas marginales
print("Marginal relative frequencies of X:")
print(marginal_X / N)

print("Marginal relative frequencies of Y:")
print(marginal_Y / N)