# Moissonnage DCAT par data.gouv.fr

Suite à l'[arrêt de geo.data.gouv.fr](https://www.data.gouv.fr/fr/posts/extinction-de-geo-data-gouv-fr/), un serveur DCAT compatible avec le modèle du [moissonneur DCAT](https://doc.data.gouv.fr/moissonnage/dcat/) de [data.gouv.fr](https://www.data.gouv.fr) a été développé grâce à un financement tripartite du département du [Loiret](https://www.loiret.fr/), du [Calvados](https://www.calvados.fr/accueil.html) et de la ville de [Bayonne](https://www.bayonne.fr/).

## Pré-requis {#prerequisites}

Afin que vos données puissent être remontées sur data.gouv.fr, il faut qu'elles remplissent plusieurs critères :

* avoir une licence ouverte et indiquer qu'il n'y a aucune limitation au sens INSPIRE (voir [gérer les CGUs](/features/documentation/md_cgu.html#conditions)) ;
* être dans un catalogue partagé au serveur DCAT et à l'OpenCatalog
* contenir au moins un lien de téléchargement opérationnel. Les liens de téléchargement reconnus sont :
* lien vers un service WFS ou EFS capable de délivrer la donnée au format GeoJSON en WGS84 (4326) : voir [affecter un service WFS](/features/publish/webservices.html#associer-un-flux-wfs) ;
* lien vers des fichiers de données vecteur (GeoJSON, Shapefile, MapInfo MIF/MID, MapInfo TAB et GML) ou raster (ECW, JPEG2000 et GeoTIFF) : voir [affecter un lien de téléchargement](/features/publish/hosting.html) ;

### Compte et organisation sur data.gouv.fr {#dataGouvAccount}

1. Créer un compte sur data.gouv.fr

    Pour créer un compte ou se connecter : <https://www.data.gouv.fr/login>. Il est recommandé de créer un compte directement sans l'interface d'un réseau social.

    ![data.gouv.fr - Inscription/connexion](/assets/datagouv/annex_bridge_INSPIRE_DataGouv_00a.png "Se connecter ou créer un compte sur data.gouv.fr")

2. Créer / rejoindre une organisation sur data.gouv.fr

    Pour cela, il faut passer par l'administration de son profil : <https://www.data.gouv.fr/fr/admin/organization/new/>. Si elle existe déjà, faites une demande pour la rejoindre.

    ![data.gouv.fr - Organisation](/assets/datagouv/annex_bridge_INSPIRE_DataGouv_00b_NewOrganization.png "Créer son organisation sur data.gouv.fr")

_______

### Référencement et moissonnage du flux DCAT {#submitDCAT}

1. Ajouter un nouveau moissonneur

    Une fois votre flux DCAT créé dans Isogeo, ajouter un nouveau moissonneur depuis l'interface d'administration de data.gouv.fr

     ![Créer un nouveau moissonneur](/assets/datagouv/DataGouv_new_dcat.png)

2. Sélectionner votre organisation
3. Compléter les champs requis et cliquer sur Suivant

     ![Configurer le nouveau moissonneur](/assets/datagouv/DataGouv_dcat_configuration.png)

4. Un message vous indiquant que votre moissonneur doit être validé par l'équipe d'administration est affiché. Cliquer sur "Voir dans l'administration"

     ![Validation du DCAT](/assets/datagouv/DataGouv_dcat_validation.png)

5. Cliquer sur "Editer", puis "Editer"

     ![Edition du DCAT](/assets/datagouv/DataGouv_dcat_edit.png)

6. Tester le moissonnage en cliquant sur "Prévisualiser" et vérifier le nombre de jeu de donnée validé.

     ![Prévisualisation des résultats du moissonnage](/assets/datagouv/DataGouv_dcat_previsualisation.png)
Si une donnée semble ne pas être disponible, revérifier les [prérequis](#prerequisites) puis [contacter l'équipe data.gouv.fr](mailto:support@data.gouv.fr?subject=Problème%20de%20moissonnage%20DCAT%20Isogeo&cc=support@isogeo.fr).

7. Vérifier le moissonnage

Une fois le moissoneur validé, vous pouvez consulter les différentes opérations de moissonnage réalisées, celui-ci étant lancé quotidiennement. 
     ![Résultats des moissonnages](/assets/datagouv/DataGouv_dcat_validated.png)

### Liste des champs complétés {#fields}

| Champs data.gouv.fr        | Champs Isogeo                   |
|:--------------------------:|:-------------------------------:|
| Titre                      | Titre                           |
| Acronyme                   | Non rempli                      |
| Description                | Mélange de plusieurs champs     |
| Mots-clés                  | Mots-clés et Thématiques        |
| Licence                    | Conditions                      |
| Couverture spatiale        | Non récupéré par le moissonneur |
| Couverture temporelle      | Période de validité             |
| Fréquence de mise à jour   | Fréquence de mise à jour        |
| Identifiant distant        | Identifiant unique              |
| URI                        | Non rempli                      |

#### Description {#description_field}

La description est formatée de la manière suivante :

**Description :** Résumé

**Contexte de collecte :** Contexte de collecte de la donnée (s'il existe)  

**Méthode de collecte :** Méthode de collecte de la donnée (si elle existe)

**Attributs** : tableau contenant le nom du champ, l'alias (ou le commentaire en base) et le type.

Pour plus d’informations, consultez la métadonnée sur le catalogue Isogeo (lien OpenCatalog).

#### Fréquence de mise à jour {#updateFrequency_field}

La fréquence de mise à jour est saisie selon cette correspondance :

|         Isogeo        |         data.gouv        |
|:---------------------:|:------------------------:|
|   Toutes les heures   |     Toutes les heures    |
|  Toutes les 6 heures  |   Quatre fois par jour   |
|  Toutes les 12 heures |    Deux fois par jour    |
|     Tous les jours    |        Quotidienne       |
|    Tous les 3 jours   |   Deux fois par semaine  |
|  Toutes les semaines  |       Hebdomadaire       |
| Toutes les 2 semaines | Toutes les deux semaines |
|     Tous les mois     |         Mensuelle        |
|    Tous les 2 mois    |       Bimestrielle       |
|    Tous les 3 mois    |       Trimestrielle      |
|    Tous les 4 mois    |     Trois fois par an    |
|    Tous les 6 mois    |       Semestrielle       |
|      Tous les ans     |         Annuelle         |
|     Tous les 2 ans    |         Biennale         |
|     Tous les 3 ans    |         Triennale        |
|     Tous les 5 ans    |       Quinquennalle      |
|    Autre fréquence    |          Inconnu         |

### Téléchargement des données {#download_links}

Pour alimenter la fiche data.gouv en ressource téléchargeable, plusieurs types de liens peuvent être remontés.

* lien vers un fichier téléversé dans Isogeo (hosted)
* lien vers des fichiers de données vecteur (GeoJSON, Shapefile et GML) ou raster (ECW, JPEG2000 et GeoTIFF) en tant que lien de donnée avec l’action téléchargé
* lien vers un service WFS ou EFS
  * le nombre d’entités doit être inférieur au seuil du serveur carto (paramètre *MaxRecordCount=1000* par défaut pour ArcGIS Server, paramètre *nombre maximal d'objets* pour Geoserver)
  * le système de coordonnées 4326 doit être disponible dans les capacités
  * le format d’export Geojson également