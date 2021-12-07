# Lois discrètes : affichage des probabilités

# Loi binomiale (somme de succès)
plot(0:20, dbinom(0:20, 20, 0.3))

# Loi géométrique (nombre d'essais avant le premier succès)
plot(0:20, dgeom(0:20, 0.3))

# Loi de Poisson (nombre d'évènements par unité de temps)
plot(0:20, dpois(0:20, 5))

# NB. Lorsque n est grand et p petit, une v.a. de Poisson 
# de loi λ=n·p approche une v.a. binomiale B(n, p)


# Lois continues : affichage des densités

# Loi uniforme
curve(dunif(x, -1, 2), -5, 5)

# Loi exponentielle (temps d'attente dans un processus de Poisson)
curve(dexp(x, .7), -5, 5)

# NB. La loi géométrique est une version discrète de l'exponentielle.

# Loi normale
curve(dnorm(x, 2, 0.8), -5, 5)

# NB. Lorsque n est grand (et lorsque np(1-p) est grand),
# une v.a de loi binomiale est approchée par une v.a. de loi
# normale d'espérance np et de variance np(1-p).

