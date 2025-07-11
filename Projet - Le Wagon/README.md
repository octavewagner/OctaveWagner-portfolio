# ⚽ Projet DBT – Scouting intelligent pour le Como 1907

📊 Projet de groupe de 2 semaines réalisé dans le cadre de la formation **Data Analytics du Wagon**.

Nous nous sommes positionnés en tant qu’équipe data analyst du **Como 1907** (10ᵉ de Serie A en 2024-2025) avec l’objectif de concevoir un **outil de scouting intelligent** pour accompagner le club dans son ambition d’atteindre la **Ligue des Champions** (top 4 de Série A).

---

## 🧠 Démarche (résumée en 4 étapes)

### Étape 1 – Collecte des données avec R

- Web scraping des statistiques de joueurs via le site **FBref** (référence dans le monde de la data football) en utilisant le package **R `worldfootballR`**
- Extraction des valeurs marchandes des joueurs via un second script R dédié au site **Transfermarkt** 

### Étape 2 – Ingestion & nettoyage des données (DBT et SQL)

- Import des deux sources de données via **DBT** (Data Build Tool)
- Nettoyage et structuration initiale pour rendre les données cohérentes et prêtes à être transformées

### Étape 3 – Calcul d’un score prédictif 

- Transformation des données statistiques avec **DBT** pour créer des variables analytiques (ratios, per90, scores)
- Élaboration d’un **modèle de scoring** permettant de détecter les joueurs les plus performants et prometteurs.
    

### Étape 4 – Jointure entre le score et la valeur marchande

- Fusion des données de performance (FBref) et de valeur marchande (Transfermarkt)
- Génération d’un modèle **`mart` final exploitable** dans un dashboard interactif sur **Looker Studio**

### Étape 5 – Visualisation finale & recommandations (Looker Studio)

- Création d’un dashboard dynamique avec **Looker Studio**
- Présentation du **contexte club**, analyse des performances actuelles de l’équipe et identification des bessoins
- **Exploration interactive des joueurs** selon leur poste, leur score prédictif et leur valeur marchande
- Visualisation des performances à l’aide de **spider charts comparant chaque joueur cible au joueur recommandé**
- Formulation de **recommandations concrètes de recrutement** par poste clé
- **Conclusion : projection de la future équipe type** intégrant les recrues identifiées

---


## 🛠️ Stack & outils


- 🧮 SQL (nettoyage, transformation et modélisation)
- 🧱 DBT (modèle analytique modulaire)
- 📈 R (web scraping avec worldfootballR)
- 📊 Looker Studio (visualisation finale)
- 🐍 Python (les Spider Chart pour le Looker)

---

## 📁 Structure du projet

- `staging/` → contient les **données brutes scrappées**, importées depuis FBref et Transfermarkt

- `intermediate/` → toutes les étapes de **nettoyage, transformation et modélisation analytique** (ratios, scoring…)

- `mart/` → les **tables finales** prête à être visualisée dans Looker Studio

- `analyses/` → des **analyses SQL complémentaires** pour mieux comprendre les profils et performances des joueurs



