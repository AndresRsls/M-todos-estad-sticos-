options(digits = 10)

# CAMBIAR AQUÍ: introducir los datos del ejercicio
datos <- c(2, 5, 3, 4, 7, 0, 11, 2, 3, 8)

# CAMBIAR AQUÍ: introducir los percentiles que se piden
# Q1 = P25, Q2 = P50, Q3 = P75
percentiles <- c(25, 50, 75, 37, 68)

# Ordenar los datos de menor a mayor
datos_ordenados <- sort(datos)

# Calcular el número total de observaciones
N <- length(datos_ordenados)

# Calcular cada percentil usando el método del profesor
for (k in percentiles) {
  
  # Calcular la posición
  posicion <- (k / 100) * N
  
  # Separar la parte entera y la decimal
  E <- floor(posicion)
  D <- posicion - E
  
  # Aplicar la regla de cálculo
  if (D != 0) {
    resultado <- datos_ordenados[E + 1]
  } else {
    resultado <- (
      datos_ordenados[E] +
        datos_ordenados[E + 1]
    ) / 2
  }
  
  # Mostrar el resultado
  cat("P", k, " = ", resultado, "\n", sep = "")
}