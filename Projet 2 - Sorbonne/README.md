# 🏀 Projet 1 : Modèle prédictif en NBA — Saison 2021-2022

## 📚 Introduction

Dans le cadre de mon master à l'Université Panthéon-Sorbonne, j'ai réalisé un projet complet de **Machine Learning en R**, visant à prédire le **pourcentage de victoire d'une équipe NBA contre une autre**, toutes conférences confondues.

📄 Voir le PDF joint pour plus de détails.

Les données proviennent du site spécialisé **Predictive Hacks** et ont été collectées via du **web scraping**.

Ce projet m’a permis de mettre en œuvre mes compétences en :
- collecte automatisée de données (web scraping),
- transformation et structuration des jeux de données,
- modélisation prédictive avec **R** (`tidyverse`, `caret`, `randomForest`, etc.).

---

## 🎯 Objectif

Construire un modèle capable de prédire l’issue d’un match NBA à partir de statistiques régulières.  
Pour cela, j’ai comparé **6 algorithmes différents** sur la base d’un **indicateur de fiabilité commun : l’AUC (Area Under Curve)**.

Modèles testés :
- Régression logistique
- Arbre de régression
- Forêt aléatoire
- Naïf Bayesien
- K plus proches voisins (KNN)
- Réseau de neurones

Les prédictions reposent sur des statistiques agrégées par équipe : taux de victoire global, taux de victoire à domicile/extérieur, etc.

---

## ⛰️ Étapes du Projet

### 📥 1. Collecte des données

- Suivi du tutoriel suivant : https://predictivehacks.com/how-to-build-a-predictive-model-for-nba-games/
1. **Web scraping** sur ESPN : récupération des scores et statistiques NBA (points, rebonds, passes...)
2. Transformation des données brutes en **indicateurs clés**
3. Sélection des variables pertinentes pour la modélisation

📊 Base de données initiale :  
![BdD NBA](https://github.com/user-attachments/assets/0c61a28e-bc65-4d91-9003-df157d5c9d9f)

📈 Base de données transformée :  
![BdD NBA final](https://github.com/user-attachments/assets/ff0ac821-9434-47db-818c-d8ee21c2b4dc)

---

### 🧹 2. Nettoyage & stockage des données

- Stockage et manipulation via **RStudio**
- Adaptation des formats de variables selon les exigences des algorithmes
- Encodage des variables catégorielles et standardisation lorsque nécessaire

---

## ⚙️ 3. Comparaison des algorithmes

### 🔢 Régression logistique (Logit)
- Traitement automatique des variables `character` via `glm()`
- Réduction du modèle avec `step()`
- **AUC = 0,7327** ✅ → Modèle performant

---

### 🌳 Arbre de régression (Decision Tree)
- Construction d’un arbre de décision
- Élagage avec `cp = 0,02` (minimisation de l'erreur)
- **AUC = 0,5953** ❌ → Faible performance

---

### 🌲 Forêt aléatoire (Random Forest)
- Agrégation de plusieurs arbres de décision
- Optimisation avec `trees = 80`
- **AUC = 0,6209** ❌ → Résultats modestes

---

### 🧮 Naïf Bayesien
- Application d’un correcteur de Laplace (`laplace = 1`)
- **AUC = 0,717** ✅ → Bon niveau de performance

---

### 👥 K-Nearest Neighbors (KNN)
- Données centrées et réduites
- Meilleur score obtenu avec `k = 29`
- **AUC = 0,716** ✅ → Prédictions pertinentes

---

### 🧠 Réseau de neurones (Neural Network)
- 1 couche cachée
- Entraînement sur caractéristiques numériques uniquement
- **AUC = 0,6671** ⚠️ → Moyennement concluant

---

## 🤖 4. Le robot prédictif

Création d’une **fonction prédictive personnalisée** basée sur la **régression logistique**, le modèle le plus performant :

- Saisie de deux équipes NBA (équipe hôte et adversaire)
- Estimation du **pourcentage de victoire de l’équipe hôte**

![Robot](https://github.com/user-attachments/assets/5babef01-3182-4432-bdb9-d5550877509d)

---

## 🧠 Compétences techniques mobilisées

✅ Web scraping avec R  
✅ Manipulation et transformation des données dans **RStudio**  
✅ Visualisation avec `ggplot2`  
✅ Implémentation de plusieurs algorithmes de **classification supervisée**  
✅ Utilisation des packages `caret`, `dplyr`, `randomForest`, `e1071`, etc.  
✅ Évaluation rigoureuse des modèles via **AUC**  
✅ Présentation orale d’un projet technique

---

## 📊 Conclusion

Ce projet démontre ma capacité à :
- mener une **analyse prédictive de bout en bout**,
- sélectionner et comparer différents modèles selon un indicateur de performance pertinent,
- **exploiter les outils R** pour la collecte, le traitement et la modélisation de données.

C’est un bel exemple d’application de la data science à un univers aussi riche que celui de la NBA.
