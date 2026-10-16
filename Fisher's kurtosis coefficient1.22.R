options(digits = 10)

# CAMBIAR AQUÍ: datos del ejercicio
datos <- c(1, 2, 2, 3, 4, 5, 7)

# Calcular la media
media <- mean(datos)

# Calcular la desviación estándar poblacional
desviacion <- sqrt(mean((datos - media)^2))

# Calcular el cuarto momento central
mu4 <- mean((datos - media)^4)

# Calcular el coeficiente de curtosis de Fisher
g2 <- mu4 / desviacion^4 - 3

# Mostrar resultados
cat("Fourth central moment:", mu4, "\n")
cat("Population standard deviation:", desviacion, "\n")
cat("Fisher kurtosis coefficient:", g2, "\n")

# Interpretar el resultado
if (g2 < 0) {
  cat("Platykurtic: less peaked than the normal distribution.\n")
} else if (g2 > 0) {
  cat("Leptokurtic: more peaked than the normal distribution.\n")
} else {
  cat("Mesokurtic: same kurtosis as the normal distribution.\n")
}
