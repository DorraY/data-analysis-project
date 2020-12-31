autos1 <- read.csv('autos.csv')
boxplot(autos1)
summary(autos1)
autos <- read.table('autos.csv',header=FALSE, sep=",")
#retrancher moyenne et diviser par écrart type
#puissance
puissance<-(autos1[2])
#moyenne
sum(puissance)/nrow(puissance)
#ecart type
sqrt(var(puissance))
nvellePuissance <- as.vector((puissance-(sum(puissance)/nrow(puissance)))/sqrt(var(puissance)))
nvellePuissance



#cylindre
cylindre<-(autos1[3])
sum(cylindre)/nrow(cylindre)
sqrt(var(cylindre))
nvelleCylindre <- as.vector((cylindre-(sum(cylindre)/nrow(cylindre)))/sqrt(var(cylindre)))


#coupleMaxi
coupleMaxi<-(autos1[4])
sum(coupleMaxi)/nrow(coupleMaxi)
sqrt(var(coupleMaxi))
nvelleCoupleMaxi <- as.vector((coupleMaxi-(sum(coupleMaxi)/nrow(coupleMaxi)))/sqrt(var(coupleMaxi)))


#long
long<-(autos1[5])
sum(long)/nrow(long)
sqrt(var(long))
nvelleLong <- as.vector((long-(sum(long)/nrow(long)))/sqrt(var(long)))


#larg
larg<-(autos1[6])
sum(larg)/nrow(larg)
sqrt(var(larg))
nvelleLarg <- as.vector((larg-(sum(larg)/nrow(larg)))/sqrt(var(larg)))


#haut
haut<-(autos1[7])
sum(haut)/nrow(haut)
sqrt(var(haut))
nvelleHaut <- as.vector((haut-(sum(haut)/nrow(haut)))/sqrt(var(haut)))


#coffre
coffre<-(autos1[8])
sum(coffre)/nrow(coffre)
sqrt(var(coffre))
nvelleCoffre <- as.vector((coffre-(sum(coffre)/nrow(coffre)))/sqrt(var(coffre)))


#rese
rese<-(autos1[9])
sum(rese)/nrow(rese)
sqrt(var(rese))
nvelleRese <- as.vector((rese-(sum(rese)/nrow(rese)))/sqrt(var(rese)))


#poids
poids<-(autos1[10])
sum(poids)/nrow(poids)
sqrt(var(poids))
nvellePoids <- as.vector((poids-(sum(poids)/nrow(poids)))/sqrt(var(poids)))


#vite
vite<-(autos1[11])
sum(vite)/nrow(vite)
sqrt(var(vite))
nvelleVite <- as.vector((vite-(sum(vite)/nrow(vite)))/sqrt(var(vite)))


#cons
cons<-(autos1[12])
sum(cons)/nrow(cons)
sqrt(var(cons))
nvelleCons <- as.vector((cons-(sum(cons)/nrow(cons)))/sqrt(var(cons)))
nvelleCons

#tableau de correlation
cor(autos1[,2:12])

donnes_centres_reduites <- c(nvellePuissance,nvelleHaut,
           nvelleLarg,nvelleLong,nvelleCylindre,nvelleCoupleMaxi,
            nvelleCoffre,nvelleRese,nvellePoids,nvelleVite,nvelleCons
           )

donnes_centres_reduites