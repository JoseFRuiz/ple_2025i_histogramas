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


HistogramasTabla <- function(df){
     namvars <- names(df)
     n <- length(namvars)
     par(mfrow = c(1, n)) # Una fila, n columnas
     for(var in namvars){
          # Histograma para cada variable
          if(is.numeric(df[[var]])){
               hist(df[[var]], 
                    main = var, 
                    xlab = "Rangos", 
                    ylab = "Frecuencia", 
                    col = "lightblue", 
                    border = "black",
                    breaks = 9)
          } else{
               # Gráfico de barras para variables categóricas
               barplot(table(df[[var]]), 
                       main = var, 
                       xlab = "Categoría", 
                       ylab = "Frecuencia", 
                       col = "lightblue", 
                       border = "black")
          }
     }
     par(mfrow = c(1, 1)) # Regresar a una sola gráfica
}


tabla <- data.frame(
    "Tunif"=runif(1000,min=25,max=35),
    "Texp"=rexp(1000,rate = 1/30),
    "TnormA"=rnorm(1000,mean=0,sd=2),
    "TnormB"=rnorm(1000,mean=10,sd=2),
    "Enteros"=sample(1:10,10,replace = TRUE),
    "Categoricos"=sample(LETTERS[1:26],1000,replace = TRUE)
)

HistogramasTabla(tabla)