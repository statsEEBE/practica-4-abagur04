#dbinom()
#pbinom()
#pnbinom()
#dnbinom()
#dpois() = f(x)
#ppois() = F(X)
#qpois() = F^(-1)
#dexp() 
#pexp()
#rexp() SIMULA TANTOS EXPERIMENTOS
#dnorm()
#pnorm()
#qnorm()

# Primero, miramos P(X=20), que sería la probabilidad de que tenga 20 llamadas
# en 1h (intervalo dado)

# para la Poisson, f(x)=P(X=x)=exp(-lambda)*lambda^x/x!, siendo 
# E(X)=lambda=25 EN UNA HORA, SI ME CAMBIAN EL INTERVALO TENGO QUE HACER 
# UNA REGLA DE 3 EN LAMBDA

# EL 25 ES PARA ESTA VARIABLE ALEATORIA, NO PARA LA VARIABLE QUE NOS PREGUNTAN
# EN LA PREGUNTA 1

p_X20 <- exp(-25)*(25^20)/factorial(20)
p_X20

dpois(20,25) # esto es p_X20 porque p_X20=f(20)

# graficamos f(x)

x <- 0:50
f <- dpois(x,25)
plot(x, f, type="h", col="red") # h para que sean chinchetas

# ahora, calcularemos la probabilidad de tener, como mucho, 
# 20 llamadas: P(X<=20)=F(20)

ppois(20,25)

# ahora, calcularemos la probabilidad de tener en 18 y 
# 22 llamadas: P(18<=X<=22)=F(22)-F(17), no 18 porque queremos incluir el 18
# en nuestra probabilidad

ppois(22,25)-ppois(17,25)

# graficamos F(x)

y <- 0:50
g <- ppois(x,25)
plot(y, g, type="s", col="red") # s para que sean escalones


qpois(0.5,25) # calculamos la mediana: F(X)=0,5 --> X=F^(-1)(0,5)
qpois(0.25,25) # primer cuartil



# PREGUNTA 1 

# la exponencial es la función de densidad que mide el tiempo de espera 
# entre dos eventos de Poisson, porque el tiempo es una variable contínua

# la función de densidad de la que hablamos es: f(t) = lambda*exp(-lambda*t), 
# siendo lambda la esperanza de la Poisson EN UN INTERVALO DE 1H, porque como 
# las unidades de la pregunta son horas, las lambda también ha de ser 1 de la 
# unidad que nos pidan, en este caso lambda de 1 hora.

# si nos dijesen en 1 día, hemos de multiplicar lambda por 24 para que nos de 
# la media de llamadas en 1 día

# la respuesta de esta pregunta es 0, porque es una variable continua y 
# le estamos preguntando el valor en su función de masa de probabilidad


# PREGUNTA 2

1-pexp(0.052, 25) # 1-F(0.052)

# graficamos función de densidad
t <- seq(0, 1, 0.01)
plot(t, dexp(t,25), type="l", col="red") # l porque es contínua

# graficamos función de distribución
plot(t, pexp(t,25), type="l", col="red")


# PREGUNTA 3

rexp(500000,25) # vector que del tiempo que tuve que esperar entre dos llamadas 
# al realizar 500000 experimentos, un valor del vector por cada experimento

mean(rexp(500000,25)) # cuando n tiende a infinito, 
# la media tiende a la esperanza, que la esperanza de una 
# exponencial es 1/lambda

