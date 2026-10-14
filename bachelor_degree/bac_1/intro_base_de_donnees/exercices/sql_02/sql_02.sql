-- Charger DB
USE tintin;

-- 1.
SELECT dateAlb, titreAlb FROM album ORDER BY 1 DESC;

-- 2.
SELECT nomPers, fonctPers FROM personnage WHERE sexePers="F" AND fonctPers
IS NOT NULL;

-- 3.
SELECT nomPers, prenomPers FROM personnage WHERE sexePers="F" AND
prenomPers IS NULL ORDER BY 1 DESC;

-- 4.
SELECT titreAlb FROM album WHERE titreAlb NOT LIKE "%O%";

-- 5.
SELECT nomPers FROM personnage WHERE nomPers LIKE "%I%" OR nomPers LIKE "%Y%";

-- 6.
SELECT nomPers, prenomPers FROM personnage WHERE fonctPers="BANDIT" AND
prenomPers IS NULL;

-- 7.
SELECT nomPers, fonctPers, prenomPers FROM personnage WHERE prenomPers IS NULL 
AND nomPers != "ANONYME";

-- 8.
SELECT nomJur FROM juron WHERE nomJur NOT LIKE "% %";

-- 9.
SELECT nomJur FROM juron WHERE nomJur LIKE "%A%" AND nomJur LIKE "%O%";

-- 10.
SELECT nomJur FROM juron WHERE nomJur NOT LIKE "% %" AND nomJur LIKE "%A%"
AND nomJur LIKE "%O%";
