options(digits = 10)

# Introducir els límites de los intervalos
x <- c(0, 10, 20, 30)
y <- c(0, 5, 15, 25)

# Introducir la tabla de frecuencias absolutas
frequency <- matrix(c(
  20, 30, 10,
  15, 25, 12,
  8, 18, 22
), nrow = length(x) - 1, byrow = TRUE)

# Calcular amplitudes de los intervalos
dx <- diff(x)
dy <- diff(y)

# Calcular el área de cada base
S <- outer(dx, dy)

# Calcular las alturas del stereogram
h <- frequency / S

# Mostrar los resultados
cat("Absolute frequencies:\n")
print(frequency)

cat("Base areas:\n")
print(S)

cat("Stereogram heights:\n")
print(h)