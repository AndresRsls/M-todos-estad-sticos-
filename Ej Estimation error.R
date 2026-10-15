options(digits = 10)
#Ejemplo de ejercicio en el que se pedia sacar mean deviation
#mean squared error y quadratic mean. Y nos daban predicted values
#actual values y absolute frecuency y pedia hacerlo en base 
#al error en la estimación

# CAMBIAR AQUÍ: valores estimados, reales y frecuencias
xi <- c(0, 0, 0, 1, 1, 1, 3, 3, 3)
xi_real <- c(0, 1, 3, 0, 1, 3, 0, 1, 3)
ni <- c(6, 3, 2, 3, 5, 1, 1, 3, 7)

# Calcular los errores de estimación
errores <- xi - xi_real

# Calcular el número total de observaciones
N <- sum(ni)

# Calcular la suma ponderada de errores absolutos
suma_abs <- sum(abs(errores) * ni)

# Calcular la suma ponderada de errores al cuadrado
suma_cuadrados <- sum(errores^2 * ni)

# Calcular las tres medidas
desviacion_media <- suma_abs / N
desviacion_cuadratica_media <- suma_cuadrados / N
media_cuadratica <- sqrt(desviacion_cuadratica_media)

# Mostrar los resultados
cat("Total observations:", N, "\n")
cat("Mean deviation:", desviacion_media, "\n")
cat("Mean squared deviation:", desviacion_cuadratica_media, "\n")
cat("Quadratic mean:", media_cuadratica, "\n")