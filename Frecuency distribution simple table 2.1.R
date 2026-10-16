options(digits = 10)

# CAMBIAR AQUÍ: datos del ejercicio
C <- c(0, 1, 1, 0, 1, 0, 1, 1, 1, 1,
       1, 0, 1, 0, 1, 1, 2, 0, 1, 2)

E <- c(0, 1, 1, 1, 1, 1, 1, 1, 0, 0,
       1, 1, 1, 0, 0, 0, 0, 1, 1, 0)

# Tabla de frecuencias absolutas conjuntas
tabla <- table(C, E)
tabla

# Añadir totales marginales
addmargins(tabla)

# Tabla de frecuencias relativas conjuntas
prop.table(tabla)