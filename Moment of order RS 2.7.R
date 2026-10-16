options(digits = 10)

# CAMBIAR AQUÍ: valores de las variables
valores_X <- c(1, 2)
valores_Y <- c(1, 2)

# CAMBIAR AQUÍ: frecuencias absolutas de cada fila
fila1 <- c(1, 1)
fila2 <- c(1, 1)

# Guardar los datos
datos <- list(fila1, fila2)

# CAMBIAR AQUÍ: orden del momento y punto de referencia
#Punto de referencia: ordinario(0,0), central (medias)

r <- 1
s <- 0
a <- 0
b <- 0

# Detectar dimensiones
filas <- length(datos)
columnas <- length(datos[[1]])

# Calcular el total de observaciones
N <- 0

for (i in 1:filas) {
  N <- N + sum(datos[[i]])
}

# Calcular el momento M_rs(a,b)
momento <- 0

for (i in 1:filas) {
  for (j in 1:columnas) {
    
    # Frecuencia relativa de la celda
    frecuencia_relativa <- datos[[i]][j] / N
    
    # Aportación de esta celda al momento
    aportacion <- (valores_X[i] - a)^r *
      (valores_Y[j] - b)^s *
      frecuencia_relativa
    
    momento <- momento + aportacion
  }
}

print("Moment:")
print(momento)