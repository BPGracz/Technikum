drop database szkoly;
create database szkoly;
use szkoly;

create table placowki(
nazwa_placowki varchar(50) not null primary key,
kod_pocztowy varchar(6) not null,
miasto varchar(20) not null,
ulica varchar(20) not null,
nr_domu varchar(5),
telefon varchar(12) not null,
fax varchar(12) not null,
imie_dyr varchar(20),
nazwisko_dyr varchar(20),
gmina varchar(10) not null,
dzielnica varchar(20)
);

insert into placowki values
('Szkoła Podstawowa nr 158 im. J. Kilińskiego','12-345','Lesznowola','Targowa','73 A','23/664-22-06','23/664-37-36','','','Centrum','Śródmieście'),
('Szkoła Podstawowa nr 253','90-008','Majdan','Tarchomińska','2/4','23/664-22-06','23/664-37-36','Jan','Nowak','Centrum','Praga-Południe'),
('Sportowe Liceum Ogólnokształcące MGM nr 67','12-345','Warszawa','Świętojańska','18','22/664-22-06','22/664-37-36','','','Centrum','Mokotów'),
('Prywatne Liceum Ogólnokształcące nr 58','12-345','Majdan','Św.Kazimierza','55','22/664-22-06','22/664-37-36','','','Centrum','Mokotów'),
('Szkoła Podstawowa','12-345','Maków Mazowiecki','Św.Bonifacego','10','22/664-22-06','22/664-37-36','','','Tarczyn','');