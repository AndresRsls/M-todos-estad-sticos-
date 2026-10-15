options(digits = 10)

# CAMBIAR AQUÍ: introducir los datos
datos <- c(5, 2, 3, 3, 3, 5, 7)

# Calcular media y mediana
N <- length(datos)
media <- sum(datos) / N
mediana <- sort(datos)[(N + 1) / 2]

# Calcular la desviación media respecto a cada medida
desviacion_media_media <- sum(abs(datos - media)) / N
desviacion_media_mediana <- sum(abs(datos - mediana)) / N

# Mostrar los resultados
cat("Mean:", media, "\n")
cat("Median:", mediana, "\n")
cat("Mean deviation about the mean:",
    desviacion_media_media, "\n")
cat("Mean deviation about the median:",
    desviacion_media_mediana, "\n")