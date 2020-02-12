# Jeux de mots (laids) et jeux de lettres

Pour cette nouvelle édition, nous avons hésité entre un sujet "matheux" que vous auriez adoré, sur le calcul de dérivées 
partielles d'ordre supérieur sur des fonctions non intégrables dans un espace de Lobatchevski (ah ça donne tout de suite 
l'eau à la bouche) ou un sujet plus "littéraire".

Cette fois-ci, l'inspiration ne vient pas de l'excellent site [Exercism](https://exercism.io/) mais d'une autre ressource, le 
[RubyQuiz](http://rubyquiz.com/), à ne pas confondre ni avec le BurgerQuiz, ni avec le [CodeQuizzes](https://www.codequizzes.com/ruby) 
autre site très intéressant pour les débutants et les moins débutants, voire les plus débutants du tout (je vous encourage 
à y aller tester vos connaissances)! 

Bon, allez, c'est pas tout ça mais on a encore de la route à faire, alors allons-y...  

## La plus longue sous-chaîne répétée

Vous devez trouver (et retourner) la plus longue sous-chaîne "en double" d'une chaîne de caractères donnée en entrée.

Les sous-chaînes répétées ne doivent pas se chevaucher. Si plusieurs sous-chaînes de même longueur sont répétées, vous 
pouvez retourner n'importe laquelle d'entre elles. S'il n'y a pas de sous-chaîne répétée, le résultat est une chaîne vide

Example:
pour la chaîne "b*an**an*a", le résultat correct est soit 'an' soit 'na', puisque on peut découper ce mot de ces 2 façons:  
b *an* *an* a  
ou  
ba *na* *na*

Vérifier que votre code est assez rapide même si le texte donné est long.

### Pour les anglophones

## Longest Repeated Substring (#153)  

This week's Ruby Quiz is to write a script that finds the longest repeated substring in a given text.

Your program will be passed some text and is expected to return the longest repeated substring within that text .

Repeated substrings may not overlap. If more than one substring is repeated with the same length, you may return any of them. If there is no repeated substring, the result is an empty string.

Example:
for "banana" you have to return 'an' or 'na'


Make sure your code runs efficiently when passed a large text.
