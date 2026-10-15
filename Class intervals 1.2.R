# ==========================================
# CHAPTER 1 - EXERCISE 2
# CLASS INTERVALS AND CLASS MARKS
# ==========================================

options(digits = 10)

# CAMBIAR AQUÍ: límites de los intervalos
limite_inferior <- c(10, 20, 30)
limite_superior <- c(20, 30, 40)

# CAMBIAR AQUÍ: frecuencias absolutas de cada intervalo
ni <- c(5, 8, 7)

# Número de intervalos
k <- length(limite_inferior)

# Comprobar que todos los vectores tienen la misma longitud
if (length(limite_superior) != k || length(ni) != k) {
  stop("Error: los vectores deben tener la misma longitud.")
}

# Calcular la amplitud de cada intervalo
# Fórmula: ai = límite superior - límite inferior
ai <- limite_superior - limite_inferior

# Calcular la marca de clase
# Fórmula: xi = (límite inferior + límite superior) / 2
xi <- (limite_inferior + limite_superior) / 2

# Construir la tabla de resultados
tabla <- data.frame(
  Lower_Limit = limite_inferior,
  Upper_Limit = limite_superior,
  Absolute_Frequency = ni,
  Interval_Width = ai,
  Class_Mark = xi
)

# Mostrar los resultados
cat("CLASS INTERVALS TABLE\n")
print(tabla, row.names = FALSE)

cat("\nTOTAL NUMBER OF OBSERVATIONS:", sum(ni), "\n")