# Gestion des utilisateurs

Isogeo distingue trois profils utilisateurs :
* L’`administrateur` accède à toutes les fonctionnalités de l’application. Il gère les utilisateurs et leurs droits, les éléments communs à l'échelle du groupe de travail, le recensement des données, la mise à jour de l’inventaire, les catalogues, les partages, la diffusion et peut saisir des métadonnées.

* L’`éditeur` peut saisir et modifier des métadonnées, rechercher des données et exploiter ces données grâce aux services et ressources associés.

* Le `lecteur` peut rechercher des données et exploiter les données grâce aux services et ressources associés. Dans la pratique, ce profil est très peu utilisé, on préfèrera créer des OpenCatalog pour une consultation plus confortable.

> Astuce : accéder directement aux [utilisateurs](https://app.isogeo.com/admin/users/memberships).

## Inviter un nouvel utilisateur

Pour inviter un nouvel utilisateur :

1. Aller dans [le menu dédié](https://app.isogeo.com/admin/users) ;
2. Cliquer sur [l'onglet `+ Inviter`](https://app.isogeo.com/admin/users/invitations/new) ;
3. Entrer l'adresse électronique de l'utilisateur ;
4. Choisir le niveau d'accès ;
5. Cliquer sur `Inviter`.

L'utilisateur reçoit alors un courriel d'invitation ([voir le chapitre dédié](/fr/start/signup.html)).

> L’invitation est valable 7 jours et un administrateur peut la révoquer à tout moment.

![Nouvel utilisateur](fr/images/adm_users_add.gif "Inviter un nouvel utilisateur")

## Droits de chaque profil

| Fonctionnalités                               | Administrateur    | Éditeur   | Lecteur   |
| :-------------------------------------------- | :---------------: | :-------: | :-------: |
| Gérer les utilisateurs                        | X                 |           |           |
| Gérer le carnet d'adresses                    | X                 |           |           |
| Gérer les points d'entrée                     | X                 |           |           |
| Gérer le scan                                 | X                 |           |           |
| Créer, affecter ou désaffecter un catalogue   | X                 |           |           |
| Gérer les partages                            | X                 |           |           |
| Gérer le moissonnage CSW                      | X                 |           |           |
| Gérer la liste des système des coordonnées    | X                 |           |           |
| Gérer les licences                            | X                 |           |           |
| Gérer les spécifications                      | X                 |           |           |
| Gérer les paramètres du groupe                | X                 |           |           |
| Créer une métadonnée                          | X                 |           |           |
| Accéder à l'inventaire complet                | X                 |           |           |
| Accéder au tableau de bord                    | X                 | X         |           |
| Modifier les métadonnées                      | X                 | X         |           |
| Créer / affecter / désaffecter un mot-clé     | X                 | X         |           |
| Affecter / désaffecter une thématique INSPIRE | X                 | X         |           |
| Accéder aux données cataloguées               | X                 | X         | X         |
