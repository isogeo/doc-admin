# Importer des métadonnées standardisées

Si votre fournisseur de données vous a livré des métadonnées ou bien que vous disposiez déjà de métadonnées auparavant, Isogeo vous permet de les importer au format XML ISO 19139 ou Dublin-Core.

## Pas à pas

1.	Ouvrir une fiche de métadonnées, manuelle ou créée par le scan ;
2.	Cliquer sur `Modifier` ;
3.	Cliquer sur `Importer` la fenêtre pop-up ci-dessous s’ouvre :

    ![Import XML](/images/inv_edit_one_importXML.png "Formulaire d'import XML")

4.	Cliquer sur « Sélectionner le fichier », l’explorateur Windows s’ouvre ;
5.	Sélectionner le XML à importer ;
6.	Activer ou désactiver l’option `écraser les données existantes` ;
7.	Cliquer sur `Importer`. Les informations contenues dans le XML sont importées dans la fiche de métadonnées.

## Champs importés

* titre,
* résumé,
* thématiques INSPIRE,
* mots-clés,
* date de création de la métadonnée,
* période de validité,
* contexte de collecte,
* emprise,
* échelle équivalente,
* résolution,
* contraintes d’accès et d’utilisation,
* contact (si adresse email présente),
* type de la ressource,
* format
* l’encodage des caractères de la donnée,
* langue de la métadonnée.

## Précisions et cas particuliers

### Multi-emprises

L'import réalise l'union de toutes les emprises géographiques présentes dans la fiche importée. Si l'une des emprises contient toutes les autres, seule celle-ci est récupérée.

### Créer la métadonnée en important un XML ou après avoir créé la métadonnée ?

Comme dit dans l'introduction
