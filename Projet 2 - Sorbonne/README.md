# Projet 1 : Modèle prédictif en NBA sur la saison 21-22 🏀

## Introduction
Dans le cadre de mon master à l'Université Panthéon - Sorbonne, j'ai réalisé un projet complet de Machine Learning visant à prédire le pourcentage de victoire d'une équipe NBA versus une autre, toute conférence confondue. Voir le PDF pour plus de détails

Les données sont issus d'un site spécialisé en data analyse : Predictive Hacks.

Ce projet a été conçu pour démontrer mes compétences en collecte de données (web scrapping), structuration des données et modélisation prédictive.

## Objectif 🎯
L'objectif principal de ce projet était de construire l'un des meilleurs modèles prédictifs possibles. 
J'ai comparé 6 algorithmes différents sur la base d'un indicateur de fiabilité : 

- Régression logistique
- Arbre de régression
- Fôret aléatoire
- Naive Baysien
- KNN
- Réseau de neurones

La construction du modèle s'est faite sur les différentes statistiques sur une saison régulière comme le taux de victoire, le taux de victoire à domicile et bien d'autres. 

## Étapes du Projet ⛰️

### Collecte de Données 
- Collecte des données en utilisant le tuto suivant : https://predictivehacks.com/how-to-build-a-predictive-model-for-nba-games/
1. Web scrapping sur le site de la ESPN des scores NBA avec leurs statistiques (points, rebonds, assitances)
2. Transformation des données en indicateurs pertinents (taux de victoire...)
3. Selection des variables nécessaires et utiles pour un modèle de Machine Learning

Base de données initiale : 
![BdD NBA](https://github.com/user-attachments/assets/0c61a28e-bc65-4d91-9003-df157d5c9d9f)

Base de données transformée : 
![BdD NBA final](https://github.com/user-attachments/assets/ff0ac821-9434-47db-818c-d8ee21c2b4dc)

### Stockage et Nettoyage des Données
- Stockage et structuration des données dans l'IDE Rstudio. Chaque algorithme a des besoins spéciques en entrée.

### Algortihme 1 : Logit

- Entrées : Utilisation de caractéristiques numériques. Transformation automatiques des variables "character" avec la fonction glm()
- Sorties : Prédiction des résultats entre une équipe A et une équipe B
- Simplification du modèle avec la fonction step()
- Indicateur de fiabilité : AUC de 0,7327 > 0,5. Plutot bon

### Algorithme 2 : Arbre de régression
- Entrée : Utilisation de caractéristiques numériques + character
- Sorties : Arbre de décision selon des critères
- Élagage de l'arbre avec CP = 0,02 qui minimise le taux d'erreur
- Indicateur de fiabilité : AUC de 0,5953 > 0,50. Pas terrible

### Algorithme 3 : Foret aléatoire
- Entrée : Utilisation de caractéristiques numériques + character 
- Sorties : Généralisation de plusieurs arbres de regression
- Choix du nombres d'arbre : trees = 80 qui minimise le taux d'erreur
- Indicateur de fiabilité : AUC de 0,6209. Mieux mais toujours pas terrible


### Algorithme 4 : Naive Baysien 
- Entrée : Utilisation de caractéristiques numériques + character
- Sorties : Prédiction des résultats entre une équipe A et une équipe B
- Correcteur de Laplace = 1
- Indicateur de fiabilité : AUC de 0,717 > 0,50. Plutot bon


### Algorithme 5 : KNN
- Entrée : Selection des caractéristiques uniquement numériques + Target en numérque (H_Outcome)
- Sortie : Prédiction des résultats entre une équipe A et une équipe B
- Centrer et réduire les données pour remettre à l'échelle
- Choix du nombre de voisins : k = 29 qui représente le plus faible taux d'erreur
- Indicateur de fiabilité : AUC de 0,716 > 0,50. Plutot bon
  
### Algorithme 6 : Réseau de neuronnes
- Entrées : Utilisation de caractéristiques numériques.
- Couche cachée = 1
- Sortie : Prédiction des résultats entre une équipe A et une équipe B
- Indicateur de fiabilité : AUC de 0,6671 > 0,50. Moyen

### Le Robot prédictif
- Construction d'une fonction prédictive avec le logit comme algorithme (meilleur AUC)
- Sélection d'une équipe et d'une équipe adversaire
- Estimation du pourcentage de succès de l'équipe hote

![Robot](https://github.com/user-attachments/assets/5babef01-3182-4432-bdb9-d5550877509d)

### Compétences Techniques Acquises 

✅ Collecte de données à partir d'un site internet (WebScrapping).

✅ Stockage et manipulation des données avec R dans l'IDE RStudio

✅ Visualisation de données avec ggplot2

✅ Connaissances des différents algorithmes en Machine Learning

✅ Évaluation et interprétation des modèles sorties algorithmes

✅ Présentation du projet devant une audience

### Conclusion 📊
Ce projet démontre ma capacité à gérer un projet de Machine Learning, depuis la collecte des données jusqu'à sa mise en pratique. 
Mes compétences techniques en collecte, manipulation de données et modélisation prédictive sont utilisés à travers les différents étape de ce projet.

