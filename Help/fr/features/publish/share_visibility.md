# Des ressources adaptées aux usages

Il n’est pas rare que l’administrateur de données mette en place des ressources associées aux données qui ne sont pas accessibles ou visibles par tout le monde. Le cas de figure classique est la différence d’accès entre le grand public et les services internes.

Comme toujours dans Isogeo :

* Priorité aux usages : les différents niveaux d’accès aux ressources dépendent du type d’utilisateurs, autrement dit des destinataires des partages ;
* Tout est métadonnée : un bouquet de services géographiques peut également être documenté à minima ;
* Documenter une fois, valoriser X fois.

## Mise en oeuvre

### Scénario classique

Par exemple, dans le compte de démonstration d’Isogeo, nous avons inventorié les données du [portail GéoLittoral](http://www.geolittoral.developpement-durable.gouv.fr/). Imaginons un scénario selon lequel la fiche de métadonnées de submersion marine offre 3 niveaux de ressources liés aux usages :

* La possibilité ouverte à **tous** (grand public) de **télécharger** la donnée brute ;
* La possibilité pour les **utilisateurs avertis** de **visualiser** le flux WMS (rendu de la couche d’information) ;
* La possibilité pour les **agents en interne** de **consulter les données via un flux WFS** (affichage des attributs).

### Procédure

Dans l’ordre, nous avons :

1.	Créé une fiche de métadonnées de type « ressource » sur le serveur cartographique pour les utilisateurs avertis (serveur WMS donc)  et affectée au catalogue « **utilisateurs avertis (niveau 1)** » ;

2.	Créé une fiche de métadonnées de type « ressource » sur le serveur cartographique pour les agents internes (serveur WFS donc) et affectée au catalogue « **agents internes (niveau 2)** » ;

3.	Téléversé la donnée brute directement sur la fiche de métadonnées de submersion marine créée grâce au scan automatique et affectée au catalogue GéoLittoral ;

4.	Associé à la fiche de submersion marine le flux WMS renseigné dans la fiche sur le serveur WMS ;

5.	Associé à la fiche de submersion marine le flux WFS renseigné dans la fiche sur le serveur WFS ;

6.	Crée un partage OpenCatalog pour le grand public dans lequel on a mis le catalogue GéoLittoral sans le catalogue « public » ou « interne » : [la fiche est consultable ici](http://open.isogeo.com/s/14cbb8fce4fd471ab3af9fb849d0dcd1/GbhLhG7hoNFHdkrgh8n9o9I3Sym20/m/cb71d8f42ba44788b348b5bc9f79e58c).

    ![Submersion marine 0](/images/adm_shares_OC_demo_Geolittoral0.png "Seul le lien de téléchargement des données est disponible")

7.	Créé un partage OpenCatalog pour les utilisateurs avertis grand public dans lequel on a mis le catalogue GéoLittoral avec le catalogue « utilisateurs avertis » : [la fiche est consultable ici](http://open.isogeo.com/s/4e3617fa59674e8b98b4d9a62a6ad6e7/oOGYrOxAMjf11jYmo6hbbeGNG2TC0/m/cb71d8f42ba44788b348b5bc9f79e58c).

    ![Submersion marine 1](/images/adm_shares_OC_demo_Geolittoral1.png "En plus du lien de téléchargement, on a accès au WMS")

8.	Créé un partage OpenCatalog pour le grand public dans lequel on a mis le catalogue GéoLittoral avec le catalogue « utilisateurs avertis (niveau 1)» et le catalogue « agents internes (niveau 2)» : [la fiche est consultable ici](http://open.isogeo.com/s/d61fe9892eb345e7b6840bbfc4cf5733/zuD9LtBEXRi7ynIXyRyWIy4hC0xz0/m/cb71d8f42ba44788b348b5bc9f79e58c).

    ![Submersion marine 2](/images/adm_shares_OC_demo_Geolittoral2.png "Accès aux 3 ressources : téléchargement, WMS et WFS")


### Résultat

3 niveaux d’accès différents à la même fiche de métadonnées :

* Une interface de consultation où il n’est possible que de télécharger les données brutes ;

    ![Submersion marine 0](/images/OC_Demo_Submersion_Niv0.png "Seul le lien de téléchargement des données est disponible")

* Une interface de consultation où il est possible de :
    - télécharger les données brutes ;
    - et afficher la couche via un flux WMS ;

    ![Submersion marine 1](/images/OC_Demo_Submersion_Niv1.png "En plus du lien de téléchargement, on a accès au WMS")

* Une interface de consultation où il est possible de :
    - télécharger les données brutes ;
    - afficher la couche via un flux WMS ;
    - et afficher les données via un flux WFS

    ![Submersion marine 2](/images/OC_Demo_Submersion_Niv2.png "Accès aux 3 ressources : téléchargement, WMS et WFS")

### Schéma

3 étapes :

1.	Créer une fiche de métadonnées sur une ressource (serveur, bouquet de services, boîte à outils ensemble de traitements, etc) et renseigner les liens associés ;

2.	Associer les ressources aux fiches de métadonnées concernées ;

3.	Créer OpenCatalog. Si la fiche sur la ressource et la fiche sur les jeux de données sont dans le même partage, les liens associés à la 1ère seront visibles ;

Bonne pratique : créer un catalogue des ressources par niveau d'usage.

![Schéma affichage différencié](/images/resources_DifferentDisplays_schema.png "Accès aux 3 ressources : téléchargement, WMS et WFS")
