options(digits = 10)

# CAMBIAR AQUÍ: datos del ejercicio
datos <- c(0, 0, 2, 2, 2, 2, 3, 3, 4, 4, 7, 7)

# Número total de observaciones
N <- length(datos)

# Calcular los momentos ordinarios
m0 <- mean(datos^0)
m1 <- mean(datos^1)
m2 <- mean(datos^2)

# Calcular la varianza poblacional usando los momentos
varianza <- m2 - m1^2

# Mostrar resultados
cat("Sample size:", N, "\n")
cat("Ordinary moment m0:", m0, "\n")
cat("Ordinary moment m1:", m1, "\n")
cat("Ordinary moment m2:", m2, "\n")
cat("Population variance:", varianza, "\n")