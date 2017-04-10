## Onglet "Ressources"

L’onglet « Ressources » regroupe les liens vers les documents (cartes, statistiques, etc.) et les services web associés à la donnée (visualiser, télécharger, etc.).

![Edition unitaire - Ressources](/images/inv_edit_one_linkedResources.png "L'édition unitaire - onglet Ressources")

Dans Isogeo, on recense et documente les données sources, mais il est également possible de renseigner  les services (géographiques par exemple), documents ou téléchargements liés à chaque donnée. Cela permet d'**enrichir énormément l'expérience de consultation** des fiches et donc la valorisation du patrimoine.

Il est possible d'associer tout type de lien, chacun correspondant à des actions (voir plus bas) :

* soit canonique (par exemple un site web),
* soit vers un service web géographique (par exemple un flux WMS),
* soit vers un téléchargement de la donnée (par exemple en la téléversant sur Isogeo).

_________

## <i class="fa fa-files-o"></i> Couches associées

Dans cette colonne, sont listées les associations dynamiques avec les couches des services géographiques **documentés automatiquement**.

Pour voir comment associer des couches de services à une donnée, [consulter la page dédiée](../inventory/md_services/srv_association.html#depuis-la-fiche-du-jeu-de-donn%C3%A9es).

## <i class="fa fa-globe"></i> Services cartographiques

Dans cette colonne, sont listés les liens directs vers des couches de services géographiques **documentés manuellement** (c'est-à-dire avec l'identifiant de la couche).

Cette méthode n'est conseillée que dans le cas de la documentation de services géographiques inaccessibles publiquement (serveur géographique intranet par exemple).

## <i class="fa fa-archive"></i> Données

Dans cette colonne, sont listés les liens donnant accès au téléchargement des données ou documents associés :

* soit en référençant un lien direct de téléchargement ;
* soit en référençant un lien vers une interface de téléchargement (formulaire par exemple) ;
* soit en téléversant directement les données compressées sur Isogeo.

Pour plus d'informations, consulter la page du [téléversement/téléchargement des données](../publish/hosting.html).

## <i class="fa fa-external-link"></i> Liens associés

Dans cette colonne, sont listés deux types de liens :
* les liens externes, pointant vers d'autres sites web ou applications liés à la donnée documentée ;
* les liens internes, pointant vers des ressources secondaires à associer. C'est le mécanisme permettant la [finesse d'affichage des liens selon les destinataires et les usages](../publish/share_visibility.html). ;

### Actions possibles par type de lien

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
| Esri Tile      |                | (X)           | X     |
| Donnée brute   | (X)            |               | X     |

