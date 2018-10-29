# Moissonnage CSW par le Géocatalogue national

## Description

Le GéoCatalogue national est le `noeud INSPIRE` de la France. Il moissonne les différents serveurs CSW de l’Hexagone et de ses dépendances ultra-marines. Il permet de rechercher et d’accéder aux données et aux services géographiques produits et catalogués par l’Etat, les établissements publics, les collectivités territoriales ou par d’autres organisations publiques adhérentes à cette démarche de catalogage fédératrice.

Chaque organisme adhérent peut ajouter ses services CSW à moissonner via l’administration de son compte. Ses fiches de métadonnées sont alors automatiquement ajoutées à l’ensemble du catalogue national.

## Processus global

### Créer son compte

> Attention, le site du géocatalogue ne semble pas gérer correctement les liens directs. Il est donc possible que vous soyez systématiquement redirigé sur la page d&apos;accueil.

1. tout d&apos;abord, il faut disposer d&apos;un compte adhérent. Si ce n&apos;est pas le cas, la demande se fait sur le GéoCatalogue via [le formulaire dédié](http://www.geocatalogue.fr/#!CreateAccountTileForward) (menu "Cataloguer" > "Mon compte" > en bas : "Créer en ligne votre compte") ;

    ![Création de compte sur le GéoCatalogue](/assets/annex_GeoCatalogueFR_signInForm.png "Remplir le formulaire de demande de création de compte pour le GéoCatalogue")

2. Vous recevez alors un email (cf. ci-dessous) qui vous demande de confirmer votre qualité d’organisme public par retour de mail ;

    ```
    Nous avons bien reçu votre demande de création de compte et nous vous remercions de votre intérêt pour le Géocatalogue.
    Nous tenons à préciser que le Géocatalogue permet de rechercher et consulter les métadonnées sans qu&apos;il soit nécessaire de s&apos;inscrire en ligne.

    L&apos;inscription en ligne est adressée aux autorités publiques qui souhaitent publier leurs métadonnées géographiques, en accord avec la Directive européenne INSPIRE (voir les conditions d&apos;utilisation du Géocatalogue).
    Si vous êtes dans cette configuration nous vous remercions de nous le confirmer en réponse à ce mail. Nous vous ferons alors parvenir un identifiant et un mot de passe vous permettant de cataloguer vos métadonnées.
    ```

3. Une fois votre demande traitée, un email vous notifie avec les paramètres de connexion ;

    ```
    Votre inscription au GéoCatalogue a été prise en compte.

    Détail de votre inscription :
        Organisation : isogeo
        Nom : Isogeo
        Adresse électronique : contact@isogeo.fr
        Identifiant de connexion : isogeo
        Mot de passe : M@uX2pAs7

    ```

### Ajouter son CSW

1. Une fois authentifié, se rendre dans le menu ["Gérer mes points de moissonnage"](http://geocatalogue.fr/geocatadmin/admin/ListHarvestPoint.do) ;

2. Ajouter son point d&apos;entrée. Sous la deuxième section `Liste des points de moissonnage de type CSW`, cliquer sur `Ajouter`,

3. Nommer son point d&apos;entrée,

4. Dans le champ adresse, ajouter l&apos;URL fournie par Isogeo, en enlevant les paramètres d&apos;URLs, c&apos;est-à-dire tout ce qui se trouve à droite du caractère `?` ; tout ce qui est en rouge dans cet exemple :

    http://api.isogeo.com/services/ows/s/77c4ab4d358d47e9aff30b550df007f9/c/27fb10c606ed40d89673130bb12b44ed/_O0ZrGFaAOC2XImyQb5UneFcyXLD0?<span style="color:#FF0000">service=CSW&version=2.0.2&request=GetCapabilities</span>

5. Choisir la fréquence de moissonnage souhaitée,

6. Laisser les champs `Identifiant` et `Mot de passe` vides,

7. Indiquer le nombre de métadonnées à moissonner, en sachant que :
    * 0 est une valeur valide : aucune fiche ne sera moissonnée ; **Non recommandé**
    * si ce nombre est inférieur à celui des fiches présentes dans le CSW, seul le nombre de fiches indiqué sera moissonné, sans garantie de l&apos;ordre (pas de tri) ; **Non recommandé**
    * si ce nombre est supérieur à celui des fiches, toutes les fiches seront moissonnées. **Recommandé**

8. Choisir le protocole `CSW FILTER`,

9. Ne pas renseigner le champ `Catalogue source`,

10. Valider et cliquer sur `Lancer le moissonnage sur ce point` (double flèche verte vers le bas) : une popup vous informe quand le moissonnage est terminé et une notification vous est envoyée par email :

    ```
    Bonjour,

    Le point "Isogeo" a été visité et 2 métadonnée(s) ont été moissonnées :

    - Fichier urn:isogeo:metadata:uuid:56ed291a-f72f-46dc-9835-fc9ae29fe938 ("Stades de la coupe du monde de football - 2014")  avec succès.
    - Fichier urn:isogeo:metadata:uuid:9dc817d4-ed0b-4026-97cf-e1007a410f0c ("Cantons - France métropolitaine - 2013")  avec succès.

    Veuillez ne pas répondre à ce mail.
    Merci de votre participation.
    Le GéoCatalogue.
    ```

Voici le processus suivi :
![Ajout d&apos;un point d&apos;entrée CSW](/assets/annex_GeoCatalogueFR_entryPointsAddConfig.gif "Configurer son point d&apos;entrée CSW")


### Précisions

Le GéoCatalogue national est géré par le BRGM avec qui nous travaillons pour nous assurer de la bonne interopérabilité entre nos plateformes. Isogeo s&apos;assure de générer des CSW respectant les standards. Nous ne pouvons cependant pas répondre pour les anomalies liées au GéoCatalogue (ou à d&apos;autres plateformes).

N&apos;hésitez pas à contacter l&apos;équipe du GéoCatalogue national en cas de problème.
