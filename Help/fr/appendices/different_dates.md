# Comprendre les différentes dates

Le nombre de dates différentes est l'un des principaux éléments de questionnement lors des phases de documentation et de consultation. La plupart du temps, cela provient d'une confusion entre les deux types de dates
* celles concernant la ressource qui est documentée (donnée, service, etc.) ;
* celles concernant la fiche de métadonnée.

## Les dates concernant la donnée


ce qui est auto, ce qui ne l'est pas
2 types de dates

### Vie et évolutions de la donnée

* Il peut y avoir plus d’une date de publication.
* II ne doit pas y avoir plus d’une date de dernière révision.
* Il ne doit pas y avoir plus d’une date de création.

### Actualité / obsolescence de la donnée

étendue temporelle

## Les dates concernant la métadonnée

Il y a deux dates liées à la métadonnée dans Isogeo qui sont gérées de façon totalement automatique.

### Date de création de la métadonnée

Elle est générée automatiquement :
* lors du scan,
* de la création manuelle de la fiche de métadonnée,
* ou bien récupérée lors d'un import CSW (via le client ou via un import manuel).

Où la trouver :
* dans APP, elle se situe dans l'onglet `Métadonnée` de la fiche (voir [la page dédiée](/fr/features/documentation/md_metadata.html#date-de-cration)).
* dans OpenCatalog, elle n'est pas représentée,
* c'est cette date qui fait référence dans le champ *dateStamp* lors du moissonnage CSW (pour le GéoCatalogue national par exemple).

### Date de dernière modification de la métadonnée

Elle est automatiquement mise à jour à chaque fois que la fiche est éditée, par le scan ou manuellement.

Où la trouver :

| APP       | OpenCatalog |
| :-------: | :---------: |
| ![APP - Date de dernière modification de la métadonnée](/fr/images/annex_dates_metadata_LastUpdate_APP.png "La date de dernière modification de la métadonnée dans APP") | ![OC - Date de dernière modification de la métadonnée](/fr/images/annex_dates_metadata_LastUpdate_OC.png "La date de dernière modification de la métadonnée dans OpenCatalog") |

