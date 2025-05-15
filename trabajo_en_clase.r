temp <- runif(10000,min=25,max=35)

hist(temp, 
     main = "Temperaturas en la ciudad de La Paz", 
     xlab = "Temperatura (°C)", 
     ylab = "Frecuencia", 
     col = "lightblue", 
     border = "black",
    breaks = 9,
     xlim = c(25, 35))


# Tabla con dos variables
df <- data.frame(
    "Tunif"=runif(1000,min=25,max=35),
    "Tnorm"=rnorm(1000,mean=30,sd=2)
)

# Histograma de dos variables
par(mfrow=c(1,2))
hist(df$Tunif, 
     main = "Temperaturas Distribución Uniforme", 
     xlab = "Temperatura (°C)", 
     ylab = "Frecuencia", 
     col = "lightblue", 
     border = "black",
    breaks = 9,
     xlim = c(25, 35))
hist(df$Tnorm, 
     main = "Temperaturas Distribución Normal", 
     xlab = "Temperatura (°C)", 
     ylab = "Frecuencia", 
     col = "lightblue", 
     border = "black",
    breaks = 9,
     xlim = c(25, 35))