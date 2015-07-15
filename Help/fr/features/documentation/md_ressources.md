## Onglet "Ressources"

L’onglet « Ressources » regroupe les liens vers les documents (cartes, statistiques, etc.) et les services web associés à la donnée (visualiser, télécharger, etc.).

![Edition unitaire - Ressources](/fr/images/inv_edit_one_linkedResources.png "L'édition unitaire - onglet Ressources")

### La fiche au format XML (ISO 19139)

La structure des fiches de métadonnées sur les jeux de données géographiques sont standardisées par l'ISO (International Organization for Standardization) sous la référence 19139, qui est l'implémentation XML du modèle 19115, elle-même définie par le [comité ISO /TC 211](https://en.wikipedia.org/wiki/ISO/TC_211), en charge des questions géograhiques au sein de l'organisme de standardisation.

Pleinement interopérable, la plateforme Isogeo maintient à jour en permanence la [version 19139:2007](http://www.iso.org/iso/catalogue_detail.htm?csnumber=32557) des fiches de métadonnées, vous permettant de les récupérer à tout moment à des fins d'échanges ou d'import dans une autre fiche par exemple.

Elle est accessible dans la section `Serices associés` de l'onglet Ressources d'une fiche ou sous le bouton "Télécharger" lorsque la fiche est partagée dans un OpenCatalog.

### Liens associés

Dans Isogeo, on recense et documente les données sources, mais il est également possible de renseigner  les services (géographiques par exemple), documents ou téléchargements liés à chaque donnée. Cela permet d'**enrichir énormément l'expérience de consultation** des fiches et donc la valorisation du patrimoine.

Il est possible d'associer tout type de lien, chacun correspondant à des actions (voir plus bas) :

* soit canonique (par exemple un site web),
* soit vers un service web géographique (par exemple un flux WMS),
* soit vers un téléchargement de la donnée (par exemple en la téléversant sur Isogeo).

Pour explorer toutes les possibilités de ces liens, consulter les pages dédiées à la valorisation :
* des [services géographiques](/fr/features/publish/webservices.html),
* du [téléversement/téléchargement des données](/fr/features/publish/hosting.html),
* de la [finesse d'affichage des liens selon les destinataires et les usages](/fr/features/publish/share_visibility.html).

#### Actions possibles par type de lien

Légende :
* X = possible
* (X) = valeur par défaut

| Type           | Téléchargement | Visualisation | Autre |
| :------------- | :------------: | :-----------: | :---: |
| Lien           | X              | X             | (X)   |
| WFS            | (X)            | (X)           | X     |
| WMS            |                | (X)           | X     |
| WMTS           |                | (X)           | X     |
| Esri Feature   | (X)            | (X)           | X     |
| Esri Map       |                | (X)           | X     |
| Esri Tiled Map |                | (X)           | X     |
| Donnée brute   | (X)            |               | X     |

