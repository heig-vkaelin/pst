# ----------------------------------------------------------------
# Exercice 10
# ----------------------------------------------------------------
setwd("/Users/Valentin/code/heig/pst/Exercices")
trees <- read.table("DonneesExos/trees.txt", header = TRUE)

# a)
plot(
  x = trees$Diametre,
  y = trees$Volume,
  xlab = "Diamètre (pouces)",
  ylab = "Volume (pieds cubes)",
  main = "Volume des arbres en fonction du diamètre",
  asp = .2,
  pch = 3
)

# b)
# Valeur atypique: la plus grande en x et y.

# c)
cor(trees$Diametre, trees$Volume)

# Coefficient de corrélation linéaire qui est très élevé.
# Résultat en accord avec le graphique, on voit bien la corrélation linéaire.

# d)
# Surtout le point le plus grand (20.6, 77)

# Version sans le point extremum
trees2 <- trees[1:30,]
cor(trees2$Diametre, trees2$Volume)

# Coeff plus petit donc on remarque que ce point nous forçait à voir cette
# corrélation linéaire même si c'est léger.

# Version avec diamètre au carré
cor(trees2$Diametre ^2, trees2$Volume)

# Version avec diamètre au cube
cor(trees2$Diametre ^3, trees2$Volume)

