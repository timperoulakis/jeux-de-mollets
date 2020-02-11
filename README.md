# Jeux de mots (laids) et jeux de lettres

Pour cette nouvelle édition, nous avons hésité entre un sujet "matheux" que vous auriez adoré, sur le calcul de dérivées 
partielles d'ordre supérieur sur des fonctions non intégrables dans un espace de Lobatchevski (ah ça donne tout de suite 
l'eau à la bouche) ou un sujet plus "littéraire".

Et donc ça sera plus des jeux de lettres, qui plus est deux pour le prix d'un. Les 2 katas sont indépendants, si vous avez
 le temps de faire les deux, c'est bien, si vous ne faites que le premier c'est bien aussi !  
Réflexion faite, si vous avez le temps de faire les deux, c'est pas 'bien', c'est un miracle (ou je suis encore plus lent 
que je ne l'imaginais et j'ai BEAUCOUP d'imagination dans ce cas précis !)

Cette fois-ci, l'inspiration ne vient pas de l'excellent site [Exercism](https://exercism.io/) mais d'une autre ressource, le 
[RubyQuiz](http://rubyquiz.com/), à ne pas confondre ni avec le BurgerQuiz, ni avec le [CodeQuizzes](https://www.codequizzes.com/ruby) 
autre site très intéressant pour les débutants et les moins débutants, voire les plus débutants du tout (je vous encourage 
à y aller tester vos connaissances)! 

Bon, allez, c'est pas tout ça mais on a encore de la route à faire, alors allons-y...  

## La plus longue sous-chaîne répétée

Ecrivez un script qui trouve la plus longue sous-chaîne d'un texte donné.

Votre programme doit lire un texte donné en entrée sur STDIN et devra *afficher* sur STDOUT la plus longue chaîne de ce 
texte qui se répète au moins une fois.

Les sous-chaînes répétées ne doivent pas se chevaucher. Si plusieurs sous-chaînes de même longueur sont répétées, vous 
pouvez imprimer n'importe laquelle d'entre elles. S'il n'y a pas de sous-chaîne répétée, le résultat est une chaîne vide
(donc pas d'affichage)

Example:
```shell script
$ echo banana | ruby longest_repeated_substring.rb
an
# OU, avec la même entrée autre résulat correct
$ echo banana | ruby longest_repeated_substring.rb
na
# Lorsqu'il n'y a pas de résultat
$ echo rien | ruby longest_repeated_substring.rb

```

Vérifier que votre code est assez efficient même si le texte donné est long.

## Boucle de mots (# 149)
 
Voici un petit défi amusant (NDT: c'est eux qui le disent...) de l'Educational Computing Organization of Ontario. 

Étant donné un seul mot en entrée, essayez de trouver une lettre répétée à l'intérieur afin de pouvoir boucler le texte 
à l'affichage en réutilisant cette lettre.  
Exemple:

```shell script
$ ruby word_loop.rb yummy
yu
mm
```

Oui, je sais, non, vous n'êtes pas seul(e) si vous n'avez rien compris au sujet, même avec l'exemple. D'où les petits 
diagrammes !  

Plus précisèment, tout va se jouer à l'affichage, dont la disposition spatiale est primordiale

Par exemple:  

avec yummy, on boucle sur le 'y', votre code doit affiché un carré, qui, si on le "parcours" en pensée, redonne bien yummy
```
 y ->  u  
 |     |   
 |     |    
 m  <- m  
```
ou encore 

```shell script
$ ruby word_loop.rb Markham
Ma
ar
hk
```
Cette fois-ci, on boucle sur le 'm', vous affichez un rectangle:
(1ère ligne)  Ma ->
(2nde colonne) ark ->
(3ème ligne à l'envers)  kh->
(1ère colonne à l'envers) haM  
soit Markam ! CQFD  

Plus compliqué, avec Mississippi, où l'on boucle mais pas avec la première lettre mais sur le premier 's'  

```shell script
$ ruby word_loop.rb Mississippi
 i
 p
 p
Mis
 ss
 si
```
Le petit diagramme pour l'effet 'Haha, j\'ai compris!'
```
          I  
          P  
          |  
          P  
          |  
          I  
          |  
M -> I -> S -> S  
          |    |  
          S <- I 
 ```
   
Si aucune boucle ne peut être faite, votre code devra juste afficher un message d'erreur:

```shell script
$ ruby word_loop.rb Dana
No loop.
```
### Pour les anglophones

## Longest Repeated Substring (#153)  

This week's Ruby Quiz is to write a script that finds the longest repeated substring in a given text.

Your program will be passed some text on STDIN and is expected to print the longest repeated substring within that text to STDOUT.

Repeated substrings may not overlap. If more than one substring is repeated with the same length, you may print any of them. If there is no repeated substring, the result is an empty string (print nothing).

Example:
```shell script
$ echo banana | ruby longest_repeated_substring.rb
an
# OR
$ echo banana | ruby longest_repeated_substring.rb
na
```

Make sure your code runs efficiently when passed a large text.

## Word Loop (#149)
Here's a fun little challenge from the Educational Computing Organization of Ontario.


Given a single word as input try to find a repeated letter inside of it such that you can loop the text around and reuse 
that letter. For example:

```shell script
$ ruby word_loop.rb Mississippi
 i
 p
 p
Mis
 ss
 si
```
A little diagram :
```
          I  
          P  
          |  
          P  
          |  
          I  
          |  
M -> I -> S -> S  
          |    |  
          S <- I 
 ```

or:

```shell script
$ ruby word_loop.rb Markham
Ma
ar
hk
```
or:
```shell script
$ ruby word_loop.rb yummy
yu
mm
```
```
 y ->  u  
 |     |   
 |     |    
 m  <- m  
```
  
If a loop cannot be made, your code can just print an error message:

```shell script
$ ruby word_loop.rb Dana
No loop.
```