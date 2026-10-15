options(digits = 10)

# CAMBIAR AQUÍ: datos del tipo A
media_A <- 1495
desviacion_A <- 280

# CAMBIAR AQUÍ: datos del tipo B
media_B <- 1875
desviacion_B <- 310

# Calcular los coeficientes de variación
CV_A <- desviacion_A / abs(media_A) * 100
CV_B <- desviacion_B / abs(media_B) * 100

# Mostrar resultados
cat("Coefficient of variation A (%):", CV_A, "\n")
cat("Coefficient of variation B (%):", CV_B, "\n")

# Comparar la dispersión relativa
if (CV_A > CV_B) {
  cat("Type A has greater relative dispersion.\n")
} else if (CV_B > CV_A) {
  cat("Type B has greater relative dispersion.\n")
} else {
  cat("Both types have equal relative dispersion.\n")
}