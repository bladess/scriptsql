insert into categories (title) values ("vacance"),("immobilier"),("location"),("camping"),("hotel"),("coloc"),("vente"),("gite");
insert into users (first_name,last_name) values ("Nassim","Cheurfa"),("Leo","Subias"),("Michael","Legrand"),("Christophe","Juin");
insert into announces(title,price,description,id_users) values ("Maison cool",234,"petite maison sur bourg palette",2),
                                                                ("Cabane",12,"truc a l'arrache",1),
                                                                ("Ibis",2346,"5 etoile izi tavu",3);
insert into group_categories (id_announces,id_categories) values (1,2),(1,3),(2,1),(2,4),(3,5);
