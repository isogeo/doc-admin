# Gestion des utilisateurs <i class="fa fa-users"></i>

Isogeo distingue trois profils utilisateurs :
* L’`administrateur` accède à toutes les fonctionnalités de l’application. Il gère les utilisateurs et leurs droits, les éléments communs à l&apos;échelle du groupe de travail, le recensement des données, la mise à jour de l’inventaire, les catalogues, les partages, la diffusion et peut saisir des métadonnées.

* L’`éditeur` peut saisir et modifier des métadonnées, rechercher des données et exploiter ces données grâce aux services et ressources associés.

* Le `lecteur` peut rechercher des données et exploiter les données grâce aux services et ressources associés. Dans la pratique, ce profil est très peu utilisé, on préfèrera créer des OpenCatalog pour une consultation plus confortable.

> Astuce : accéder directement aux [utilisateurs](https://app.isogeo.com/admin/users/memberships).

## Inviter un nouvel utilisateur

Pour inviter un nouvel utilisateur en version :

1. Aller dans [le menu dédié](https://app.isogeo.com/admin/users) ;
2. Cliquer sur [l&apos;onglet `+ Inviter`](https://app.isogeo.com/admin/users/invitations/new) ;
3. Entrer l&apos;adresse électronique de l&apos;utilisateur ;
4. Choisir le niveau d&apos;accès ;
5. Cliquer sur `Inviter`.

L&apos;utilisateur reçoit alors un courriel d&apos;invitation ([voir le chapitre dédié](../../start/signup.html)). 

> L’invitation est valable 7 jours et un administrateur peut la révoquer à tout moment. 

![Inviter un nouvel utilisateur en version SaaS](/assets/adm_users_add.gif)

> En version *On premises*, aucun mail n'est envoyé automatiquement, il faut envoyer par ses propres moyens le lien d'activation généré à l'utilisateur. 

![Inviter un nouvel utilisateur en version On premises](/assets/adm_users_add_onprem.PNG)

## Droits de chaque profil

| Fonctionnalités                               | Administrateur    | Éditeur   | Lecteur   |
| :-------------------------------------------- | :---------------: | :-------: | :-------: |
| Gérer les utilisateurs                        | X                 |           |           |
| Gérer le carnet d&apos;adresses                    | X                 |           |           |
| Gérer les points d&apos;entrée                     | X                 |           |           |
| Gérer le scan                                 | X                 |           |           |
| Créer, affecter ou désaffecter un catalogue   | X                 |           |           |
| Gérer les partages                            | X                 |           |           |
| Gérer la liste des système des coordonnées    | X                 |           |           |
| Gérer les licences                            | X                 |           |           |
| Gérer les spécifications                      | X                 |           |           |
| Gérer les paramètres du groupe                | X                 |           |           |
| Créer une métadonnée                          | X                 |           |           |
| Accéder à l&apos;inventaire complet                | X                 |           |           |
| Accéder au tableau de bord                    | X                 | X         |           |
| Modifier les métadonnées                      | X                 | X         |           |
| Créer / affecter / désaffecter un mot-clé     | X                 | X         |           |
| Affecter / désaffecter une thématique INSPIRE | X                 | X         |           |
| Accéder aux données cataloguées               | X                 | X         | X         |
