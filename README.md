## Les **Bases de données** sont nos amis

## La liaison entre migration et BDD  
  Les migrations peuvent devenir un véritable casse-tête si l'on essaye d'apprendre à s'en servir avant de comprendre ce que c'est et quel est le rapport avec les DB.  

  Aprés un nombre incalculable d'heures passées à se noyer dans la documentation sheakspearienne de Rails, on se retrouve facilement à éxécuter du code dans une syntax obscure 'pourVoirCeQueCaFait' et la bingo, dans la console on fini par trouver sa table et y rentrer du contenu. Sauf que voila.. C'était une table de test qu'on a appellé 'truc', rempli de contenu de test, et comme on débute et qu'on est des élèves appliqués, on voudrait 'éffacer' cette table 'truc', pour creer une table 'Useuuurs'.  

  Intuitivement on se dirige vers notre éditeur préféré (celui qui mets des couleurs partout dans notre code), click droit, effacer le fichier de migration qui contient la trace de notre table 'truc': ERREUR FATAL, de fil en aiguille, ca plante de partout, le terminal génère des incantations mystiques à chaque nouvelle commande et la table n'a même pas disparue de la DB ! On panique et ... comme on débute on peux se permettre de carrément supprimer l'App entière, en effet.   
  Mais il est peut être préférable de ne pas être en sueur à chaque fois qu'on 'db:migrate' quelquechose, non ?  

* Une **migration** c'est quoi ?  

``` class Truc < ActiveRecord::Base ```  

  C'est une "**instance**" de class propre a la librairie de rails qui s'appelle ActiveRecord et qui hérite de touuuuuute ses methodes pour communiquer en SQL avec la base de donnée. Ce qui signifie que quand on saisie des paramèttres dans notre méthode 'create_table'(db/migrates/) par exemple, ces paramèttres vont être traduit par les attribut de ActiveRecord en langage SQL(apparement les bases de données ne comprènenent pas les clicks droits) et aprés, magie, on va lire dans des forums "Rails c'est trop bien, on peux dialoguer avec les BDD sans une seule ligne de SQL".  



## Les Migrations

## Générer et modifier notre BDD

Voici les règles concernant les noms des tables et colonnes :

* tout en anglais, sans accent, en minuscules ;

* les espaces sont remplacées par des underscores « _ » ;

* le nom des tables doit être le pluriel de ce que représente une entrée ;

* le nom des colonnes est au singulier.

