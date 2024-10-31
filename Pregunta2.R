# PREGUNTA 1
# E(T) = 10000 = 1/lambda, P(T>=13000)?

1-pexp(13000,1/10000)


# PREGUNTA 2
# Si P(T>=x)=0.2=1-P(T<=x), x?

qexp(0.8,1/10000)



# PREGUNTA 1

# 100 experimentos, semilla es el número 85, media de los resultados?

set.seed(85) # semilla, ejecuto immediatamente antes del mean
sim <- rexp(100, 1/10000)  # guardamos la simulación en una variable para que 
# siempre se refiera al mismo vector
mean(sim)


# PREGUNTA 2

# mediana?

median(sim)


# PREGUNTA 3

# varianza?

var(sim)

