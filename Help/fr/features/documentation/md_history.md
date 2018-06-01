## Onglet "Histoire"

L’onglet « Histoire » décrit le contexte et la méthode de création de la donnée et retrace chronologiquement tous les évènements survenus sur la donnée (création, mise à jour, publication, etc.). Il permet également d’indiquer la période de validité de la donnée et la fréquence de mise à jour

![Edition unitaire - Histoire](/images/inv_edit_one_history.png "L'édition unitaire - onglet Histoire")

_________

## <i class="fa fa-file"></i> Contexte de collecte {#collectionContext}

| Définition                 | Objectif de la collecte |
| :------------------------- | :---------------------- |
| Indications                | Indiquer pourquoi et dans quel cadre cette donnée a été produite |
| Exemple                    | La BD CARTO® est l'une des grandes bases de données produites par l'Institut Géographique National. Elle est née au milieu des années 80 avec le développement d’outils informatiques puissants qui ouvraient de nouvelles perspectives de gestion et d’analyse informatisées des données localisées.<br /><br />Elle est particulièrement adaptée à la cartographie de synthèse et aux applications d’études de projet, de gestion d’infrastructures et d’aménagement du territoire, au niveau départemental et régional. |
| Exigence INSPIRE           | Obligatoire         |
| Edition par lot            | Oui, par écrasement |
| Scan                       | Non                 |
| Moteur de recherche        | Non                 |
| Fiche ressource            | Non                 |
| Fiche service              | Non                 |

_________

## Méthode de collecte {#collectionMethod}

| Définition                 | Moyens et méthodologie employés pour créer et mettre à jour la donnée |
| :------------------------- | :------------------------------------- |
| Indications                | Indiquer comment la donnée a été créée, à partir de quelles données (orthophotographie aérienne, CAO, etc.), avec quelles technologies (GPS, LiDAR, numérisation, etc.) et quels outils. |
| Exemple                    | La BD CARTO® a été constituée à partir :<br />- d’une numérisation des cartes au 1:50 000 de l’IGN,<br />- de l’imagerie spatiale SPOT. |
| Exigence INSPIRE           | Obligatoire         |
| Edition par lot            | Oui, par écrasement |
| Scan                       | Non                 |
| Moteur de recherche        | Non                 |
| Fiche ressource            | Non                 |
| Fiche service              | Non                 |

_________

## <i class="fa fa-clock-o"></i> Période de validité {#validity_period}

| Définition                 | Période de temps couverte par le contenu de la donnée |
| :------------------------- | :---------------------------------------------------- |
| Indications                | Cette période peut-être interprétée de deux manières :<br />- techniquement : dates de l’objet le plus ancien et du plus récent ;<br/>- thématiquement : par exemple la période de validité d’un Plan Local d’Urbanisme. |
| Exemple                    | Du 02/04/2012 au 09/08/2017 |
| Exigence INSPIRE           | Obligatoire         |
| Edition par lot            | Oui, par écrasement |
| Scan                       | Non                 |
| Moteur de recherche        | Non                 |
| Fiche ressource            | Non                 |
| Fiche service              | Non                 |

_________

## Commentaire {#validity_comment}

| Définition                 | Précisions complémentaires |
| :------------------------- | :------------------------- |
| Indications                | Champ libre pour apporter des précisions sur l'étendue temporelle ou tout autre information. |
| Exemple                    | La mise à jour des données est réalisée de façon irrégulière, au gré des demandes de révision du PLU  |
| Exigence INSPIRE           | Facultatif          |
| Edition par lot            | Oui, par écrasement |
| Scan                       | Non                 |
| Moteur de recherche        | Non                 |
| Fiche ressource            | Non                 |
| Fiche service              | Non                 |

_________

## <i class="fa fa-refresh"></i> Fréquence de mise à jour {#updateFrequency}

| Définition                 | Intervalle de temps entre les mises à jour de la donnée |
| :------------------------- | :------------------------------------------------------ |
| Indications                | Rythme d'actualisation de la donnée. L'objectif est de fournir une information sur la stabilité des versions de la donnée, si elle est millésimée (livraisons régulières) ou mise à jour en continu avec un intervalle moyen ou inconnu. |
| Exemple                    | Tous les 1 an(s)    |
| Exigence INSPIRE           | Obligatoire         |
| Edition par lot            | Oui, par écrasement |
| Scan                       | Non                 |
| Moteur de recherche        | Non                 |
| Fiche ressource            | Non                 |
| Fiche service              | Non                 |

_________

## <i class="fa fa-calendar"></i> Evénements {#dataset_events}

> Astuce : pour bien différencier les différentes dates des données et métadonnées, consulter [l'annexe **Les dates dans Isogeo**](../../appendices/different_dates.html).

| Définition                 | Historique des dates clés sur la vie de la donnée |
| :------------------------- | :------------------------------------------------ |
| Indications                | Ces dates rendent compte de la vie de la donnée. Elles peuvent être de 3 types (correspondant à 3 couleurs) : <br /><br />- création (vert, unique, manuelle) : quand la donnée a été créée la toute première fois. Il ne s'agit pas de la date de référence du phénomène décrit. Typiquement, si la série de données est une photographie prise le 15 mai 2000 d’un monument historique datant de 1920, la date de création de la ressource est le 15 mai 2000, pas 1920 ;<br /><br />- modification (bleu, multiple, auto et manuelle) : indique une révision de la donnée. Le scan crée automatiquement l'événement si des modifications sont détectées sur la géométrie, les attributs ou la projection ;<br /><br />- publication (gris, multiple, manuelle) :  date à laquelle la ressource est disponible ou la date d’entrée en vigueur.|
| Exemple                    | ![Onglet histoire - événements](/images/inv_edit_one_history_events_512px.png "La gestion des événements de la vie d'une donnée") |
| Exigence INSPIRE           | Obligatoire si la période de validité n’est pas renseignée et fortement recommandé |
| Edition par lot            | Oui par incrémentation, pour les dates de modification et de publication |
| Scan                       | Oui, pour les dates de modification |
| Moteur de recherche        | Tri                                 |
| Fiche ressource            | Oui                                 |
| Fiche service              | Oui                                 |

> Astuce : chaque événement étant une sous-ressource de la métadonnée, il faut enregistrer les modifications de chaque événement avant d'enregistrer les modifications au niveau de la ressource, sans quoi les modifications seront perdues !
