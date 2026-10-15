options(digits = 10)

# CAMBIAR AQUÍ: datos del ejercicio
datos <- c(0, 0, 2, 2, 2, 2, 3, 3, 4, 4, 7, 7)

# Calcular la media
media <- mean(datos)

# Calcular los momentos centrales
mu0 <- mean((datos - media)^0)
mu1 <- mean((datos - media)^1)
mu2 <- mean((datos - media)^2)
mu3 <- mean((datos - media)^3)
mu4 <- mean((datos - media)^4)

# Mostrar resultados
cat("Central moment mu0:", mu0, "\n")
cat("Central moment mu1:", mu1, "\n")
cat("Central moment mu2:", mu2, "\n")
cat("Central moment mu3:", mu3, "\n")
cat("Central moment mu4:", mu4, "\n")