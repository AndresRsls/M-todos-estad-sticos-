options(digits = 10)

# CAMBIAR AQUÍ: introducir los datos
datos <- c(2, 3, 1, 0, 4, 3)

# Contar las observaciones
N <- length(datos)

# Sumar los cuadrados de los datos
suma_cuadrados <- sum(datos^2)

# Calcular la media cuadrática
media_cuadratica <- sqrt(suma_cuadrados / N)

# Mostrar los resultados
cat("Number of observations (N):", N, "\n")
cat("Sum of squared values:", suma_cuadrados, "\n")
cat("Quadratic mean (RMS):", media_cuadratica, "\n")