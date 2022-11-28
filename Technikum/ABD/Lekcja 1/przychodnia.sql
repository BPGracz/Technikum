drop database przychodnia;
create database przychodnia;
use przychodnia;

create table lekarze (
imie varchar(20),
nazwisko varchar(30),
specjalizacja varchar(20),
kod_poczotwy varchar(6),
miasto varchar(15),
ulica varchar(15),
nr_domu int,
pesel varchar(11) primary key,
nip varchar(10)
);

insert into lekarze values
('Andrzej','Cieslak','ginekolog','90-987','Warszawa','Piękna','3','65120302014','7652349123'),
('Anna','Gawronska','internista','91-611','Lodz','Mala','34','74100923987','7567983949'),
('Maciej','Piękny','chirurg','90-008','Pila','Zenona','32','65123009034','6789066565'),
('Angelika','Meska','internista','23-098','Warszawa','Mackiewicza','2','74040434098','4643384844'),
('Michał','Lasota','chirurg','78-098','Pila','Smiala','8','88020187234','7788989900');
