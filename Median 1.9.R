options(digits = 10)

# CAMBIAR AQUÍ: introducir los datos
datos <- c(1, 4, 8, 8, 10, 16, 16, 19)

# Ordenar los datos
datos_ordenados <- sort(datos)

# Contar las observaciones
N <- length(datos_ordenados)

# Calcular la mediana
if (N %% 2 == 1) {
  # Si N es impar, seleccionar el valor central
  posicion <- (N + 1) / 2
  mediana <- datos_ordenados[posicion]
} else {
  # Si N es par, promediar los dos valores centrales
  posicion_izquierda <- N / 2
  posicion_derecha <- posicion_izquierda + 1
  
  mediana <- (
    datos_ordenados[posicion_izquierda] +
      datos_ordenados[posicion_derecha]
  ) / 2
}

# Mostrar los resultados
cat("Ordered data:", datos_ordenados, "\n")
cat("Number of observations (N):", N, "\n")
cat("Median:", mediana, "\n")