# Mettre en forme les textes

Toujours dans l'optique de faciliter la saisie et la consultation des catalogues de données, Isogeo permet de mettre en forme les zones de texte en utilisant la syntaxe markdown, reprise dans l'application mais aussi dans les OpenCatalogs.

Un mémo est disponible sous forme de lien en regard de chaque zone de texte éditable dans l'application, mais voici une liste exhaustive de ce qu'il est possible de faire.

Quelques recommandations :
* les retours à la ligne sont interprétés. Par exemple, pour ouvrir une liste à puces, il faut sauter une ligne.
* le rendu peut ne pas être le même partout (cela dépend des implémentations) ;
* s'en tenir à des mises en forme simples pour ne pas perdre en lisibilité ;


> Astuce : cette aide en ligne est intégralement rédigée en markdown !

## Niveaux de titre

#### Syntaxe

```no-highlight
# Titre 1
## Titre 2
### Titre 3
#### Titre 4
```

#### Rendu

# Titre 1
## Titre 2
### Titre 3
#### Titre 4

## Style de textes

#### Syntaxe

```no-highlight
Mettre un texte en italique avec une *astérisque*
ou un _underscores (autrement appelés tiret du 8)_ de chaque côté.

Mettre un texte en gras avec deux **astérisques**
ou deux __underscores (autrement appelés tiret du 8)__ de chaque côté.

Barrer un texte avec deux ~~tildes~~ de chaque côté.

Combiner les différents styles est possible avec
un _underscore, **deux astérisques** et ~~deux tildes~~_.
```

#### Rendu

Mettre un texte en italique avec une *astérisque*
ou un _underscores (autrement appelés tiret du 8)_ de chaque côté.

Mettre un texte en gras avec deux **astérisques**
ou deux __underscores (autrement appelés tiret du 8)__ de chaque côté.

Barrer un texte avec deux ~~tildes~~ de chaque côté.

Combiner les différents styles est possible avec
un _underscore, **deux astérisques** et ~~deux tildes~~_.


## Listes à puces

#### Syntaxe

```no-highlight
Liste numérotée à plusieurs niveaux :

1. premier élément de la liste
2. deuxième élément de la liste
  1. indenter avec 2 espaces avant le chiffre permet de faire des sous-listes imbriquées
  2. deuxième élement de second niveau
3. troisième élément de la liste de 1er niveau qui contient une sous-liste non ordonnée :
  * avec une astérisque,
  - avec un tiret,
  + avec un plus.

Ou sans numéros :

* avec une astérisque,
- avec un tiret,
+ avec un plus.
```

#### Rendu

Liste numérotée à plusieurs niveaux :

1. premier élément de la liste
2. deuxième élément de la liste
  1. indenter avec 2 espaces avant le chiffre permet de faire des sous-listes imbriquées
  2. deuxième élément de second niveau
3. troisième élément de la liste de 1er niveau qui contient une sous-liste non ordonnée :
  * avec une astérisque,
  - avec un tiret,
  + avec un plus.

Ou sans numéros :

* avec une astérisque,
- avec un tiret,
+ avec un plus.

## Liens avec étiquettes

#### Syntaxe

```no-highlight
[Lien simple vers le site Isogeo](http://www.isogeo.com)

[Lien simple vers le site Isogeo avec une référence](http://www.isogeo.com "Site d'Isogeo")

[Chemin relatif vers un fichier par exemple](../Isogeo.Help_fr.pdf)
```

#### Rendu

[Lien simple vers le site Isogeo](http://www.isogeo.com)

[Lien simple vers le site Isogeo avec une référence](http://www.isogeo.com "Site d'Isogeo")

[Chemin relatif vers un fichier par exemple](../Isogeo.Help_fr.pdf)

## Images

Attention il n'est pas possible de préciser les dimensions de l'image. Il faut donc lier vers une image déjà redimensionnée.

#### Syntaxe

```no-highlight
![Texte alternatif](https://www.isogeo.com/images/logo.png "Titre de l'image")
```

#### Rendu

![Texte alternatif](https://www.isogeo.com/images/logo.png "Titre de l'image")
