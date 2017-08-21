/*creation base*/
/*creation table plateforme*/
create table tbl_plateforme(
idPlateform int AUTO_INCREMENT not null,
primary key (idPlateform),
nomPlateforme varchar(255)
);
/*creation table jeux*/
create table tblJeux(
    idJeux int AUTO_INCREMENT not null,
    primary key(idJeux),
    nomJeu varchar(255),
    plateforme int not null,
    foreign key (plateforme)
    references tbl_plateforme(idPlateform)
);
/*ajout d'une colone dans tblJeux*/
alter table tblJeux add nombreExemplaire int not null;
/*ajout des plateforme dans la table*/
insert into tbl_plateforme (nomPlateforme) values ("PC");
insert into tbl_plateforme (nomPlateforme) values ("PS4");
insert into tbl_plateforme (nomPlateforme) values ("PS1");
insert into tbl_plateforme (nomPlateforme) values ("ONE");
insert into tbl_plateforme (nomPlateforme) values ("MOBILE"); 
insert into tbl_plateforme (nomPlateforme) values ("WII U");
insert into tbl_plateforme (nomPlateforme) values ("SwITCH");
/*ajout des jeux*/
insert into tblJeux (nomJeu, plateforme,nombreExemplaire) values ("Minecraft",1,1);
insert into tblJeux (nomJeu, plateforme,nombreExemplaire) values ("Minecraft",2,2);
insert into tblJeux (nomJeu, plateforme,nombreExemplaire) values ("Diablo 3",1,6);
insert into tblJeux (nomJeu, plateforme,nombreExemplaire) values ("League of legends",1,4);
insert into tblJeux (nomJeu, plateforme,nombreExemplaire) values ("Tekken 3",3,3);
insert into tblJeux (nomJeu, plateforme,nombreExemplaire) values ("Lego SW",2,1);
insert into tblJeux (nomJeu, plateforme,nombreExemplaire) values ("Overwatch",1,5);
insert into tblJeux (nomJeu, plateforme,nombreExemplaire) values ("Dame de pique",5,2);
insert into tblJeux (nomJeu, plateforme,nombreExemplaire) values ("WoW",1,6);
insert into tblJeux (nomJeu, plateforme,nombreExemplaire) values ("Donjon ",1,1);
insert into tblJeux (nomJeu, plateforme,nombreExemplaire) values ("cs:go",1,6);
insert into tblJeux (nomJeu, plateforme,nombreExemplaire) values ("GOW 4",4,2);
insert into tblJeux (nomJeu, plateforme,nombreExemplaire) values ("Zelda BOTW",7,2);
insert into tblJeux (nomJeu, plateforme,nombreExemplaire) values ("Hearthstone",1,7);

