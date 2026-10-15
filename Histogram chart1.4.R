# ==========================================
# CHAPTER 1 - EXERCISE 3B
# HISTOGRAM AND FREQUENCY POLYGON
# Datos de la tabla original: página 23
# ==========================================

options(digits = 10)

# CAMBIAR AQUÍ: límites de los intervalos
#Nosotros escojemos los intervalos, agarramos todos los numeros entre 70 y 80, que eran 9, y asi 
inferior <- c(70, 80, 85, 90, 95)
superior <- c(80, 85, 90, 95, 110)

# CAMBIAR AQUÍ: frecuencias absolutas
ni <- c(9, 8, 5, 7, 6)

# Número total de observaciones
N <- sum(ni)

# Calcular las amplitudes
# Fórmula: ai = límite superior - límite inferior
ai <- superior - inferior

# Calcular las marcas de clase
# Fórmula: xi = (límite inferior + límite superior) / 2
xi <- (inferior + superior) / 2

# Frecuencia relativa: fi = ni / N
fi <- ni / N

# Altura del histograma
# Fórmula del profesor: hi = fi / ai
hi <- fi / ai

# Mostrar la tabla calculada
tabla <- data.frame(
  Lower_Limit = inferior,
  Upper_Limit = superior,
  Class_Mark = xi,
  Absolute_Frequency = ni,
  Relative_Frequency = fi,
  Interval_Width = ai,
  Histogram_Height = hi
)

cat("HISTOGRAM DATA:\n")
print(tabla, row.names = FALSE)

# HISTOGRAM
# Cada rectángulo tiene como base el intervalo
# y como altura hi = fi / ai
plot(NA,
     xlim = c(min(inferior), max(superior)),
     ylim = c(0, max(hi) * 1.15),
     main = "Histogram of Temperatures",
     xlab = "Temperature (Fahrenheit)",
     ylab = "Histogram Height")

for (i in 1:length(ni)) {
  rect(inferior[i], 0,
       superior[i], hi[i])
}

# FREQUENCY POLYGON
# Unir las alturas de los rectángulos en sus marcas de clase
# Añadimos extremos con altura cero para cerrar el polígono
amplitud_primera <- ai[1]
amplitud_ultima <- ai[length(ai)]

x_poligono <- c(
  xi[1] - amplitud_primera,
  xi,
  xi[length(xi)] + amplitud_ultima
)

y_poligono <- c(0, hi, 0)

plot(x_poligono, y_poligono,
     type = "o",
     main = "Frequency Polygon",
     xlab = "Temperature (Fahrenheit)",
     ylab = "Histogram Height")
