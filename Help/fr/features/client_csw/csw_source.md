# Créer un point d'entrée "Service CSW"

## Utiliser le client CSW

Pour créer un point d’entrée « Service CSW », vous devez :

1.	Dans le menu « Points d’entrée », créer un nouveau point d’entrée
2.	Sélectionner le type « Service CSW »
3.	Nommer le point d’entrée (exemple : catalogue CG Calvados)
4.	Saisir l’URL du CSW sans les paramètres (c’est-à-dire sans ce qui est après e « ? »)
5.	Enregistrer
6.	Scanner

![Nouveau point d'entrée CSW](../images/user_profile_coordinates.png "Moissonner un serveur CSW")

Une fois le scan terminé, toutes les fiches de métadonnées récoltées sont consultables dans l’inventaire et directement accessibles via la catégorie de filtres « Autres », en bas de liste.

Ces fiches ne sont pas modifiables car nous considérons qu’elles sont encore gérées dans le catalogue moissonné. Si vous souhaitez les modifier et donc les gérer avec Isogeo, vous devez supprimer le point d’entrée et vous séparer de votre ancien outil de catalogage ;)

Remarques :

* Le moissonnage CSW respecte les même règles de fonctionnement que l’import XML ISO 19139 décrit au §5.5.3 « l’import des métadonnées existantes »
* le XML ISO 19139 disponible dans l’onglet « ressources » de la fiche est absolument identique à l'original (même s'il est invalide).
