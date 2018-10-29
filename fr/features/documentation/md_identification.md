# Onglet "Identification"

Cet onglet donne les éléments de connaissance basique sur une ressource. Il est primordial puisque ce sont les informations les plus remarquables pour un utilisateur.

![Edition unitaire - Identification](/assets/inv_edit_one_identification.png "L&apos;é&apos;dition unitaire - onglet identification")

_________

## <i class="fa fa-eye"></i> Titre {#title}

| Définition       | Intitulé de la ressource, le titre doit permettre de distinguer la donnée de celles qui pourraient être similaires. |
| :--------------- | :--------------------------------------  |
| Indications      |  Le titre doit être unique et indiquer systématiquement : le phénomène géographique représenté,  le territoire couvert et l’année de la donnée si elle est versionnée ou millésimée.<br>Structure type : *Intitulé [(Ensemble)] - Territoire concerné  + emprise géographique [- date]*. |
| Exemple          |  Communes - France Métropolitaine - 2014 |
| Exigence INSPIRE           | Obligatoire                    |
| Edition par lot            | Oui, par écrasement            |
| Scan                       | Non                            |
| Moteur de recherche        | Oui (+ tri)                    |
| Fiche ressource            | Oui                            |
| Fiche service              | Oui                            |

> Astuce : une métadonnée nouvellement produite par le Scan FME voit son titre prendre la valeur du nom de la donnée. Voir ci-dessous. 

-------

## Nom de la donnée {#name}

| Définition           | Nom du fichier sans son extenion ou schéma.table pour un SGBD. |
| :------------------- | :------------------------------------------------------------  |
| Indications          | Ce champ est uniquement renseigné par le Scan FME et ne peut être modifié manuellement, afin d&apos;éviter de casser le suivi des modifications du jeu de données source par le Scan. |
| Exemple              |  - Fichier : ROUTES_TRAFICS_ROUTIERS<br>- table (ou vue) SGBD : public.routes_trafic_routier |
| Exigence INSPIRE     | Facultatif                    |
| Edition par lot      | Non                            |
| Scan                 | Non                            |
| Moteur de recherche  | Oui                            |
| Fiche ressource      | Non                            |
| Fiche service        | Non                            |

_________

## <i class="fa fa-bookmark"></i> Résumé {#abstract}

| Définition       | Description narrative de ce que la donnée représente. |
| :--------------- | :--------------------------------------  |
| Indications      |  La description se décompose en deux parties : <br />- l&apos;une générique, commune au lot auquel appartient la donnée ; <br />- l&apos;autre spécifique au jeu de données en question. |
| Exemple          |  GEOFLA® est un produit numérique décrivant le découpage administratif de la France métropolitaine, des départements d&apos;outre mer, ou de la collectivité départementale de Mayotte. Il est dérivé de la Base de Données Cartographiques (BD CARTO®) pour sa partie géométrique, et de la Base de Données Administratives pour sa partie descriptive.<br /><br />  Ce jeu de données en particulier contient les communes qui portent, outre la description des communes, la description des unités administratives de niveau supérieur : canton, arrondissement, département et région. En France, une commune représente la plus petite entité administrative. Elle est décrite par des faces du graphe communal. Il s&apos;agit là des communes en polygones.|
| Exigence INSPIRE           | Obligatoire         |
| Edition par lot            | Oui, par écrasement |
| Scan                       | Non                 |
| Moteur de recherche        | Oui                 |
| Fiche ressource            | Oui                           |
| Fiche service              | Oui                           |

_________

## <i class="fa fa-hdd-o"></i> Emplacement de la donnée documentée {#path}

| Définition          | L’emplacement de stockage de la donnée, qu&apos;il s&apos;agisse d&apos;un fichier ou d&apos;une base de données ou d&apos;un service. |
| :------------------ | :-------------------------------------------------------------------------------------------  |
| Indications         | En ce qui concerne les données et les ressources, le chemin absolu depuis le scan est indiqué pour les fichiers et le schéma pour les tables en base de données. Le champ reste libre pour les fiches manuelles.<br />En ce qui concerne les services, il s&apos;agit d&apos;indiquer l&apos;URL du GetCapabilities du service concerné. |
| Exemple             | \\\datastore\SIG\DATA\Vecteur\GeoFLA\2014\Communes\Métropole\COMMUNE.SHP |
| Exigence INSPIRE    | Obligatoire         |
| Edition par lot     | Oui, par écrasement |
| Scan                | Oui : <br />- Chemin absolu pour les fichiers,<br />- Nom du serveur + le nom de la base / l&apos;instance,<br />- Nom du fichier SDE pour les cartouches Esri |
| Moteur de recherche | X                   |
| Fiche ressource     | Oui                           |
| Fiche service       | Oui, l&apos;URL du GetCapabilities |

_________

## <i class="fa fa-flask"></i> Rapport de validation d&apos;INSPIRE {#inspire-compliance}

Pour toutes les données visées par la directive Inspire, permet également de savoir si la métadonnée est conforme ou non à la norme.
Le valideur dynamique n&apos;est pas actif sur les fiches de type *service* et *ressource*.

> Astuce : consulter la page [Faire une métadonnée INSPIRE](md_inspire.html).
