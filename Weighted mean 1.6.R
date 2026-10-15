options(digits = 10)

# CAMBIAR AQUÍ: valores y sus pesos correspondientes
valores <- c(2.6, 3.7, 5.1, 4.9, 6.4)
pesos <- c(1, 1, 1, 2, 3)

# Sumar los pesos
suma_pesos <- sum(pesos)

# Multiplicar cada valor por su peso y sumar
suma_ponderada <- sum(valores * pesos)

# Calcular la media ponderada
media_ponderada <- suma_ponderada / suma_pesos

# Mostrar los resultados
cat("Sum of weighted values:", suma_ponderada, "\n")
cat("Sum of weights:", suma_pesos, "\n")
cat("Weighted mean:", media_ponderada, "\n")