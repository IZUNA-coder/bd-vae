-- trouver un objet volé

-- L’objet a été mis en vente en début de mois (avant le 15).

-- Il a été mis en vente à une somme inférieure à 500€.

-- Il a été vendu à plus de 10 fois le prix de vente initial



CREATE or REPLACE VIEW Enquete as  

select distinct idOb,nomOb, prixBase prix, max(montant) montant, e.idUt, u.pseudout
from OBJET natural join VENTE v natural join STATUT join ENCHERIR e ON e.idve = v.idve join UTILISATEUR u ON e.idUt = u.idUt
where DAY(debutVe) <15 and prixBase <500 and idSt = 4
group by idOb
having montant > 10*prixBase;

/* La liste des objets correspondants à
ces caractéristiques */
select idOb, nomOb
from Enquete;

/* La liste des suscpects */

select idUt, pseudout
from Enquete;



/* Ecrire les instructions SQL permettant de décrire que l’utilisation IUTO d’adresse mail iuto@
info.univ-orleans.fr qui est actif et dont le mot de passe est IUTO 
met en vente un canapé
clic-clac "très beau et ayant peu servi" 
à partir du 23 mars 2023 jusqu’au 30 mars 2024 
pour un  prix de base de 40€ et un prix minimum de 80€.
 Cet article n’a pas de photo associée. */

insert into UTILISATEUR values (
    1002,'IUTO',
    'iuto@info.univ-orleans.fr',
    'IUTO',
    'O',
    2
    );

insert into OBJET(idOb,nomOb,descriptionOb,idCat,idUt) values 
(515,'canape clic-clac','très beau et ayant peu servi',3,1002);

insert into VENTE(idVe,prixBase,prixMin,debutVe,finVe,idSt,idOb) values 
(515,40,80, STR_TO_DATE('23/03/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),STR_TO_DATE('30/03/2024:10:00:00','%d/%m/%Y:%h:%i:%s'),1,515);


/* Extraire de la base le nombre de ventes effectuées en 2022 par mois */

select MONTH(finVe) mois, count(idve) nb
from VENTE
where YEAR(finVe) = 2022 and idSt = 4
group by MONTH(debutVe)
order by nb;
INTO OUTFILE './ventes.csv'
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n';


/* Extraire le nombre d’enchèeres de 2022 par mois */

select MONTH(dateheure) mois, count(idve) nb
from ENCHERIR
where YEAR(dateheure) = 2022
group by MONTH(dateheure)
INTO OUTFILE './encheres.csv'
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n';