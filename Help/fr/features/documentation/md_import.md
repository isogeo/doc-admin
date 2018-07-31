# Importer des métadonnées standardisées

Si votre fournisseur de données vous a livré des métadonnées ou bien que vous disposiez déjà de métadonnées auparavant, Isogeo vous permet de les importer au format XML ISO 19139 ou Dublin-Core.

## Deux méthodes :

La différence entre les 2 méthodes est qu&apos;en important un fichier XML directement, sans créer de fiche au préalable dans Isogeo, la métadonnée n&apos;est pas considérée comme une métadonnée Isogeo. A ce titre, les champs XML sont importés tels quels et ne sont pas vérifiés par Isogeo. D&apos;ailleurs, l&apos;identifiant de la métadonnée demeure celui de la fiche originale, ainsi que le fichier XML téléchargé.

### Remplir une métadonnée Isogeo à partir d&apos;un fichier XML

1.	Ouvrir une fiche de métadonnées, manuelle ou créée par le scan ;
2.	Cliquer sur `Modifier` ;
3.	Cliquer sur `Importer` la fenêtre pop-up ci-dessous s’ouvre :

    ![Import XML](/images/inv_edit_one_importXML.png "Formulaire d&apos;import XML")

4.	Cliquer sur « Sélectionner le fichier », l’explorateur Windows s’ouvre ;
5.	Sélectionner le XML à importer ;
6.	Activer ou désactiver l’option `écraser les données existantes` ;
7.	Cliquer sur `Importer`. Les informations contenues dans le XML sont importées dans la fiche de métadonnées.

### Importer des métadonnées exogènes

1.	Dans l&apos;inventaire, cliquer sur le bouton <button class="metadata-create-btn btn btn-primary btn-sm"><i class="fa fa-plus"></i> Créer</button>
3.	En bas, cliquer sur le bouton <button class="btn btn-success fileinput-button" >Sélectionner les fichiers...</button>. L’explorateur Windows s’ouvre ;
5.	Sélectionner le(s) fichier(s) XML à importer. Il est recommandé d&apos;en sélectionner jusqu&apos;à 200, même si aucune limite n&apos;est imposée. ;
6.	L&apos;import démarre. La durée dépend du nombre de fichiers à traiter. Un rapport est affiché à la fin.

![Import XML par lot dans Isogeo](/images/inv_edit_batch_import_xml.gif "Import par lot de métadonnées XML ISO-19139")

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

_____

## Précisions et cas particuliers

### Formats et types non reconnus

Si, à la fin de l&apos;import, le rapport indique une erreur du format comme ci-dessous, c&apos;est qu&apos;Isogeo n&apos;a pas trouvé de correspondance avec sa base de formats. On ne peut donc qu&apos;importer les données dont la syntaxe du nom de format est connue par la plateforme.

Voici les règles appliquées par Isogeo afin de déterminer le type d&apos;une fiche :

* Raster : le format doit être renseigné à ECW ou GEOTIFF (majuscules ou minuscules).
* Vecteur (au choix) :
    * Le format doit être renseigné à tout autre format supporté par Isogeo. Par exemple SHP, ORACLE ou TAB (majuscules ou minuscules).
    * Ou il existe un élément `gmd:spatialRepresentationInfo/*/gmd:MD_VectorSpatialRepresentation` (syntaxe pseudo XPath).
    * Ou il existe un élément `gmd:spatialRepresentationType/*/gmd:MD_SpatialRepresentationTypeCode`  avec l&apos;attribut codeListValue renseigné à la valeur vector (syntaxe pseudo XPath).


![Import XML - erreur type](/images/inv_edit_batch_import_xml_error_type.png "Erreur de type lors d&apos;un import XML")

Exemple d&apos;extrait de XML compatible :

```xml
<gmd:distributionInfo>
  <gmd:MD_Distribution>
    <gmd:distributionFormat>
      <gmd:MD_Format>
        <gmd:name>
          <gco:CharacterString>shapefile</gco:CharacterString>
        </gmd:name>
        <gmd:version>
          <gco:CharacterString>1.0</gco:CharacterString>
        </gmd:version>
      </gmd:MD_Format>
    </gmd:distributionFormat>
  </gmd:distributionInfo>
</gmd:MD_Distribution>
```

### Multi-emprises

L&apos;import réalise l&apos;union de toutes les emprises géographiques présentes dans la fiche importée. Si l&apos;une des emprises contient toutes les autres, seule celle-ci est récupérée.

