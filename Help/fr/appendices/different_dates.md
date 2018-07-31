# Comprendre les différentes dates

Le nombre de dates différentes est l&apos;un des principaux éléments de questionnement lors des phases de documentation et de consultation. La plupart du temps, cela provient d&apos;une confusion entre les deux types de dates :
* celles concernant la ressource qui est documentée (donnée, service, etc.) ;
* celles concernant la fiche de métadonnée portant sur cette ressource.

Pour information, Isogeo utilise systématiquement le calendrier grégorien et les dates sont stockées sous forme de *timestamp* selon l&apos;[ISO 8601](https://fr.wikipedia.org/wiki/ISO_8601) dans le [fuseau horaire UTC](https://fr.wikipedia.org/wiki/ISO_8601#Fuseau_horaire).

_____

## Les dates concernant la ressource

Les dates liées à la donnée sont regroupées dans l&apos;onglet [`Histoire`](../features/documentation/md_history.html) et sont réparties dans 2 sections différentes :
* [Période de validité](../features/documentation/md_history.html#priode-de-validit) et [Fréquence de mise à jour](../features/documentation/md_history.html#frquence-de-mise--jour) ;
* [Evénements](../features/documentation/md_history.html#evnements).

#### Dates automatiques et manuelles

Parmi toutes cas dates, seules les dates de modification sont automatiquement renseignées par le scan.

En effet, lorsqu&apos;une fiche est créée (manuellement ou automatiquement), la date de création est ![APP - Date de création vide](/images/annex_dates_data_creationDate_empty_APP.png "La date de création doit être renseignée manuellement") car la date remontée informatiquement est la date de création sur le disque dur et non celle correspondant à la date de création initiale de la ressource.

Par exemple, si le référentiel GéoFLA du 01/12/2013 est copié sur un ordinateur pour la première fois le 01/03/2014, c&apos;est cette dernière date qui serait remontée. Or, celle qu&apos;il faut renseigner est celle correspondant à la création initiale de la donnée (c&apos;est-à-dire le 01/12/2013).

### Evénements : vie et évolutions de la donnée

Une date de référence de la ressource est une information représentative de la vie de la ressource. Il en existe 3 types, distingées par des badges de couleur dans l&apos;application :
* <div class="timeline-badge success"><i class="fa fa-plus"></i> : <span style="color:#8FB39B">création (en vert)</span>,</div>
* <div class="timeline-badge warning"><i class="fa fa-bullhorn"></i> : <span style="color:#F29800"> publication (en orange)</span>,</div>
* <div class="timeline-badge info"><i class="fa fa-pencil"></i> : <span style="color:#5bc0de">modification ou révision (en bleu)</span>.</div>

![APP - Evénements d&apos;une ressource](/images/inv_edit_one_history_events.png "Les différents types d&apos;événements de la vie d&apos;une ressource")

Quelques règles encadrent ces dates :
* Il ne doit pas y avoir plus d’une date de création.
* Il peut y avoir plus d’une date de publication ;
* II ne doit pas y avoir plus d’une date de dernière révision mais il peut y avoir plusieurs dates de révision (la plus récente est évidemment prise en compte) ;
* Pour des raisons de lisibilité, les événements sont regroupés par jour.

### Validité et mise à jour : actualité et obsolescence de la donnée

Les sections [Période de validité](../features/documentation/md_history.html#priode-de-validit) et [Fréquence de mise à jour](../features/documentation/md_history.html#frquence-de-mise--jour) définissent  une indication de la période de temps couverte par la ressource, ce qui est un indicateur de l’actualité de la ressource.

Par exemple, cela définit la période de validité d’un Plan Local d’Urbanisme (PLU).

![APP - Validité et fréquence](/images/annex_dates_data_temporalValidity_APP.png "Les dates qui définissent l&apos;actualité et l&apos;obsolescence d&apos;une ressource")

_____

## Les dates concernant la métadonnée

Il y a deux dates liées à la métadonnée dans Isogeo qui sont gérées de façon totalement automatique.

### Date de création de la métadonnée

Elle est générée automatiquement :
* lors du scan,
* de la création manuelle de la fiche de métadonnée,
* ou bien récupérée lors d&apos;un import CSW (via le client ou via un import manuel).

Où la trouver :
* dans APP, elle se situe dans l&apos;onglet `Métadonnée` de la fiche (voir [la page dédiée](../features/documentation/md_metadata.html#date-de-cration)).
* dans OpenCatalog, elle n&apos;est pas représentée,
* c&apos;est cette date qui fait référence dans le champ *dateStamp* lors du moissonnage CSW (pour le GéoCatalogue national par exemple).

### Date de dernière modification de la métadonnée

Elle est automatiquement mise à jour à chaque fois que la fiche est éditée, par le scan ou manuellement.

Où la trouver :

| APP       | OpenCatalog |
| :-------: | :---------: |
| ![APP - Date de dernière modification de la métadonnée](/images/annex_dates_metadata_LastUpdate_APP.png "La date de dernière modification de la métadonnée dans APP") | ![OC - Date de dernière modification de la métadonnée](/images/annex_dates_metadata_LastUpdate_OC.png "La date de dernière modification de la métadonnée dans OpenCatalog") |

