setwd("/Users/Valentin/code/heig/pst/Exercices")

# Exemples du prof
plot(0:10, dpois(0:10, 6)) # proba de qqch qui arrive 6x par minute

# ----------------------------------------------------------------
# Exercice 1
# ----------------------------------------------------------------

# a)
plot(0:20, dbinom(0:20, 20, 0.5)) # 21 coefficiants de la proba 0.5
plot(0:20, dbinom(0:20, 20, 1/3)) # 21 coefficiants de la proba 1/3


# ----------------------------------------------------------------
# Exercice 2
# ----------------------------------------------------------------

# a)
x = 2 # nb de succès voulu
n = 20  # nb de tests
proba = 0.1 # la proba que la communication échoue
pbinom(x, n, proba, lower.tail = FALSE)

1 - sum(dbinom(0:2, 20, .1)) # variante du prof

# b)
nx = 4 # nb de succès voulus
np = 0.1 # la proba que la communication échoue
dgeom(nx, np)

# c)
choose(9, 3) * (1/10)^4 * (9/10)^6 # voir iPad pour + d'infos
