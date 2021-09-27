# Exercice 1. Installer R et RStudio

v1 <- c(1, 8, 9, 4, 5)
print(v1[3])

v1*2
print(v1)

# Exercice 2. Inspecter les deux ensembles de données

setwd("/Users/Valentin/code/heig/pst/TP1")
cpus <- scan("cpus.txt")

print(cpus)
print(cpus[9])
print(cpus[3:15])
print(cpus[cpus > 186])

examen <- read.table("examen.txt", header = TRUE)
?read.table # aide sur la commande

class(cpus)
class(examen)
mode(cpus)
mode(examen)
str(cpus) # str affiche la structure d'un objet R
str(examen) 
# La variable examen est un dataframe contenant 2 vectors groupe et note
# groupe est un vecteur de character et contient les groupes
# note est un vecteur de numeric et contient les notes

print(examen[1:3,])
print(examen[2,])
print(examen[3, 1])
print(examen[1, 2])
print(examen$note)

# Exercice 3. Graphiques et indicateurs statistiques sur les CPUs


