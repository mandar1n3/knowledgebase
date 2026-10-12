-- Charger la Base de données titin
USE tintin;

-- 1. Afficher le nom et le prénom des personnages féminins
SELECT nomPers, prenomPers FROM personnage WHERE sexePers="F";

-- 2. Afficher le nom et le prénom des personnages gentils
SELECT nomPers, prenomPers FROM personnage WHERE gentilPers=1;

-- 3. Afficher le nom et le prénom des personnages sans fonctions
SELECT nomPers, prenomPers FROM personnage WHERE fonctPers IS NULL;

-- 4. Afficher les jurons commençant par la lettre M
SELECT nomJur FROM juron WHERE nomJur LIKE "M%";

-- 5. Afficher les jurons contenant la lettre Z
SELECT nomJur FROM juron WHERE nomJur LIKE "%Z%";

-- 6. Afficher les pays ne contenant pas la lettre I
SELECT nomPays From pays WHERE nomPays NOT LIKE "%I%";
