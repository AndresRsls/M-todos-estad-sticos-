options(digits = 10)

# CAMBIAR AQUÍ: introducir los datos del ejercicio
datos <- c(7, 11, 11, 8, 12, 7, 6, 6)

# Calcular el número total de observaciones
N <- length(datos)

# Calcular la suma de todos los datos
suma <- sum(datos)

# Calcular la media aritmética
media <- suma / N

# Mostrar los resultados
cat("Number of observations (N):", N, "\n")
cat("Sum of observations:", suma, "\n")
cat("Arithmetic mean:", media, "\n")