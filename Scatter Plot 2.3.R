options(digits = 10)

# CAMBIAR AQUÍ: data from the exercise
C <- c(0, 1, 1, 0, 1, 0, 1, 1, 1, 1,
       1, 0, 1, 0, 1, 1, 2, 0, 1, 2)

E <- c(0, 1, 1, 1, 1, 1, 1, 1, 0, 0,
       1, 1, 1, 0, 0, 0, 0, 1, 1, 0)

# Check the data
if (length(C) != length(E) || length(C) == 0) {
  stop("C and E must have the same positive number of observations.")
}

if (!is.numeric(C) || !is.numeric(E) ||
    any(!is.finite(C)) || any(!is.finite(E))) {
  stop("C and E must contain finite numeric values.")
}

# Calculate joint frequencies
tabla <- table(C, E)

# Display joint frequency table with marginal totals
print(addmargins(tabla))

# Convert the frequency table into numeric coordinates
datos <- as.data.frame(tabla)
names(datos) <- c("C", "E", "Frequency")

datos$C <- as.numeric(as.character(datos$C))
datos$E <- as.numeric(as.character(datos$E))

# Keep only observed combinations
datos <- datos[datos$Frequency > 0, ]

# Create the scatter plot without duplicated axes
plot(datos$C, datos$E,
     type = "n",
     xaxt = "n",
     yaxt = "n",
     xlim = range(C) + c(-0.3, 0.3),
     ylim = range(E) + c(-0.3, 0.3),
     main = "Scatter Plot with Joint Frequencies",
     xlab = "Variable C",
     ylab = "Variable E")

# Add the observed values to each axis
axis(1, at = sort(unique(C)))
axis(2, at = sort(unique(E)), las = 1)

# Draw points sized according to their frequencies
points(datos$C, datos$E,
       pch = 19,
       cex = 0.8 + 0.35 * sqrt(datos$Frequency))

# Add frequency labels
text(datos$C, datos$E,
     labels = datos$Frequency,
     pos = 3,
     cex = 0.8)

# Display the joint frequency data
print(datos)