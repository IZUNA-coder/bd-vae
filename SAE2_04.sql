-- TP 2_04
-- Nom: GNANESWARAN , Prenom: Roshan

-- +------------------+--
-- * Question 1 :     --
-- +------------------+--
-- Ecrire une requête qui renvoie les informations suivantes:
--  La liste des objets vendus par ght1ordi au mois de février 2023

-- Voici le début de ce que vous devez obtenir.
-- ATTENTION à l'ordre des colonnes et leur nom!
-- +----------+----------------------+
-- | pseudout | nomob                |
-- +----------+----------------------+
-- | etc...
-- = Reponse question 1.

select pseudout,nomob
from UTILISATEUR natural join OBJET natural join VENTE 
where pseudout = "ght1ordi"  and MONTH(finVe) = 2 and YEAR(debutVe) = 2023 and idst=4;

-- +------------------+--
-- * Question 2 :     --
-- +------------------+--
-- Ecrire une requête qui renvoie les informations suivantes:
-- La liste des utilisateurs qui ont enchérit sur un objet 
-- qu’ils ont eux même mis en vente

-- Voici le début de ce que vous devez obtenir.
-- ATTENTION à l'ordre des colonnes et leur nom!
-- +-----------+
-- | pseudout  |
-- +-----------+
-- | etc...
-- = Reponse question 2.


select distinct pseudout
from UTILISATEUR natural join OBJET natural join VENTE natural join ENCHERIR;


-- +------------------+--
-- * Question 3 :     --
-- +------------------+--
-- Ecrire une requête qui renvoie les informations suivantes:
-- La liste des utilisateurs qui ont mis en vente des objets 
-- mais uniquement des meubles

-- Voici le début de ce que vous devez obtenir.
-- ATTENTION à l'ordre des colonnes et leur nom!
-- +-------------+
-- | pseudout    |
-- +-------------+
-- | etc...
-- = Reponse question 3.

select  pseudout
  from UTILISATEUR natural join OBJET
 where idCat = 3 and idUt NOT IN (
    select idUt
      from UTILISATEUR natural join OBJET
     where idCat != 3
 );



-- +------------------+--
-- * Question 4 :     --
-- +------------------+--
-- Ecrire une requête qui renvoie les informations suivantes:
--  La liste des objets qui ont généré plus de 15 enchères en 2022

-- Voici le début de ce que vous devez obtenir.
-- ATTENTION à l'ordre des colonnes et leur nom!
-- +------+----------------------+
-- | idob | nomob                |
-- +------+----------------------+
-- | etc...
-- = Reponse question 4.

select idOb, nomOb,montant
from OBJET natural join VENTE natural join ENCHERIR
where YEAR(debutVe) = 2022
having count(montant) > 15;

-- +------------------+--
-- * Question 5 :     --
-- +------------------+--
-- Ecrire une requête qui renvoie les informations suivantes:
--  Ici NE CREEZ PAS la vue PRIXVENTE mais indiquer simplement la requête qui lui 
-- - est associée. C'est à dire la requête permettant d'obtenir pour 
-- chaque vente validée, l'identifiant de la vente l'identiant de 
-- l'acheteur et le prix de la vente.

-- Voici le début de ce que vous devez obtenir.
-- ATTENTION à l'ordre des colonnes et leur nom!
-- +------+------------+----------+
-- | idve | idacheteur | montant  |
-- +------+------------+----------+
-- | etc...
-- = Reponse question 5.


select idve, idUt idacheteur, max(montant) montant
from VENTE natural join ENCHERIR natural join UTILISATEUR 
where idst=4
group by idve;





-- +------------------+--
-- * Question 6 :     --
-- +------------------+--
-- Ecrire une requête qui renvoie les informations suivantes:
--  Le chiffre d’affaire par mois de la plateforme (en utilisant la vue PRIXVENTE)

-- Voici le début de ce que vous devez obtenir.
-- ATTENTION à l'ordre des colonnes et leur nom!
-- +------+-------+-----------+
-- | mois | annee | ca        |
-- +------+-------+-----------+
-- | etc...
-- = Reponse question 6.



CREATE or REPLACE VIEW PRIXVENTE as 
select idve, idUt idacheteur, max(montant) montant, dateheure
from VENTE natural join ENCHERIR natural join UTILISATEUR 
where idst=4
group by idve;


select MONTH(dateheure) mois, YEAR(dateheure) annee, round(sum(montant*0.05),2) ca
from PRIXVENTE
group by MONTH(dateheure), YEAR(dateheure);



-- +------------------+--
-- * Question 7 :     --
-- +------------------+--
-- Ecrire une requête qui renvoie les informations suivantes:
--  Les informations du ou des utilisateurs qui ont mis le plus d’objets 
-- en vente

-- Voici le début de ce que vous devez obtenir.
-- ATTENTION à l'ordre des colonnes et leur nom!
-- +------+----------+------+
-- | idut | pseudout | nbob |
-- +------+----------+------+
-- | etc...
-- = Reponse question 7.


select idUt, pseudout, count(idOb) nbob
from UTILISATEUR natural join OBJET
group by idUt
order by nbob desc
limit 1;


-- +------------------+--
-- * Question 8 :     --
-- +------------------+--
-- Ecrire une requête qui renvoie les informations suivantes:
--  le camembert

-- Voici le début de ce que vous devez obtenir.
-- ATTENTION à l'ordre des colonnes et leur nom!
-- +-------+-------------------+-----------+
-- | idcat | nomcat            | nb_objets |
-- +-------+-------------------+-----------+
-- | etc...
-- = Reponse question 8.


select idCat, nomCat, count(idOb) nb_objets
from CATEGORIE natural join OBJET
group by idCat;


-- +------------------+--
-- * Question 9 :     --
-- +------------------+--
-- Ecrire une requête qui renvoie les informations suivantes:
--  Le top des vendeurs

-- Voici le début de ce que vous devez obtenir.
-- ATTENTION à l'ordre des colonnes et leur nom!
-- +------+-------------+----------+
-- | idut | pseudout    | total    |
-- +------+-------------+----------+
-- | etc...
-- = Reponse question 9.


select idUt, pseudout, sum(montant) total
from UTILISATEUR natural join OBJET natural join VENTE natural join ENCHERIR
where idst=4
group by idUt;
