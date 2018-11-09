# Les **Bases de données** sont nos amis

## Migration et BDD, c'est quoi le rapport ?  
   
  Les **migrations** peuvent devenir un véritable casse-tête si l'on essaye d'apprendre à s'en servir avant de comprendre ce que c'est et quel est le rapport avec les DB.  
  
  Aprés un nombre incalculable d'heures passées à se noyer dans la documentation sheakspearienne de Rails, on se retrouve facilement à éxécuter du code dans une syntax obscure **'pourVoirCeQueCaFait'** et la bingo, dans la console on fini par trouver sa table et y rentrer du contenu. Sauf que voila.. C'était une table de test qu'on a appellé 'truc', rempli de contenu de test, et comme on débute et qu'on est des élèves appliqués, on voudrait 'éffacer' cette table 'truc', pour creer une table 'Useuuurs'.  
  
  Intuitivement on se dirige vers notre éditeur préféré (celui qui mets des couleurs partout dans notre code), click droit, effacer le fichier de migration qui contient la trace de notre table 'truc'--> **ERREUR FATAL**, de fil en aiguille, ca plante de partout, le terminal génère des incantations mystiques à chaque nouvelle commande et la table n'a même pas disparue de la DB ! On panique et ... comme on débute on peux se permettre de carrément supprimer l'App entière, en effet.   
  Mais il est peut être préférable de ne pas être en sueur à chaque fois qu'on 'db:migrate' quelquechose, non ?  
  
* Deja une Base de donnée c'est quoi ?
  
  GrOsSo-MoDo --> Un fichier qui permet de stocker n'importe qu'elle sorte d'information et souvent ... en trés trés grande quantité.  
  Sauf que, c'est informations (ou données) on en a régulièrement besoin, alors si elle sont toutes là en vrac dans notre fichier ca devenir compliquer de les appeller dans nos programmes. 
  * Donc une BDD, ca se structure un peux comme un tableau :  
  colone1 | colone2 | colone3
  --- | --- | ---
  string | type | type
  valeur | valeur | valeur  
  
* Il était une fois : Une **migration** c'est quoi ?  

``` class Truc < ActiveRecord::Base ```  

C'est une "**instance**" de class propre a la librairie de rails qui s'appelle **ActiveRecord** et qui **hérite** de touuuuuute ses **methodes** pour communiquer en **SQL** avec la **base de donnée**.  
Ce qui signifie que quand on saisie des paramèttres dans notre méthode 'create_table'(db/migrates/) par exemple, ces paramèttres vont être **traduit par les attribut de ActiveRecord** en langage **SQL**(apparement les bases de données ne comprènenent pas les clicks droits) et aprés, magie, on va lire dans des forums "Rails c'est trop bien, on peux dialoguer avec les BDD sans une seule ligne de SQL". Et ben en fait, des lignes SQL, il y en a, même plein, sauf que c'est pas nous qui les codons.  C'est le framework* Rails 

* Une **migration** ca sert à quoi ?  

Ca sert à envoyer des instructions structurales (qui modifient sa structure) à la base de donnée. Par exemple "**supprimer une table**" c'est une instruction qui modifie la structure de la BDD puisqu'on lui retire un élément.  
J'aime bien me représenter le fonctionnement des migrations comme des lettres que j'enverais à un chef de chantier si j'étais une riche propriétaire de plusieurs complexes hoteliers.  
  ```rails g migration create_hostel_tahiti  ```  
    
   Comme je ne sais pas parler tahitien, j'engage un traducteur qui s'appelle 'Activo-recordo' pour traduire la lettre suivante :

```
 create_hostel :bora_bora
    --> Je veux 1 piscine , de type 'a debordement', options : jacuzzi
  end
```  
  
Evidement le chef de chantier pendant que je lui écrit, il est au courant de rien. Il me faut a présent poster mon courrier :  
    
  ```rails db:migrate```  
    
C'est un courrier super sonique, il arrive trés vite, et le chantier commence aussitot.  
En fait j'ai changé d'avis, je veux aussi un espace de meditation pour chien dans mon hotel parceque mon detestable chiwawa, dont je ne m'occupe même pas, n'aurait pas les chakras allignés en ce moment. J'en profiterais bien pour l'emmener en vacance. Zut le courrier traduit est déja parti !!
Pas de panique ! On va quand même pas **detruire l'hotel entier** à cause de cela. Il me suffit d'envoyer un autre courrier super sonique avec mes nouvelles instructions :  
  ```rails g migration add_place_dog_meditation```  
etc..

## Quelques méthodes pratico-gogo de migration  
  
## Step-by-Step Model et BDD  
  
## Le Roll-back, Magie ? ou piege ?  
  
## Tester la BDD  
  
## Générer et modifier notre BDD

Voici les règles concernant les noms des tables et colonnes :

* tout en anglais, sans accent, en minuscules ;

* les espaces sont remplacées par des underscores « _ » ;

* le nom des tables doit être le pluriel de ce que représente une entrée ;

* le nom des colonnes est au singulier.

