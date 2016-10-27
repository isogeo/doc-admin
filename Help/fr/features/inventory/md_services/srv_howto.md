# Recenser les services web géographiques

## Fonctionnement

### Prérequis

* [l'option "Autoriser la création manuelle de fiches de métadonnées"](/fr/features/admin/group.html#autoriser-la-création-de-fiches-manuelles) doit être activée ;
* disposer des URLs GetCapabilities de services compatibles.

### Marche à suivre

Le process complet se fait en deux étapes :
1. Recenser et documenter le service ;
2. Associer les couches servies et les jeux de données inventoriés dans Isogeo.

Pour l'exemple, le service WMS des données Corine Land Cover est utilisé : http://clc.developpement-durable.gouv.fr/geoserver/wms?request=GetCapabilities.

#### Recenser un service

1. Dans l'inventaire, cliquer le bouton `+ Créer` ;
2. Dans le formulaire, choisir `d'une fiche relative à un service`;
3. Coller l'URL GetCapabilities du service à scanner : si l'URL est correctement formatée et le service joignable, son format est automatiquement proposé ;
4. En cliquant sur `Créer`, le service est donc 'scanné' et les métadonnées suivantes sont récupérées :
    * le titre et le résumé ;
    * le contact ;
    * les mots-clés ;
    * le format donc et sa plus haute version disponible ;
    * les opérations possibles ;
    * et bien sûr les couches servies.

5. sqkdfdkg




| Type de service           | URL à soumettre | Exemple |
| :------------------------ | :------- | -- |
| WMS                       | 1:2 | 2:2 |
| WFS                       | 1:3 | 2:3 |
| WMTS                      | 1:4 | 2:4 |
| Esri Map Service          | 1:5 | 2:5 |
| Esri Feature Service      | 1:6 | 2:6 |
| Esri Tiled Map Service    | 1:7 | 2:7 |
