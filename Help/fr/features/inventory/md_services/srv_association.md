# Associer une fiche de donnée avec une couche d&apos;un service

Une fois une fiche de service documentée et ses couches recensées (automatiquement ou manuellement), il faut les lier aux fiches de données.

## Fonctionnement

Le principe est d&apos;associer une couche à une donnée. L&apos;association est bidirectionnelle :

* soit à partir de la couche de la fiche du service ;
* soit depuis la fiche de la donnée.

### Prérequis

* avoir documenté une fiche de service (voir chapitre précédent) ;
* avoir des fiches de données à associer aux couches de service (soit scannées, soit créées manuellement).

### Marche à suivre illustrée pour associer les couches

#### Depuis la fiche du service

1. Ouvrir la fiche du service sur l&apos;onglet `Ressources`et activer le mode d&apos;édition en cliquant sur le bouton `Modifier` ;
2. Décocher la case `Associées` et entrer un nom de couche pour filtrer sur la couche à associer (parmi celles en bleu clair) ;

	![WMS not yet associated](/images/inv_edit_srv_CLC_WMS_filter.png "Filtrer sur les couches non associées")

3. Cliquer sur l&apos;icône <i class="fa fa-link fa-lg"></i> pour ouvrir la fenêtre d&apos;association. Chercher la donnée à associer à la couche du service. Vérifier dans la volet de droite avant de cliquer sur `Valider` ;

	![WMS association](/images/inv_edit_srv_CLC_WMS_association.png "Fenêtre d&apos;association d&apos;une couche à une donnée")

4. L&apos;association validée, la couche s&apos;affiche désormais en bleu foncé dans la liste des couches du service. Cliquer sur `Enregistrer`.

	![WMS association successed](/images/inv_edit_srv_CLC_WMS_associated_notYet_difference.png "Les couches associées ont une couleur différente")

5. Le titre de la fiche de donnée associée est désormais affiché. En cliquant dessus, cela ouvre cette même fiche.

	![WMS within dataset](/images/inv_edit_srv_CLC_WMS_associated_data.png "La couche associée apparaît dans la fiche de la donnée")

#### Depuis la fiche du jeu de données

1. Ouvrir la fiche du jeu de données sur l&apos;onglet `Ressources`et activer le mode d&apos;édition en cliquant sur le bouton `Modifier` ;
2. Dans la colonne *Couches associées*, cliquer sur le bouton `+ Associer une couche d&apos;un service`. La fenêtre d&apos;association s&apos;affiche en filtrant sur les fiches de services et en affichant le nombre de couches non associées. Choisir la couche à associer et cliquer sur `Valider`;

	![WFS association from dataset](/images/inv_edit_one_resource_srv_association.png "Associer une couche depuis la fiche d&apos;une donnée")

3. Une fois l&apos;association validée, la couche vient s&apos;ajouter à la colonne. Le type de service est clairement affiché, ainsi que l&apos;identifiant de la couche associée et le titre de la fiche de service associée. En cliquant sur ce dernier, cela ouvre cette même fiche.

	![WFS association from dataset](/images/inv_edit_one_resource_srv_associated.png "Associer une couche depuis la fiche d&apos;une donnée")

4. Cliquer sur `Enregistrer`.

## Caractéristiques détaillées de l&apos;association

* dans les partages, la couche associée est visible dans la fiche du jeu de données si et seulement si la fiche du service est dans le même partage. Voir [la partie dédiée à ce mécanisme avancé sur la visibilité des liens selon le partage](../../publish/share_visibility.html).

* une couche d&apos;un service ne peut être associée qu&apos;à une seule fiche de jeux de données et une fiche de jeu de données ne peut être associée qu&apos;à une seule couche par service (relation 1-1).  Il n&apos;est donc pas possible d&apos;associer toutes les couches d&apos;un même service WMS à la même fiche d&apos;un ensemble de données par exemple.

* il est possible d&apos;éditer le titre et l&apos;identifiant d&apos;une fiche via l&apos;icône <i class="fa fa-pencil fa-lg"></i>

> Astuce : pour dissocier une couche d&apos;une donnée, il suffit de cliquer sur l&apos;icône <i class="fa fa-chain-broken fa-lg"></i> en bas de la couche.
