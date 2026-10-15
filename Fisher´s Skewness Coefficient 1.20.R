options(digits = 10)

# CAMBIAR AQUÍ: datos del ejercicio
datos <- c(1, 2, 2, 3, 4, 5, 7)

# Calcular la media
media <- mean(datos)

# Calcular la desviación estándar poblacional
desviacion <- sqrt(mean((datos - media)^2))

# Calcular el tercer momento central
mu3 <- mean((datos - media)^3)

# Calcular el coeficiente de asimetría de Fisher
g1 <- mu3 / desviacion^3

# Mostrar resultados
cat("Third central moment:", mu3, "\n")
cat("Fisher skewness coefficient:", g1, "\n")