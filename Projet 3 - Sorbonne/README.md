# 🏡 Projet 1 : Analyse des biens immobiliers en Amérique du Nord

## 📚 Contexte

Dans le cadre de mon master à l'Université Panthéon-Sorbonne, j'ai mené un projet de Data Science appliqué au secteur immobilier, en utilisant des méthodes de **Machine Learning** pour répondre à des enjeux business concrets.

Les données, issues d’une source open source, nous ont été fournies par nos enseignants-chercheurs. Le projet a été réalisé en **Python** sur **Jupyter Notebook** (voir le fichier `.ipynb` pour plus de détails).

Ce projet m’a permis de démontrer mes compétences en **nettoyage**, **manipulation**, **visualisation** et **modélisation prédictive** des données.

---

## 🎯 Objectifs

L’objectif principal était de mieux comprendre le marché immobilier nord-américain à travers deux grandes problématiques :

- **Comment déterminer le prix des logements à partir de leurs caractéristiques ?**
- **Comment segmenter les logements en différentes catégories pertinentes ?**

---

## 🛠️ Étapes du Projet

### 1. Collecte et préparation des données
- Chargement du dataset au format `.csv`
- Conversion des surfaces de **pieds carrés vers mètres carrés**
- Préparation des variables pour la modélisation

![Base de données immobilière](https://github.com/user-attachments/assets/ee24a487-0488-4cc6-b71f-9f3a7b42184f)

---

### 2. Problématique 1 : Estimation du prix des logements

#### 📌 Méthodes utilisées
- Régression Linéaire
- Arbre de Régression

#### 🔄 Régression Linéaire
- Encodage des variables catégorielles
- Normalisation des données
- Entraînement et évaluation via le **score R²**
- Réduction du nombre de variables pour optimiser le modèle

#### 🌳 Arbre de Régression
- Entraînement du modèle
- Évaluation de la performance via le **score R²**

#### ✅ Conclusion
La **régression linéaire** s'est révélée plus performante que l’arbre de régression. Toutefois, les deux modèles montrent des limites : la relation entre les caractéristiques et le prix est **plus complexe que ce qu’ils peuvent modéliser**. Cela souligne la nécessité de modèles plus avancés pour une prédiction fiable.

---

### 3. Problématique 2 : Segmentation des logements

#### 🔍 Objectif  
Segmenter les logements en catégories homogènes selon leurs caractéristiques.

#### 🧪 Méthodes explorées
- K-Means
- Classification Ascendante Hiérarchique (CAH)

---

#### 📌 K-Means

- Détermination du nombre optimal de clusters via :
  - **Méthode du coude**
  - **Score de silhouette**
- Implémentation avec `scikit-learn`
- Résultats peu concluants :
  - Faible inertie inter-cluster
  - Mauvais score de silhouette

➡️ **Conclusion** : Le K-Means ne permet pas une segmentation suffisamment pertinente dans ce contexte.

---

#### 📌 Classification Ascendante Hiérarchique (CAH)

- Construction d’un **dendrogramme** pour définir un seuil de découpage
- Application du modèle sur les données
- Interprétation de **5 clusters distincts**, reflétant des profils de logements cohérents

➡️ **Conclusion** : La **CAH** s’est montrée **robuste, lisible et plus adaptée** pour identifier des segments exploitables dans une logique business.

---

## 🧠 Compétences techniques mobilisées

✅ Manipulation de données avec **pandas**  
✅ Visualisation avec **matplotlib**  
✅ Implémentation d’algorithmes de Machine Learning avec **scikit-learn**  
✅ Évaluation et interprétation de modèles prédictifs et non supervisés  
✅ Structuration d’une démarche analytique dans un cadre professionnel

---

## 📊 Conclusion

Ce projet illustre ma capacité à **conduire un projet de Machine Learning** de bout en bout, en combinant une approche **technique rigoureuse** et une **compréhension stratégique** des enjeux métiers.
