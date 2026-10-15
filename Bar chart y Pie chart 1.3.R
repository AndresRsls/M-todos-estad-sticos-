# ==========================================
# CHAPTER 1 - EXERCISE 3A
# BAR CHART AND PIE CHART
# Ejemplo original: página 16
# ==========================================

options(digits = 10)

# CAMBIAR AQUÍ: nombres de las secciones
secciones <- c("Chemistry", "Mathematics", "Physics",
               "Biology", "Geology")

# CAMBIAR AQUÍ: número de estudiantes por sección
ni <- c(1500, 750, 1000, 500, 250)

# Calcular el número total de estudiantes
N <- sum(ni)

# Calcular las frecuencias relativas
# Fórmula: fi = ni / N
fi <- ni / N

# Calcular los porcentajes
porcentaje <- fi * 100

# Mostrar los datos y sus frecuencias
cat("TOTAL NUMBER OF STUDENTS:", N, "\n\n")

tabla <- data.frame(
  Section = secciones,
  Absolute_Frequency = ni,
  Relative_Frequency = fi,
  Percentage = porcentaje
)

print(tabla, row.names = FALSE)

# BAR CHART: gráfico de barras
# La altura de cada barra representa la frecuencia absoluta
barplot(ni,
        names.arg = secciones,
        main = "Students by Section",
        xlab = "Section",
        ylab = "Number of Students",
        las = 2)

# PIE CHART: gráfico circular
# Cada porción representa la frecuencia relativa
pie(ni,
    labels = paste(secciones,
                   sprintf("%.4f%%", porcentaje)),
    main = "Students by Section")