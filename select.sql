/*selection de l'integralité de plateforme*/
select *
from tbl_plateforme;
/*selection de la colonne nomPLateforme dans tbl-plateforme*/
select nomPlateforme
from tbl_plateforme;
/*selection de la colonne nomPlateforme quand sa valeur est egale a pc*/
select nomPlateforme
from tbl_plateforme
where nomPlateforme = "PC";
/*colonne nomJeu trié par ordre alphabetique*/
select nomJeu
from tblJeux
order by nomJeu;
/*liste des jeux ps4*/
select nomJeu
from tblJeux
inner join  tbl_plateforme on plateforme = idPlateform
where nomPlateforme = "PS4";
/* verifie si y'a la plateforme tablette*/
select nomPlateforme 
from tbl_plateforme
where nomPLateforme = "tablette";
/*nombre d'exemplaire par jeu*/
select nomJeu, sum(nombreExemplaire)
from  tblJeux
group by nomJeu;
/*nombre de plateforme dispo*/
select count(idPlateform) as nbPlateforme
from tbl_plateforme;
/*liste des jeux avec leur nombre de plateforme disposible*/
select nomJeu, count(plateforme) as nombreDePlateforme
from tblJeux
group by nomJeu;
/*liste des jeux pc*/
select nomJeu
from tblJeux
inner join  tbl_plateforme on plateforme = idPlateform
where nomPlateforme =  "PC";

/*liste des jeux dispo*/
select distinct nomJeu
from tblJeux;
/*nombre de jeu par plateforme*/
select nomPlateforme, sum(nombreExemplaire)
from tblJeux
inner join  tbl_plateforme on plateforme = idPlateform
group by nomPlateforme;

/*plateforme la plus utilisé*/

select nomPlateforme,sum(nombreExemplaire) 
from  tblJeux
inner join  tbl_plateforme on plateforme = idPlateform
group by nomPlateforme
order by sum(nombreExemplaire) desc 
limit 1;
