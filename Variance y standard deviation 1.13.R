options(digits = 10)

# CAMBIAR AQUÍ: introducir los datos
datos <- c(2, 4, 6)

# Calcular el número de observaciones y la media
N <- length(datos)
media <- sum(datos) / N

# Calcular las diferencias respecto a la media
diferencias <- datos - media

# Elevar las diferencias al cuadrado
diferencias_cuadradas <- diferencias^2

# Calcular la varianza dividiendo entre N
varianza <- sum(diferencias_cuadradas) / N

# Calcular la desviación estándar
desviacion_estandar <- sqrt(varianza)

# Mostrar los resultados
cat("Number of observations:", N, "\n")
cat("Mean:", media, "\n")
cat("Variance:", varianza, "\n")
cat("Standard deviation:", desviacion_estandar, "\n")