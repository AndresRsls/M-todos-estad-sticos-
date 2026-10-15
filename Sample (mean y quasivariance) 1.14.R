options(digits = 10)

# CAMBIAR AQUÍ: introducir los datos de la muestra
datos <- c(12, 10, 9, 9, 10)

# Número de observaciones
n <- length(datos)

# Sample mean
media_muestral <- mean(datos)

# Sample quasi-variance: divide entre n - 1
cuasivarianza <- sum((datos - media_muestral)^2) / (n - 1)

# Sample standard deviation
desviacion_muestral <- sqrt(cuasivarianza)

# Mostrar los resultados
cat("Sample size:", n, "\n")
cat("Sample mean:", media_muestral, "\n")
cat("Sample quasi-variance:", cuasivarianza, "\n")
cat("Sample standard deviation:", desviacion_muestral, "\n")