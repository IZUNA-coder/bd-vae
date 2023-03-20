-- trouver un objet volé

-- L’objet a été mis en vente en début de mois (avant le 15).

-- Il a été mis en vente à une somme inférieure à 500€.

-- Il a été vendu à plus de 10 fois le prix de vente initial

select idOb, nomOb
from OBJET natural join VENTE natural join ENCHERIR
where DAY(finve)< 15 and prixBase> 500  and montant > 10*prixBase;





