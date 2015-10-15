# Diffuser votre catalogue en CSW (moissonnage)

Une fois constitué, votre catalogue de données peut être « moissonné » par n’importe quel « client CSW », tel que les Infrastructures de Données Géographiques (IDG) territoriales et certaines applications SIG (QGIS par exemple, GéoNetwork, GéoSource...).

Pour activer le moissonnage d’un catalogue, il vous suffit de :

1.	Dans le menu `Administration`  > `Partage`, cliquer sur `Nouveau` ;
2.	Cliquer sur le bouton en forme d'engrenages ;
3.	Sélectionner l’application `CSW` ;
4.	Sélectionner le ou les catalogues à publier ;
5.	Nommer le partage ;
6.	`Enregistrer` ;

L’URL du service Web CSW fourni par Isogeo dispose d’une clef sécurisée (jeton). Vous pouvez renouveler la clef de sécurité du service. Si vous le faites, pensez à communiquer cette nouvelle URL au(x) destinataire(s) !

![Serveur CSW](/fr/images/adm_shares_CSW_edit.png "Diffuser les catalogues via le protocole CSW")

## Un service, des catalogues

Lorsqu'un partage de type CSW est créé avec plusieurs catalogues dedans, une URL de service CSW est créée par catalogue. Il peut être utile de n'en fournir qu'une au point de moissonnage.

Pour cela, il suffit de retirer l'identifiant du catalogue de l'URL, toujours préfixé par `c/` ici isolé en rouge :

http:// services.api.isogeo.com/ows/ s/77c4ab4d358d47e9aff30b550df007f9/<span style="color:#FF0000">c/27fb10c606ed40d89673130bb12b44ed/</span>_O0ZrGFaAOC2XImyQb5UneFcyXLD0?service=CSW&version=2.0.2&request=GetCapabilities
