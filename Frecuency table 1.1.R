# ==========================================
# CHAPTER 1 - EXERCISE 1
# FREQUENCY TABLE
# ==========================================

options(digits = 10)

# CAMBIAR AQUÍ: introducir los datos del ejercicio
datos <- c(6, 8, 6, 8, 6, 8, 12, 6, 8, 8,
           6, 8, 8, 8, 12, 12, 8, 8, 12, 6,
           8, 6, 6, 8, 12, 6, 6, 6, 6, 6)

# Paso 1: ordenar los valores diferentes
# Cada valor diferente será una fila de la tabla
valores <- sort(unique(datos))

# Paso 2: calcular el tamaño de la muestra
N <- length(datos)

# Paso 3: contar cuántas veces aparece cada valor
# Esta es la absolute frequency: ni
ni <- c()

for (i in 1:length(valores)) {
  ni <- c(ni, sum(datos == valores[i]))
}

# Paso 4: calcular la relative frequency: fi = ni / N
fi <- ni / N

# Paso 5: calcular la cumulative absolute frequency
# Se suman las frecuencias desde el primer valor
Ni <- c()
acumulado <- 0

for (i in 1:length(ni)) {
  acumulado <- acumulado + ni[i]
  Ni <- c(Ni, acumulado)
}

# Paso 6: calcular la cumulative relative frequency
# Fórmula: Fi = Ni / N
Fi <- Ni / N

# Paso 7: construir y mostrar la tabla
tabla <- data.frame(
  Price = valores,
  Absolute_Frequency = ni,
  Relative_Frequency = fi,
  Cumulative_Absolute = Ni,
  Cumulative_Relative = Fi
)

cat("TOTAL NUMBER OF OBSERVATIONS:", N, "\n\n")
cat("FREQUENCY TABLE:\n")
print(tabla, row.names = FALSE)

# Comprobaciones
cat("\nSUM OF ABSOLUTE FREQUENCIES:", sum(ni), "\n")
cat("SUM OF RELATIVE FREQUENCIES:", sum(fi), "\n")