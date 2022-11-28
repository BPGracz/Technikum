DROP DATABASE firma1;
CREATE DATABASE firma1;
USE firma1;
CREATE TABLE pracownicy(
pesel_p char(11) not null primary key,
nazwisko varchar(30) not null,
imie varchar(20) not null,
data_urodzenia date default '0000-00-00',
adres_ul varchar(30) not null,
adres_nr varchar(5) not null,
miejscowosc varchar(30) not null
);
CREATE TABLE telefony(
nr_telefonu varchar(11) not null primary key,
opis varchar(255) not null,
wlasciciel char(11) REFERENCES pracownicy (pesel_p));

CREATE TABLE samochody_sl(
nr_rej varchar(10) not null primary key,
marka varchar(25) not null,
model varchar(35) not null,
rok_produkcji int);

CREATE TABLE pracownicy_sam(
wlasciciel char(11) REFERENCES pracownicy (pesel_p),
nr_rej varchar(10) REFERENCES samochody_sl (nr_rej));

INSERT INTO pracownicy VALUES
('68111102012','Kowalski','Jan','1968-11-11','Polna','13b','Warszawa'),
('68111202042','Nowak','Andrzej','1968-11-11','Kwiatowa','15','Bydgoszcz'),
('69101102052','Kownacki','Maciej','1969-10-11','Polna','23','Warszawa'),
('67091104012','Abacki','Jan','1967-09-11','Długa','23','Olsztyn');

INSERT INTO telefony VALUES
('608741050','komorka', '68111102012'),
('1234567', 'stacjonarny', '68111202042');


INSERT INTO samochody_sl VALUES
('REW 3242','FORD','Escort', 1995),
('REW 3352','OPEL','Corsa', 1990),
('REW 4456','Opel','Astra', 2006);


INSERT INTO pracownicy_sam VALUES
('68111102012','REW 3242'),
('68111202042','REW 3352');