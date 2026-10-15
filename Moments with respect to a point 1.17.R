options(digits = 10)

# CAMBIAR AQUÍ: datos del ejercicio
datos <- c(0, 0, 2, 2, 2, 2, 3, 3, 4, 4, 7, 7)

# Número total de observaciones
N <- length(datos)

# Calcular la mediana (Me)
Me <- median(datos)

# Calcular el momento de orden 1 respecto a Me
m1_Me <- mean((datos - Me)^1)

# Calcular el momento de orden 2 respecto a Me
m2_Me <- mean((datos - Me)^2)

# Mostrar resultados
cat("Sample size:", N, "\n")
cat("Median (Me):", Me, "\n")
cat("First moment m1(Me):", m1_Me, "\n")
cat("Second moment m2(Me):", m2_Me, "\n")