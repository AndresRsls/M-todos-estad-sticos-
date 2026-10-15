options(digits = 10)

# CAMBIAR AQUÍ: introducir los datos
datos <- c(5, 2, 3, 3, 3, 5, 7)

# Calcular la media y la mediana
N <- length(datos)
media <- sum(datos) / N
datos_ordenados <- sort(datos)

if (N %% 2 == 1) {
  mediana <- datos_ordenados[(N + 1) / 2]
} else {
  mediana <- (
    datos_ordenados[N / 2] +
      datos_ordenados[N / 2 + 1]
  ) / 2
}

# Calcular el MSE respecto a la media y la mediana
MSE_media <- sum((datos - media)^2) / N
MSE_mediana <- sum((datos - mediana)^2) / N

# Mostrar los resultados
cat("MSE about the mean:", MSE_media, "\n")
cat("MSE about the median:", MSE_mediana, "\n")