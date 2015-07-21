# Utiliser la passerelle INSPIRE -> DataGouv.fr

Dans le cadre du groupe de travail sur l'interopérabilité entre les normes de l'OGC et la directive INSPIRE de l'AFIGéo ([voir sur le site internet](http://afigeo.asso.fr/pole-entreprise/groupe-dinteret-ogc.html)), une passerelle a été développée entre les flux CSW et le portail Open Data national.

L'objectif est de capitaliser sur le travail de documentation des métadonnées et de référencement des données réalisé par l'écosystème géomatique en permettant aux acteurs de le  valoriser facilement sur le portail de données national.

## Pré-requis

Afin que vos données puissent être accessibles via la passerelle, il faut qu'elles remplissent plusieurs critères :

* avoir le mot-clé `données ouvertes` (voir [étiqueter](/fr/features/documentation/md_classify.html)) ;
* avoir une licence ouverte et indiquer qu'il n'y a aucune limitation au sens INSPIRE (voir [gérer les CGUs](/fr/features/documentation/md_cgu.html#conditions)) ;
* avoir une ressource associée de type WFS (voir [affecter un service WFS](/fr/features/publish/webservices.html#associer-un-flux-wfs)) ;
* être dans un catalogue partagé via CSW (voir [serveur CSW](/fr/features/publish/csw_server.html)).

## Pas à pas

1. Créer un compte sur DataGouv.fr

    Pour créer un compte ou se connecter : https://www.data.gouv.fr/login. Il est recommandé de créer un compte directement sans l'interface d'un réseau social.

    ![DataGouv - Inscription/connexion](/fr/images/annex_bridge_INSPIRE_DataGouv_00a.png "Se connecter ou créer un compte sur DataGouv")

2. Créer / rejoindre une organisation sur DataGouv.fr

    Pour cela, il faut passer par l'administration de son profil : https://www.data.gouv.fr/fr/admin/organization/new/. Si elle existe déjà, faites une demande pour la rejoindre.

    ![DataGouv - Organisation](/fr/images/annex_bridge_INSPIRE_DataGouv_00b_NewOrganization.png "Créer son organisation sur DataGouv")

3. Demander à ce que votre flux CSW soit référencé

    Une fois [votre flux CSW créé dans Isogeo](/fr/features/publish/csw_server.html), il faut écrire à [inspire@data.gouv.fr](mailto:inspire@data.gouv.fr?subject=Ajout d'un service CSW pour diffusion synchronisée sur DataGouv&cc=projets@isogeo.fr) en indiquant votre compte DataGouv.fr, votre / vos organisation(s) et bien sûr le(s) flux concerné(s).

4. Aller sur https://inspire.data.gouv.fr/

    ![Passerelle INSPIRE - Open Data (1)](/fr/images/annex_bridge_INSPIRE_DataGouv_1.png "Page d'accueil de la passerelle")

5. Autoriser la passerelle à utiliser le compte DataGouv

    ![Passerelle INSPIRE - Open Data (2)](/fr/images/annex_bridge_INSPIRE_DataGouv_2_oauth.png "Lier son compte DataGouv")

6. Choisir l'organisation à configurer

    ![Passerelle INSPIRE - Open Data (3)](/fr/images/annex_bridge_INSPIRE_DataGouv_3_LinkOrga.png "Choisir parmi ses organisations")

7. Choisir le catalogue à moissonner
8. Choisir les producteurs à associer à ce catalogue





