options(digits = 10)

# CAMBIAR AQUÍ: datos de Student A
nota_A <- 8.5
media_A <- 7.9
desviacion_A <- 0.8

# CAMBIAR AQUÍ: datos de Student B
nota_B <- 7.4
media_B <- 7.0
desviacion_B <- 0.5

# Calcular las variables estandarizadas
z_A <- (nota_A - media_A) / desviacion_A
z_B <- (nota_B - media_B) / desviacion_B

# Mostrar resultados
cat("Student A - standardized score:", z_A, "\n")
cat("Student B - standardized score:", z_B, "\n")

# Comparar los resultados relativos
if (z_A > z_B) {
  cat("Student A performed relatively better.\n")
} else if (z_B > z_A) {
  cat("Student B performed relatively better.\n")
} else {
  cat("Both students performed equally relative to their exams.\n")
}