# L'édition des métadonnées

## Éditer des métadonnées par lot

Toujours dans le but de faciliter la saisie, vous pouvez saisir plusieurs fiches en même temps. Par exemple, si 5 couches ont le même historique, il vous suffit de les sélectionner et de renseigner une seule fois l’historique pour ces 5 données. Cette fonctionnalité est disponible pour un certain nombre d'onglets.

La démarche à suivre est la suivante :

1.	Dans l’inventaire, sélectionnez par un simple clic les fiches de métadonnées à documenter
2.	Cliquez sur le bouton « Editer »,
3.	Renseignez les champs que vous souhaitez puis cliquez sur "Enregistrer".

![L'édition par lot](/assets/inv_edit_batch_demo_history_comment.gif "Démonstration de l'édition par lot")

> Astuce : vérifiez bien votre sélection avant de vous lancer dans une édition par lot (voir les précisions plus bas).

### Champs éditables par lot

Tous les champs sont éditables par lot, à l'exception de :

* l'emplacement ;
* la date de création de la donnée ;
* les attributs.

### Fonctionnement et précisions

*  l'édition par lot n'affiche pas les informations déjà renseignées dans les fiches sélectionnées. C'est pourquoi l'onglet géographie affiche toujours une carte vide, même si les enveloppes convexes (emprises) existent déjà dans les fiches sélectionnées.

* l'édition par lot écrase les valeurs existantes des champs uniques et ajoute les valeurs indiquées pour les champs multiples. Par exemple, si vous indiquez un résumé et une ressource associée, il écrasera les résumés éventuellement renseignés auparavant mais ajoutera la ressource associée aux précédentes.

* l'édition par lot ne s'appliquera qu'aux champs modifiés. Par exemple, si vous n'ajoutez que le résumé, les autres champs seront laissés en l'état.

* si une fiche de la sélection ne vous appartient pas, vous ne pourrez pas réaliser l'édition par lot. Pensez à filtrer sur votre groupe de travail.

* si plusieurs types de ressources sont représentés dans la sélection (par exemple des données vecteurs avec des services), les champs disponibles pour l'édition par lot seront limités au plus petit dénominateur commun.

Globalement, le fonctionnement de l'édition par lot peut-être résumé selon le tableau suivant : 

| **Type de champ** | **Exemple** | **Edition unitaire**                                      | **Edition par lot**                                                                                                                                                                                                                                                          |
|:-----------------:|:-----------:|:---------------------------------------------------------:|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
| **Textuel**       | Titre       | Affichage du texte déjà saisi.                            | Ecrasement du texte sur toutes les fiches (même si du texte est déjà saisi).                                                                                                                                                                                                 |
| **Numérique**     | Echelle     | Affichage du nombre déjà saisi.                           | Ecrasement du nombre sur toutes les fiches (même si un nombre est déjà saisi).                                                                                                                                                                                               |
| **Date**          | Date        | Affichage de la date déjà saisi.                          | Ecrasement de la date sur toutes les fiches (même si une date est déjà saisie).                                                                                                                                                                                              |
| **Associatif**    | Contact     | Affichage de la liste des sous-ressources déjà associées. | Ajout de la sous-ressource sur toutes les fiches même si elle est déjà associée.                                                                                                                                                                                             |
| **Etiquette**     | Mot-clé     | Affichage des étiquettes déjà affectées.                  | Affichage des étiquettes déjà affectées sur toutes les fiches (✔), des étiquettes affectées sur au moins une fiche de la sélection (-) et des étiquettes non affectées (☐). Cocher ajoute l'étiquette à toute les fiches, décocher supprime l'étiquette à toutes les fiches. |

________

## L'édition unitaire

### Pas à pas

1.	Ouvrir la fiche descriptive ;
2.	Cliquer sur le bouton `Modifier` ;
3.	Saisir les informations demandées dans les différents onglets :
    * Ajouter un titre (ex : les points d’apport volontaire installés à Bordeaux en 2012) ;
    * Ajouter un résumé (ex : cette donnée représente l’emplacement des points d’apport volontaire des déchets ménagers sur le territoire de la ville de Bordeaux en 2012) ;
    * Décrire le contexte et la méthode de collecte (ex : cette donnée a été créée par les services municipaux de la ville dans le cadre de leur mission de gestion des déchets ménagers. Cette donnée sert également de support de communication et d’outil pour les usagers du tri) ;
    * Indiquer la date de création de la donnée (ex : 15/12/2012) ;
    * Saisir les Condition Générales d’Utilisation (CGU) en faisant directement référence à une licence, une convention d’échange ;
    * Ajouter des liens vers les services et les ressources associés à la donnée en renseignant son URL (ex : webmapping, service de téléchargement, cartothèque, photo, vidéo, etc.)

________

## Supprimer des métadonnées

La suppression d'une métadonnée se fait à 2 niveaux :
* au niveau de votre inventaire ;
* dans la base du Scan FME. Si vous scannez la donnée une nouvelle fois, il faudra saisir les métadonnées de nouveau.

Le comportement est identique, que la suppression soit unitaire ou par lot.

### Supprimer des métadonnées par lot

Pour supprimer plusieurs métadonnées par lot :

1. Sélectionner les métadonnées à supprimer ;
2. Isoler la sélection en cliquant sur le bouton de sélection où le nombre de métadonnées sélectionnées est indiqué ;
3. Cliquer sur le bouton <button id="delete-btn" class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i> Supprimer</button>.

![La suppression par lot dans Isogeo](/assets/inv_edit_batch_delete.gif "Démonstration de la suppression par lot")

### Supprimer une métadonnée

Pour supprimer une fiche en particulier :

1. Ouvrir la fiche dans le navigateur ;
2. Cliquer sur l'icône en forme de poubelle en haut à droite <button class="metadata-delete btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button> ;
3. Confirmer la suppression.

![La suppression d'une métadonnée dans Isogeo](/assets/inv_edit_one_delete.png "Démonstration de la suppression unitaire")
