# Raccourcis

L&apos;une des caractéristiques d&apos;Isogeo est que toute page, ressource, sous-ressource ou paramètre a un identifiant unique, assurant d&apos;une part un socle fonctionnel cohérent et sécurisé mais ouvrant aussi la voie à des favoris bien pratiques.

Il suffit pour cela de connaître la façon de construire les URLs à partir de l&apos;URL de base https://app.isogeo.com.

Petite compilation à l&apos;usage des power-users !

## Tableau de bord

| Description                        | Raccourci |
| :--------------------------------- | :-------- |
| Catalogues       | [/dashboard/catalogs](https://app.isogeo.com/dashboard/catalogs) |
| Formats (défaut) | [/dashboard/formats](https://app.isogeo.com/dashboard/formats) |
| Mots-clés        | [/dashboard/keywords](https://app.isogeo.com/dashboard/keywords) |
| Propriétaires    | [/dashboard/owners](https://app.isogeo.com/dashboard/owners) |
| SRS              | [/dashboard/coordinate-systems](https://app.isogeo.com/dashboard/coordinate-systems) |
| Thèmes INSPIRE   | [/dashboard/themes](https://app.isogeo.com/dashboard/themes) |

## Administration

| Description                        | Raccourci |
| :--------------------------------- | :-------- |
| Paramètres (défaut) | [/admin/settings](https://app.isogeo.com/admin/settings) |
| Utilisateurs - Liste | [/admin/users/memberships](https://app.isogeo.com/admin/users/memberships) |
| Utilisateurs - Invitations en attente | [/admin/users/invitations](https://app.isogeo.com/admin/users/invitations) |
| Utilisateurs - Nouveau | [/admin/users/invitations/new](https://app.isogeo.com/admin/users/invitations/new) |
| Catalogues - Liste globale | [/admin/catalogs](https://app.isogeo.com/admin/catalogs) |
| Catalogues - De mon groupe | [/admin/catalogs/owned](https://app.isogeo.com/admin/catalogs/owned) |
| Catalogues - Nouveau | [/admin/catalogs/new](https://app.isogeo.com/admin/catalogs/new) |
| Partages - Liste | [/admin/shares](https://app.isogeo.com/admin/shares) |
| Partages - Nouveau | [/admin/shares/new](https://app.isogeo.com/admin/shares/new) |
| Mots-clés   | [/admin/keywords](https://app.isogeo.com/admin/keywords) |
| Carnet d&apos;adresses - Liste   | [/admin/address-book](https://app.isogeo.com/admin/address-book) |
| Carnet d&apos;adresses - Nouveau   | [/admin/address-book/new](https://app.isogeo.com/admin/address-book/new) |
| Licences - Liste globale  | [/admin/licenses](https://app.isogeo.com/admin/licenses) |
| Licences - Référentiel  | [/admin/licenses/shared](https://app.isogeo.com/admin/licenses/shared) |
| Licences - De mon groupe  | [/admin/licenses/owned](https://app.isogeo.com/admin/licenses/owned) |
| Licences - Nouvelle  | [/admin/licenses/new](https://app.isogeo.com/admin/licenses/new) |
| Spécifications - Liste globale  | [/admin/specifications](https://app.isogeo.com/admin/specifications) |
| Spécifications - Référentiel  | [/admin/specifications/shared](https://app.isogeo.com/admin/specifications/shared) |
| Spécifications - De mon groupe  | [/admin/specifications/owned](https://app.isogeo.com/admin/specifications/owned) |
| Spécifications - Nouvelle  | [/admin/specifications/new](https://app.isogeo.com/admin/specifications/new) |
| Scan FME  | [/admin/isogeo-worker](https://app.isogeo.com/admin/isogeo-worker) |

## Inventaire

La plupart de ces exemples correspondent aux filtres et tris de la recherche dont le fonctionnement est détaillé [ici](../features/inventory/search.html). Il ne s&apos;agit que d&apos;exemples de base et toutes les combinaisons ne sont pas démontrables de façon générique. A vous de trouver celles qui correspondent le plus à votre usage de l&apos;inventaire.

| Description                        | Raccourci |
| :--------------------------------- | :-------- |
| Métadonnées sans mot-clé | [/inventory/search?q=has-no:keyword](https://app.isogeo.com/inventory/search?q=has-no:keyword) |
| Métadonnées sans catalogue (seulement pour les admins) | [/inventory/search?q=has-no:catalog](https://app.isogeo.com/inventory/search?q=has-no:catalog) |
| Métadonnées sans mot-clé | [/inventory/search?q=has-no:keyword](https://app.isogeo.com/inventory/search?q=has-no:keyword) |
| Vecteurs, rasters et données tabulaires non géographiques | [/inventory/search?q=type:dataset](https://app.isogeo.com/inventory/search?q=type:dataset) |
| Vecteurs, rasters et données tabulaires non géographiques sans mot-clé | [/inventory/search?q=type:dataset has-no:keyword](https://app.isogeo.com/inventory/search?q=type:dataset has-no:keyword) |
| Vecteurs, rasters et données tabulaires non géographiques sans SRS | [/inventory/search?q=type:dataset has-no:coordinate-system](https://app.isogeo.com/inventory/search?q=type:dataset has-no:coordinate-system) |
| Vecteurs, rasters et données tabulaires non géographiques sans thème INSPIRE | [/inventory/search?q=type:dataset has-no:keyword:inspire-theme](https://app.isogeo.com/inventory/search?q=type:dataset has-no:keyword:inspire-theme) |
| Vecteurs | [/inventory/search?q=type:vector-dataset](https://app.isogeo.com/inventory/search?q=type:vector-dataset) |
| Vecteurs sans mot-clé | [/inventory/search?q=type:vector-dataset has-no:keyword](https://app.isogeo.com/inventory/search?q=type:vector-dataset has-no:keyword) |
| Vecteurs sans SRS | [/inventory/search?q=type:vector-dataset has-no:coordinate-system](https://app.isogeo.com/inventory/search?q=type:vector-dataset has-no:coordinate-system) |
| Vecteurs sans thème INSPIRE | [/inventory/search?q=type:vector-dataset has-no:keyword:inspire-theme](https://app.isogeo.com/inventory/search?q=type:vector-dataset has-no:keyword:inspire-theme) |
| Rasters | [/inventory/search?q=type:raster-dataset](https://app.isogeo.com/inventory/search?q=type:raster-dataset) |
| Rasters sans mot-clé | [/inventory/search?q=type:raster-dataset has-no:keyword](https://app.isogeo.com/inventory/search?q=type:raster-dataset has-no:keyword) |
| Rasters sans SRS | [/inventory/search?q=type:raster-dataset has-no:coordinate-system](https://app.isogeo.com/inventory/search?q=type:raster-dataset has-no:coordinate-system) |
| Rasters sans thème INSPIRE | [/inventory/search?q=type:raster-dataset has-no:keyword:inspire-theme](https://app.isogeo.com/inventory/search?q=type:raster-dataset has-no:keyword:inspire-theme) |
| Services visualisables | [/inventory/search?q=type:service action:view](https://app.isogeo.com/inventory/search?q=type:service action:view) |
| Services sans aucun lien | [/inventory/search?q=type:service has-no:action](https://app.isogeo.com/inventory/search?q=type:service has-no:action) |

> Ces paramètres fonctionnent aussi sur OpenCatalog en remplaçant l&apos;URL de base par celle de l&apos;OpenCatalog en question.