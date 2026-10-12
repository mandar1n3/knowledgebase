# Le modéle conceptuel de données

MCD est une représentation abstraite des données d'un système d'information.
C'est un model non technique compréhensible par tous et réalisé dans le cadre
d'une analyse de besoins.

> C'est un outil de communication qui doit permettre une interprétation
> commune des besoins exprimés en termes de données à traiter.

## Entité

Une entité est un objet du monde réel pour lequel un système informatique doit
conserver des données, elles possède une existence physique. Dans ce cas on
parle d'**entité concrète**. Une entité conceptuel tel qu'une transaction est
**une entité abstraite**.

## Attribut

Un attribut est une donnée élementaire d'une entité qui sert à la caractériser.

> La combinaison d'une entité et de ses attributs constitue un moule permettant
> de créer des objets.

## Occurrence

Une occurrence désigne un élement particulier d'une entité, elle correspond à
une ligne dans la table de base de données.

## Association

Un lien _sémantique_ entre deux ou plusieurs entités est dites une association,
identifiée par **un verbe**.
Quand on lie deux entités entre elles on parle d'association binaire.

Lorsqu'une association met en cause des occurrence d'une même entité on parle
**d'entité réflexive**.

On parle **d'association de degré superieur** quand celle-ci est appliquée sur
plus de deux entités.

## Identifiant

Un identifiant est un attribut ou un groupe d'attributs qui sert à identifier
chaque occurrence d'une entité de manière unique.

> Chaque occurrence d'une entité doit obligatoirement avoir un identifiant
> unique.

## Multiplicité

Le nombre minimum et maximum d'occurrence d'une entité envers une autre est
appellée **multiplicité**. C'est une contrainte sur les associations, elle
comporte un couple de valeur **(min, max)**. Ces multiplicités seront établit
en fonction du fonctionnement de l'organisation.

## Contrainte de domaine des attributs

Les conteainte de domaine des attributs permettent de fixer le type de données
de l'attribut et les valeurs admissible de celui-ci. Le type assigner au
données dépendra de l'application metier à informatiser.
