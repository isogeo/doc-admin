# Ajouter une nouvelle base de données à scanner

## Démarche globale

Pour créer un point d’entrée « Base de données » vous devez :

1.	Dans le menu « Scan FME », créer un nouveau point d’entrée en cliquant sur « + Nouveau » ;
2.	Sélectionner le type « Base de données » ;
3.	Nommer le point d’entrée. Exemple : Base de références ;
4.	Sélectionner le type de base de données dans la liste déroulante. ;
5.	Saisir les paramètres de connexion ;
6.	Sauvegarder.

## Paramètres requis selon le type de base de données

Légende :
* X = requis
* \ = facultatif
* \- = désactivé

| Champ                       | PostGIS | Oracle | SQL Server | + Geodatabase Esri (SDE) |
| --------------------------- | :-----: | :----: | :--------: | :----------------------: |
| Nom                         | X       | X      | X          | X                        |
| Type                        | X       | X      | X          | X                        |
| Serveur                     | X       | X      | X          |                          |
| Port                        | X       |        |            |                          |
| Identifiant                 | X       | X      | X          |                          |
| Mot de passe                | X       | X      | X          |                          |
| Nom de la base de données   | X       |        | X          |                          |
| Fichier de connexion (.sde) | -       |        |            |                          |
| Nom de l'instance           | -       |        |            |                          |
| Version transactionnelle    | -       |        |            |                          |


