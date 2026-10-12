-- charger une base de données
USE tintin;

-- voir les différentes tables 
show tables;

-- caractéristiques d'une table 
describe personnage;

-- afficher tous les enregistrements d'une table 
SELECT * FROM album;
SELECT * FROM personnage;

-- afficher certains champs (projection)
SELECT titreAlb FROM album;
SELECT titreAlb, dateAlb FROM album;
SELECT nomPers, prenomPers FROM personnage;

-- condition WHERE (sélection)
/*
	=	égal
	!=	différent
	>	plus grand
	< 	plus petit
	>=	plus grand ou égal
	<=	plus petit ou égal
*/
SELECT titreAlb, dateAlb FROM album
WHERE dateAlb<1940;	

SELECT titreAlb, dateAlb FROM album
WHERE dateAlb=1947;

SELECT titreAlb, dateAlb FROM album
WHERE dateAlb!=1947;

SELECT titreAlb, dateAlb FROM album
WHERE dateAlb BETWEEN 1940 AND 1960; -- entre 2 valeurs

SELECT titreAlb, dateAlb FROM album
WHERE dateAlb not BETWEEN 1940 AND 1960;

SELECT nomPers FROM personnage
WHERE nompers BETWEEN 'F' AND 'RZ'; 

SELECT nomPers, prenomPers FROM personnage
where prenomPers = NULL; -- génère une erreur

SELECT nomPers, prenomPers FROM personnage
where prenomPers is NULL;

SELECT nomPers, prenomPers FROM personnage
where prenomPers is not NULL;

SELECT nomPers, prenomPers FROM personnage
where nomPers LIKE 'p%';
+---------------+------------+
| nomPers       | prenomPers |
+---------------+------------+
| PABLO         | NULL       |
| PACHA         | MULL       |
| PATRASH PASHA | NULL       |
| PEREZ         | ALONZO     |
| PERROQUETS    | NULL       |
| PHILIPPULUS   | NULL       |
+---------------+------------+

SELECT nomPers, prenomPers FROM personnage
where nomPers LIKE '%u%';
+-------------------------------------+-------------------+
| nomPers                             | prenomPers        |
+-------------------------------------+-------------------+
| BOULLU                              | NULL              |
| CANTONNEAU                          | PAUL              |
| CHIQUITO (alias RUPAC INCA HUACO)   | NULL              |
| DA FIGUEIRA                         | OLIVEIRA          |
| DUPOND                              | NULL              |
| DUPONT                              | NULL              |
| UN FAKIR                            | NULL              |
| UN FAKIR                            | NULL              |
...
| RASTAPOPOULOS (alias DI GORGONZOLA) | ROBERTO           |
| SZUT                                | PIOTR             |
| TAUPE AU REGARD PERCANT             | NULL              |
| TOURNESOL                           | TRIPHON           |
+-------------------------------------+-------------------+

SELECT nomPers, prenomPers FROM personnage
where nomPers LIKE '_r%';
+------------+------------+
| nomPers    | prenomPers |
+------------+------------+
| IRMA       | IRMA       |
| KROLLSPELL | NULL       |
+------------+------------+
