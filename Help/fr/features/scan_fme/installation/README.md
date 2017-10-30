# Guide d'installation du service de scan

## Historique

Développé en 2013 par Isogeo, le service Isogeo Worker a commencé à être déployé à la fin de la même année et surtout à partir de début 2014.

Basé sur l'ETL FME, édité par Safe Software, il permet de lire un très grand nombre de formats de données géographiques et d'en extraire la plupart des informations techniques que l'on s'attend à voir dans une fiche de métadonnées.

![Logo ](http://www.safe.com/inc/images/safe-software-logo.png "Nommer le nouveau service et cliquer sur télécharger")

## Architecture

![Schéma de l'architecture vulgarisée](/images/scanFME_architecture.png "Architecture globale du service de scan Isogeo")

## Relations logiques

* un groupe de travail peut installer plusieurs services.
* un service ne peut être lié qu'à un seul groupe de travail.
* une licence FME peut être utilisée par plusieurs services.

## Guide vidéo

<iframe width="640" height="360" src="https://www.youtube.com/embed/gLCSeQZMqvs" frameborder="0" allowfullscreen></iframe>
