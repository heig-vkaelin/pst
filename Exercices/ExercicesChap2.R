setwd("/Users/Valentin/code/heig/pst/Exercices")

# ----------------------------------------------------------------
# Exercice 2
# ----------------------------------------------------------------
ch_mg <- scan("DonneesExos/carbon.txt")

# a)
# Attributs de seq: from, to, by
table(cut(ch_mg, seq(100, 600, 50)))

# Autre option de faire une table de fréquence via un hist + b)
h <- hist(ch_mg, breaks = seq(100, 600, 50))
h$breaks
h$counts


# ----------------------------------------------------------------
# Exercice 6
# ----------------------------------------------------------------
sodium <- read.table("DonneesExos/sodium.txt", header = TRUE)

# a)
summary(sodium)

sd(sodium$beef, na.rm = TRUE)
sd(sodium$meat, na.rm = TRUE)
sd(sodium$poultry, na.rm = TRUE)

# Plus de sel dans le poulet que dans la viande et le boeuf.

# b)
boxplot(
  sodium$beef,
  sodium$meat,
  sodium$poultry,
  names = c("Boeuf", "Viande mélangée", "Poulet"),
  main = "Sel dans les types d'Hot-dog"
)

# c)
# Boîtes assez superposées, étalement. Incertitude élevée dans chaque catégorie
# vu la taille interquartile.


# ----------------------------------------------------------------
# Exercice 10
# ----------------------------------------------------------------
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

