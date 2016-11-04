# Service CSW -> passerelle INSPIRE -> data.gouv.fr

Dans le cadre du groupe de travail sur l'interopérabilité entre les normes de l'OGC et la directive INSPIRE de l'AFIGéo ([voir sur le site internet](http://afigeo.asso.fr/pole-entreprise/groupe-dinteret-ogc.html)), une passerelle a été développée entre les flux CSW et le portail Open Data national.

L'objectif est de capitaliser sur le travail de documentation des métadonnées et de référencement des données réalisé par l'écosystème géomatique en permettant aux acteurs de le  valoriser facilement sur le portail de données national.

> * Pour une présentation globale de la plateforme, consulter [le README principal](https://github.com/sgmap/inspire#quest-ce-que-la-passerelle-inspire-).

> * Une [foire aux questions](https://github.com/sgmap/inspire/wiki/FAQ) est également disponible dans [le wiki du dépôt](https://github.com/sgmap/inspire/wiki).

## Pré-requis

Afin que vos données puissent être accessibles via la passerelle, il faut qu'elles remplissent plusieurs critères :

* avoir le mot-clé `données ouvertes` (voir [étiqueter](/fr/features/documentation/md_classify.html)) ;
* avoir une licence ouverte et indiquer qu'il n'y a aucune limitation au sens INSPIRE (voir [gérer les CGUs](/fr/features/documentation/md_cgu.html#conditions)) ;
* être dans un catalogue partagé via CSW (voir [serveur CSW](/fr/features/publish/csw_server.html)).
* contenir au moins un lien de téléchargement opérationnel ( ou ).

Les liens de téléchargement reconnus par la passerelle sont :

* lien vers un service WFS : voir [affecter un service WFS](/fr/features/publish/webservices.html#associer-un-flux-wfs) ;
* lien vers des fichiers de données vecteur (GeoJSON, Shapefile, MapInfo MIF/MID, MapInfo TAB et GML) ou raster (ECW, JPEG2000 et GeoTIFF) : voir [affecter un lien de téléchargement](/fr/features/publish/hosting.html)

Les liens vers des fichiers PDF ne sont pas reconnus comme des liens vers des données.

## Utilisation pas à pas

Pour publier des métadonnées via la passerelle Inspire vous devez suivre les étapes suivantes :

1. Vérifiez que vous disposez d'un compte sur data.gouv.fr et qu'il est associé à une organisation référencée ;
2. Référencez votre flux CSW et vérifiez que le moissonnage est opérationnel ;
3. Associez des producteurs référencés dans les métadonnées de votre flux CSW à votre organisation ;
4. Publier les métadonnées pertinentes sur data.gouv.fr

Ces étapes sont détaillées dans les parties suivantes.

________

### Compte et organisation sur DataGouv

1. Créer un compte sur DataGouv.fr

    Pour créer un compte ou se connecter : https://www.data.gouv.fr/login. Il est recommandé de créer un compte directement sans l'interface d'un réseau social.

    ![DataGouv - Inscription/connexion](/images/annex_bridge_INSPIRE_DataGouv_00a.png "Se connecter ou créer un compte sur DataGouv")

2. Créer / rejoindre une organisation sur DataGouv.fr

    Pour cela, il faut passer par l'administration de son profil : https://www.data.gouv.fr/fr/admin/organization/new/. Si elle existe déjà, faites une demande pour la rejoindre.

    ![DataGouv - Organisation](/images/annex_bridge_INSPIRE_DataGouv_00b_NewOrganization.png "Créer son organisation sur DataGouv")

_______

### Référencement et moissonnage du flux CSW

1. Demander à ce que votre flux CSW soit référencé

    Une fois [votre flux CSW créé dans Isogeo](/fr/features/publish/csw_server.html), il faut écrire à [inspire@data.gouv.fr](mailto:inspire@data.gouv.fr?subject=Ajout d'un service CSW pour diffusion synchronisée sur DataGouv&cc=projets@isogeo.fr) en indiquant votre compte DataGouv.fr, votre / vos organisation(s) et bien sûr le(s) flux concerné(s).

2. Lancer le moissonnage de son catalogue

    Une fois votre flux CSW référencé par l'équipe de data.gouv.fr, il faut lancer le moissonnage. Pour cela :
    * [se rendre sur la page des flux](https://inspire.data.gouv.fr/services/by-protocol/csw)
    * cliquez sur le bouton [Consulter les catalogues](https://inspire.data.gouv.fr/services/by-protocol/csw) ;
    * puis cliquez sur `Synchroniser` en regard de votre service.

    ![Passerelle INSPIRE - Open Data (1)](/images/annex_bridge_INSPIRE_DataGouv_1a_syncCSW.png "Page d'accueil de la passerelle")

3. Vérifier le moissonnage

    Une fois la synchronisation terminée (actualiser la page au bout de quelques minutes selon le nombre de métadonnées à moissonner), ouvrir la page détaillée du service.

    Plusieurs filtres facilitent la consultation des métadonnées moissonnées :
    * `Disponibilité = Oui` : limite l'affichage aux métadonnées dont les données sont accessibles (cf. [prérequis](#pre-requis))
    * `Type de résultat = Jeu de données ou Jeu de données (non géographiques)` : en choisissant 'Jeu de données', seules les métadonnées publiées à l'origine en ISO 19139 sont affichées ; en choisissant 'Jeu de données (non géographiques)', seules les métadonnées publiées à l'origine en Dublin Core sont affichées
    * `Donnée ouverte = Oui` : limite l'affichage aux données ouvertes dont la licence est reconnue par data.gouv.fr. Exemples de licences non reconnues par data.gouv.fr : la licence engagée et la licence associée du Grand-Lyon
    * `Publié sur data.gouv.fr = Oui` : identifie les métadonnées moissonnées par la passerelle et déjà publiées sur data.gouv.fr

    ![Passerelle INSPIRE - Open Data (1)](/images/annex_bridge_INSPIRE_DataGouv_1b_serviceDetails.png "Page d'accueil de la passerelle")

    Si une donnée semble ne pas être disponible, revérifier les [prérequis](/fr/appendices/bridge_csw2datagouvfr.html#pr-requis) puis [contacter l'équipe DataGouv](mailto:inspire@data.gouv.fr?subject=Problème de moissonnage d'un CSW (Isogeo)&cc=projets@isogeo.fr).

______

### Associer des producteurs à votre organisation

1. Aller sur https://inspire.data.gouv.fr/

    ![Passerelle INSPIRE - Open Data (1)](/images/annex_bridge_INSPIRE_DataGouv_1.png "Page d'accueil de la passerelle")

2. Autoriser la passerelle à utiliser le compte DataGouv

    ![Passerelle INSPIRE - Open Data (2)](/images/annex_bridge_INSPIRE_DataGouv_2_oauth.png "Lier son compte DataGouv")

3. Choisir l'organisation à configurer

    ![Passerelle INSPIRE - Open Data (3)](/images/annex_bridge_INSPIRE_DataGouv_3_LinkOrga.png "Choisir parmi ses organisations")

4. Associer le catalogue moissonné

    Dans la liste, choisir le catalogue correspondant au flux que vous avez référencé précédemment.

    ![Passerelle INSPIRE - Open Data (4)](/images/annex_bridge_INSPIRE_DataGouv_4_PickCatalog.png "Choisir parmi les catalogues sources référencés")

5. Choisir les producteurs à associer à ce catalogue

    Il s'agit de faire correspondre les contacts renseignés dans la métadonnée et le producteur identifié de la donnée. Par exemple, l'administrateur d'une IDG pourra indiquer à quels ayant-droits correspondent quelles données :

    - dans la liste des organisations associées à votre compte, cliquez sur le nom de l'organisation à configurer ;
    - vérifiez que votre organisation est associée au bon catalogue. Si ce n'est pas le cas, cliquez sur le bouton "Modifier" et sélectionner le catalogue que vous avez demandé de référencer précédemment ;
    - cliquez sur le bouton "Associer des producteurs" et sélectionner les producteurs pour lesquels vous assumerez la publication des métadonnées.

    ![Passerelle INSPIRE - Open Data (4)](/images/annex_bridge_INSPIRE_DataGouv_6_producerMatched.png "Choisir parmi les producteurs à associer")

    Lors de cette dernière étape, vous ne devez pas sélectionner des producteurs dont vous n'avez pas la responsabilité. En effet, une fois que vous aurez associé un producteur à votre organisation aucune autre organisation ne pourra l'associer à son propre compte. Vous ne devez donc pas associer à votre organisation des producteurs dont la politique de publication doit être assurer indépendamment de la vôtre.

    Typiquement, n'associez pas l'IGN, le BRGM, l'INSEE ou d'autres producteurs de données de ce type si vous ne faites pas partie de ces organismes. Par contre, il peut être très pertinent qu'un EPCI prenne en charge la publication des données pour le compte de ses communes.

______

### Publier sur data.gouv.fr

6. Synchroniser le catalogue pour obtenir les données prêtes à être publiées

    * rendez vous sur la page de votre organisation dans la passerelle : [Sélection de l'organisation](https://inspire.data.gouv.fr/account/organizations) ;
    * dans la liste des organisations associées à votre compte, cliquez sur le nom de l'organisation associée au catalogue dont vous voulez publier des données.

    Le premier cadre au haut de la page dresse un état des lieux des données publiables au sens de data.gouv.fr :

    - les données déjà publiées et accessibles sur data.gouv.fr ;
    - les données en attente de publication : les données vérifiant les [prérequis](#pré-requis-applicables-aux-données), issues de producteurs associés à votre organisme et qui n'ont pas encore été publiées (elles sont en attente d'une action de votre part).

    Les données qui ne vérifient pas les prérequis et qui ne sont pas issues de producteurs associés à votre organisme n'apparaissent pas dans cette page.

    ![Passerelle INSPIRE - Open Data (4)](/images/annex_bridge_INSPIRE_DataGouv_7c_syncDone.png "Choisir parmi les producteurs à associer")

7. Publier des données sur data.gouv.fr

    * depuis la page précédente, cliquez sur le bouton "Publier des données" ;
    * le premier cadre en haut de la page identifie l'ensemble des données en attente d'être publiées. Cliquez sur le lien "Publier" d'un jeu de données particulier ou sur le bouton "Publier toutes les données" pour publier ces données sur data.gouv.fr

    3 statuts sont possibles :
    * `Données attente de publication`, les nouvelles données recensées qui attendent une action de votre part ;
    * `Données en mode privé`, visibles uniquement par les membres de votre organisation ;
    * `Données publiées`, visibles publiquement sur data.gouv.fr.

    ![Passerelle INSPIRE - Open Data (7)](/images/annex_bridge_INSPIRE_DataGouv_9_dataPublishedBack.png "Régler le niveau de publication des données sur le portail DataGouv")
