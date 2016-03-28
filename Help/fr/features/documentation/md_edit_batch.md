# Éditer des fiches de métadonnées par lot

Toujours dans le but de faciliter la saisie, vous pouvez saisir plusieurs fiches en même temps. Par exemple, si 5 couches ont le même historique, il vous suffit de les sélectionner et de renseigner une seule fois l’historique pour ces 5 données. Cette fonctionnalité est disponible pour un certain nombre d'onglets.

La démarche à suivre est la suivante :

1.	Dans l’inventaire, sélectionnez par un simple clic les fiches de métadonnées à documenter
2.	Cliquez sur le bouton « Editer »,
3.	Renseignez les champs que vous souhaitez puis cliquez sur "Enregistrer".

![L'édition par lot](/images/inv_edit_batch_demo_history_comment.gif "Démonstration de l'édition par lot")

> Astuce : vérifiez bien votre sélection avant de vous lancer dans une édition par lot (voir les précisions plus bas).

## Champs éditables par lot

| Onglet          | Ed. / lot |
|:----------------|:---------:|
| Identification  | X         |
| Histoire        | X         |
| Géographie      | X         |
| Qualité         | X         |
| Attributs       |           |
| CGU             | X         |
| Ressources      | X         |
| Contacts        | X         |
| Avancé          | X         |
| Métadonnée      | X         |


## Fonctionnement et précisions

*  l'édition par lot n'affiche pas les informations déjà renseignées dans les fiches sélectionnées. Par exemple c'est pourquoi l'onglet géographie affiche toujours une carte vide, même si les enveloppes convexes (emprises) existent déjà dans les fiches sélectionnées.

* l'édition par lot écrase les valeurs existantes des champs uniques et ajoute les valeurs indiquées pour les champs multiples. Par exemple, si vous indiquez un résumé et une ressource associée, il écrasera les résumés éventuellement renseignés auparavant mais ajoutera la ressource associée aux précédentes.

* l'édition par lot ne s'appliquera qu'aux champs modifiés. Par exemple, si vous n'ajoutez que le résumé, les autres champs seront laissés en l'état.

* si une fiche de la sélection ne vous appartient pas, vous ne pourrez pas réaliser l'édition par lot. Pensez à filtrer sur votre groupe de travail.

* si plusieurs types de ressources sont représentés dans la sélection (par exemple des données vecteurs avec des services), les champs disponibles pour l'édition par lot seront limités au plus petit dénominateur commun.
