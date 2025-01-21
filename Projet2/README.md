# Projet 1 :  Analyse des biens immobilers en Amerique du Nord

## Introduction
Dans le cadre de mon master à l'Université Panthéon - Sorbonne, j'ai réalisé un projet de Data Science avec des méthodes de Machine Learning sur des enjeux business concrets dans le secteur de l'immobilier.

Le dataset qui facilement retrouvable en open source, a été fourni par nos Enseignants-Chercheurs en Sorbonne.

Ce projet a permis de démontrer mes compétences en nettoyage, manipulation, visualisation et modélisation prédictive des données en Python.

## Objectif 🎯
L'objectif principal de ce projet était de répondre de comprendre en profondeur le marché de l'immmobilier à travers deux problématiques majeurs :

- Comment déterminer le prix des logements en fonction de leurs caractéristiques ?
- Comment pouvons-nous segmenter les logements en plusieurs catégories ?

## Étapes du Projet ⛰️

### Collecte et Nettoyage des Données 
- Import du dataset en .csv
- Transformation de la colonne pieds carré en m2.

### Problématique 1 : Déterminer le prix des maisons selon leurs caractéristiques
- Utilisation de 2 algorithmes : 1. régression linéaire et 2. Arbre de régression

Pour la régression linéaire : 
- Transformation des variables type "object" en "numérique"
- Normalisation des données pour éviter des ordres de grandeur différents
- Entrainement du modèle
- Validation du modèle avec le R2
- Regression linéaire avec moins de variables


Pour l'arbre de régression :
- Entrainement
- Validation avec le R2


Conclusion : La régression linéaire est meilleur pour déterminer le prix des maisons selon leurs caractéristiques. Cependant, le modèle reste pas très fiable. En effet, dans les faits, la relation entre les prix et les caractéristiques est plus complexe. Au moins, nous savons qu'il n'est pas pertinent de garder ces algorithmes.

### Problématique 2 : Segmentation des logements en plusieurs catégories 

Utilisation de 2 autres algorithmes : 1. K-Means et 2.Classification ascendante hiérarchique (CAH)

Pour le K-Means : 
- Identification du nombre de clusters avec matplotlib
- Rejet du modèle selon les critères de l'Inertie et de la Silhouette

Pour la CAH : 
- Représentation graphique pour déterminer t, la valeur seuil
- Elaboration du modèle
- Analyse des 5 clusters qui sont trouvés
  
Conclusion : Bien que le K-Means n'a pas pu me permettre de segmenter les biens immobiliers, la CAH a été un choix très pertinent. En effet, j'ai pu avec plus ou moins de précision, classer les biens en 5 catégories différents.

### Compétences Techniques Acquises 

✅ Stockage et manipulation des données avec Python dans l'IDE JupyterNotebook

✅ Visualisation de données avec matplotlib

✅ Connaissances des différents algorithmes en Machine Learning avec sklearn.

✅ Évaluation et interprétation des modèles.

### Conclusion 📊
Ce projet illustre ma capacité à gérer un projet de Machine Learning en intégrant une vision stratégique business et une expertise technique.
