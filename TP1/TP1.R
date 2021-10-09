# ----------------------------------------------------------------
# Exercice 1. Installer R et RStudio
# ----------------------------------------------------------------

# d)
v1 <- c(1, 8, 9, 4, 5)
print(v1[3])

v1 * 2
print(v1)

# ----------------------------------------------------------------
# Exercice 2. Inspecter les deux ensembles de données
# ----------------------------------------------------------------

# a)
setwd("/Users/Valentin/code/heig/pst/TP1")
cpus <- scan("cpus.txt")

# b)
print(cpus)

# c)
print(cpus[9])

# d)
print(cpus[3:15])

# e)
print(cpus[cpus > 186])

# f)
examen <- read.table("examen.txt", header = TRUE)
?read.table # aide sur la commande

# g)
class(cpus)
class(examen)
mode(cpus)
mode(examen)
str(cpus) # str affiche la structure d'un objet R
str(examen) 
# La variable examen est un dataframe contenant 2 vectors groupe et note
# groupe est un vecteur de character et contient les groupes
# note est un vecteur de numeric et contient les notes

# h)
print(examen[1:3, ])
print(examen[2, ])
print(examen[3, 1])
print(examen[1, 2])
print(examen$note)

# ----------------------------------------------------------------
# Exercice 3. Graphiques et indicateurs statistiques sur les CPUs
# ----------------------------------------------------------------

# a)
library(help = "graphics")

graphics::stem(cpus)
graphics::hist(cpus)
graphics::boxplot(cpus, main="Boxplot des CPUS")

# b)
# Distribution des valeurs unimodale et asymétrique. Très étalée sur la droite
# à cause des valeurs atypiques, bien plus grande que le reste des valeurs.
# Supprimer les valeurs plus grandes que le seuil 200
cpus2 <- cpus[cpus < 200]
graphics::hist(cpus2)

# c)
cat("Moyenne cpus:", mean(cpus))
cat("Médiane cpus:", median(cpus))

cat("Moyenne cpus2:", mean(cpus2))
cat("Médiane cpus2:", median(cpus2))

# La fonction summary propose différents indicateurs comme la moyenne ou les
# quartiles pour les données entrées en paramètre.
summary(cpus)
summary(cpus2)

# La moyenne est beaucoup plus impactée que la médiane par les extremums.
# La médiane représente donc ici mieux les données dans les vecteurs contenant
# encore les valeurs atypiques. Pour les autres vecteurs, les résultats sont
# quasiment similaires entre la moyenne et la médiane.

# d)
# (1) 7 en moins à chaque valeur:
# Intuition: moins 7 à la médiane et à la moyenne
print(mean(cpus - 7))
print(median(cpus - 7))

# (2) divise par 3 chaque valeur:
# Intuition: médiane et moyenne divisées par 3
print(mean(cpus / 3))
print(median(cpus / 3))

# (3) ajoute un processeur avec comme performance 40:
# Intuition: médiane changée par la valeur ajoutée ou aucun changement
# et moyenne un peu plus basse
cpusWith40 <- c(cpus, 40)
print(mean(cpusWith40))
print(median(cpusWith40))

# e)
print(sd(cpus))
print(sd(cpus2))

# L'écart-type n'est pas un indicateur très robuste. Il est fortement impacté
# par les valeurs extrêmes, comme l'exemple ci-dessus le montre. Car il est
# calculé en mettant au carré la différence avec la moyenne, ce qui accentue
# encore plus l'impact des valeurs extrêmes.

# ----------------------------------------------------------------
# Exercice 4. Différences à l'examen entre groupes
# ----------------------------------------------------------------

# a)
notesA = examen[examen$groupe == "A", 2]
notesB = examen[examen$groupe == "B", 2]

graphics::boxplot(
  notesA,
  notesB, 
  ylab="note",
  names = c("Groupe A", "Groupe B"),
  main = "Notes séparées entre les 2 groupes"
)

summary(notesA)
summary(notesB)

# b)
# La médiane des notes du groupe A se trouve vers 3.5 et celle du groupe B
# vers 4.5. La meilleure note de chaque groupe est également très espacée.
# Celle du groupe A se trouve vers 4.5 et celle du groupe B vers 6.

# Pour la dispersion, elles sont assez semblables car on observe que les tailles
# des deux boxplots entre le 1er et le 4ème quartiles sont plus ou moins
# similaires.
# Cependant, le 50% du corps de la boîte du groupe A est plus grand que celui
# du groupe B. Ce qui signifie que les notes du groupe B sont plus rapprochées
# au alentours de la médiane et que celles du groupes A sont légèrement plus
# dispersées. On observe également que les notes du groupe A sont plus étendues
# sous la médiane et que c'est l'inverse pour le groupe B.

# On peut donc affirmer que le groupe B a mieux réussi l'examen que le groupe A
# mais qu'il s'agit surtout des extremums qui font pencher le plus la balance.

# c)
cat("Ecart-type notes du groupe A:", sd(notesA))
cat("Ecart-type notes du groupe B:", sd(notesB))

# Les deux écarts-types sont assez similaires entre les deux groupes.
# Cela explique que la différence de dispersion entre les deux groupes n'est
# pas énorme. La dispersion des notes du groupe A est donc très légèrement plus
# grande que celle du groupe B.

# d)
# Les conclusions sont les mêmes pour les points b) et c): la dispersion est
# assez semblable pour les deux groupes. Cependant, dans les deux cas il s'agit
# du groupe A qui semble être légèrement plus dispersé (au niveau des 
# écarts-types et de l'espacement interquartile). On peut donc affirmer que le
# groupe A a légèrement plus de dispersion si ces petites différences nous
# intéressent.