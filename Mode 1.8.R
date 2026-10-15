options(digits = 10)

# CAMBIAR AQUÍ: introducir los datos
datos <- c(7, 11, 11, 8, 12, 9, 6, 6)

# Obtener los valores distintos
valores <- sort(unique(datos))

# Contar cuántas veces aparece cada valor
frecuencias <- numeric(length(valores))

for (i in 1:length(valores)) {
  frecuencias[i] <- sum(datos == valores[i])
}

# Identificar la frecuencia máxima
frecuencia_maxima <- max(frecuencias)

# Obtener todos los valores que alcanzan esa frecuencia
modas <- valores[frecuencias == frecuencia_maxima]

# Mostrar los resultados
cat("Values:", valores, "\n")
cat("Frequencies:", frecuencias, "\n")

if (frecuencia_maxima == 1) {
  cat("No mode: all values occur once.\n")
} else {
  cat("Mode(s):", modas, "\n")
}