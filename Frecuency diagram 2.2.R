options(digits = 10)

# CAMBIAR AQUÍ: datos del ejercicio
C <- c(0, 1, 1, 0, 1, 0, 1, 1, 1, 1,
       1, 0, 1, 0, 1, 1, 2, 0, 1, 2)

E <- c(0, 1, 1, 1, 1, 1, 1, 1, 0, 0,
       1, 1, 1, 0, 0, 0, 0, 1, 1, 0)

# Joint frequency table: rows C, columns E
tabla <- table(C, E)
tabla

# Bar chart with C values on the horizontal axis
barplot(t(tabla),
        beside = TRUE,
        names.arg = rownames(tabla),
        main = "Joint Frequency Diagram",
        xlab = "Number of Checks (C)",
        ylab = "Absolute Frequency",
        legend.text = rownames(tabla),
        args.legend = list(title = "Serious Errors (E)"))