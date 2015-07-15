# Formatting texts

Since we are always making it easier for you to enter data and view data catalogs, Isogeo lets you format text areas using markdown syntax, which is used in the application as well as OpenCatalogs.

A cheat sheet is provided via a link next to each editable text field in the application. Here is a complete list of what can be done.

Some notes:
* carriage returns are interpreted. For example, to start a bulleted list, you must skip a line.
* the rendering may not be the same throughout (depending on the implementation);
* use simple formatting to maintain optimal readability;


> Tip: this online help has been entirely written in markdown!

## Title levels

#### Syntax

```no-highlight
# Title 1
## Title 2
### Title 3
#### Title 4
```

#### Result

# Title 1
## Title 2
### Title 3
#### Title 4

## Text style

#### Syntax

```no-highlight
Put text in italics using an *asterisk*
or an _underscore_ on either side.

Put text in bold using two **asterisks**
or two __underscores__ on either side.

Strike through text using two ~~tildes~~ on either side.

You can combine different styles with
one _underscore, **two asterisks** and ~~two tildes~~_.
```

#### Result

Put text in italics using an *asterisk*
or an _underscore_ on either side.

Put text in bold using two **asterisks**
or two __underscores__ on either side.

Strike through text using two ~~tildes~~ on either side.

You can combine different styles with
one _underscore, **two asterisks** and ~~two tildes~~_.


## Bulleted list

#### Syntax

```no-highlight
Multi-level numbered list:

1. first element in the list
2. second element in the list
  1. indent using 2 spaces before the number to created nested sublists
  2. second level 2 element
3. third element in the level 1 list containing an unordered list:
  * with an asterisk,
  - with a dash,
  + with a plus.

Or without numbers:

* with an asterisk,
- with a dash,
+ with a plus.
```

#### Result

Multi-level numbered list:

1. first element in the list
2. second element in the list
  1. indent using 2 spaces before the number to created nested sublists
  2. second level 2 element
3. third element in the level 1 list containing an unordered list:
  * with an asterisk,
  - with a dash,
  + with a plus.

Or without numbers:

* with an asterisk,
- with a dash,
+ with a plus.

## Links with tags

#### Syntax

```no-highlight
[Simple link to the Isogeo site](http://www.isogeo.com)

[Simple link to the Isogeo site with a reference](http://www.isogeo.com "Isogeo site")

[Relative path to a file for example](/en/index.pdf)
```

#### Result

[Simple link to the Isogeo site](http://www.isogeo.com)

[Simple link to the Isogeo site with a reference](http://www.isogeo.com "Isogeo site")

[Relative path to a file for example](/en/index.pdf)


## Images

Note that you cannot specify the dimensions of the image. You must link to an image that has already been resized.

#### Syntax

```no-highlight
![Alternate text](http://www.isogeo.com/images/logo.png "Image title")
```

#### Result

![Alternate text](http://www.isogeo.com/images/logo.png "Image title")
