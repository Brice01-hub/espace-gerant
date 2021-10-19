Create table client
(
id_client INT(20) NOT NULL AUTO_INCREMENT,
nom VARCHAR(10) NOT NULL,
prenom VARCHAR(50) NOT NULL,
date_de_naissance DATE NOT NULL,
NCNIB INT(15) NOT NULL,
tel INT(15) NOT NULL,
tel_urgence INT(15) NOT NULL,
PRIMARY KEY (id_client)
);
Create table jouer
(
    id_jouer INT(20) NOT NULL AUTO_INCREMENT,
    id_joueur1 INT(20) NOT NULL,
    id_joueur2 INT(20) NOT NULL,
    id_console INT(20) NOT NULL,
    heure_debut TIME NOT NULL,
    temps_de_jeu TIME NOT NULL,
    PRIMARY key (id_jouer),
    foreign key (id_joueur1) references client(id_client),
    foreign key (id_joueur2) REFERENCES client(id_client)
    
);
Create table louer
(
    id_louer INT(20) NOT NULL AUTO_INCREMENT,
    id_joueur INT(20)NOT NULL,
    date_location DATE NOT NULL,
    date_retour DATE NOT NULL,
    id_location INT(20),
    id_equipement1 INT(20) NOT NULL,
    id_equipement2 INT(20) NOT NULL,
    id_equipement3 INT(20) NOT NULL,
    id_equipement4 INT(20) NOT NULL,
    id_equipement5 INT(20) NOT NULL,
    id_equipement6 INT(20) NOT NULL,
    id_equipement7 INT(20) NOT NULL,
    id_equipement8 INT(20) NOT NULL,
    id_equipement9 INT(20) NOT NULL,
    id_equipement10 INT(20) NOT NULL,
    id_equipement11 INT(20) NOT NULL,
    id_equipement12 INT(20) NOT NULL,
    PRIMARY key(id_louer),
     foreign key (id_joueur) references client(id_client),
    FOREIGN key (id_location) REFERENCES liste_location(id_location)
);
CREATE TABLE liste_location(
    id_location int(20) NOT null ,
    id_equipement1 INT(20) NOT NULL,
    PRIMARY KEY(id_location),
    FOREIGN KEY(id_equipement1) REFERENCES equipement(id)
    );
create table equipement
(
    id INT(20)  NOT NULL AUTO_INCREMENT,
    nom VARCHAR(50)NOT NULL,
    couleur VARCHAR(10)NOT NULL,
    taille VARCHAR(40)NOT NULL,
    longueur VARCHAR(40)NOT NULL,
    id_type INT(20)NOT NULL,
    PRIMARY KEY(id),
    foreign key (id_type) references type (id)
);
create table type
(
    id INT(20)  NOT NULL AUTO_INCREMENT,
    type varchar(25) NOT NULL,
     PRIMARY key(id)
);