delete database ziemia

create database ziemia

use ziemia

create table panstwa (
id_panstwa int not null auto_increment primary key,
nazwa varchar(20),
stolica varchar(25),
kontynent varchar(20) reference kontynenty (id_kontynentu),
gl_wyznanie varchar(20),
rozmiar varchar(16)
);

create table kontynenty (
id_kontynentu int not null auto_increment primary key,
nazwa varchar(20),
powierzchnia varchar(16),
ilosc_panstw int
);

create table religie (
id_religi int not null auto_increment primary key,
nazwa varchar(15),
ilosc_panstw int
);

insert into panstwa value (null, "Polska", "Warszawa", "Europa", "Chrzecijañstwo", "16 000 000 km2");

insert into panstwa value (null, "Chiny", "Pekin", "Azja", "Maoizm", "42 000 000 km2");

insert into panstwa value (null, "USA", "Waszyngton", "Ameryka Pó³nocna", "Chrzecijañstwo", "35 000 000 km2");

insert into panstwa value (null, "Egipt", "Kair", "Afryka", "Islam", "10 000 000 km2");

insert into panstwa value (null, "Brazylia", "Rio", "Ameryka Po³ódniowa", "Judaizm", "30 000 000 km2");

insert into kontynenty value (null, "Europa", "250 000 000 km2", "82");

insert into kontynenty value (null, "Ameryka Pó³nocna", "900 000 000 km2", "3");

insert into kontynenty value (null, "Ameryka Po³ódniowa", "850 000 000 km2", "30");

insert into kontynenty value (null, "Afryka", "1 850 000 000 km2", "120");

insert into kontynenty value (null, "Azja", "1 250 000 000 km2", "67");

insert into religie value (null, "Chrzecijañstwo", "320");

insert into religie value (null, "Islam", "260");

insert into religie value (null, "Moizm", "70");

insert into religie value (null, "Judaizm", "190");

insert into religie value (null, "Buddyzm", "60");