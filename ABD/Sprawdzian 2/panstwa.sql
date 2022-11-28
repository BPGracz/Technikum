drop database panstwa;
create database panstwa;
use panstwa

create table panstwa (
id_panstwa int not null primary key,
nazwa varchar(20),
id_ustroje varchar(30) references ustroje (id_ustroj),
kontynent varchar(20),
id_klimat varchar(30) references klimat (id_klimat)
);

create table klimat (
id_klimat int not null primary key,
nazwa varchar(50),
temperatura varchar(20)
);

create table ustroje (
id_ustroj int not null primary key,
nazwa varchar(50),
liczba_panstw int
);

insert into panstwa values
(1, 'Chiny', 'autorytaryzm', 'Azja', 'umiarkowany'),
(2, 'Polska', 'demokracja', 'Europa', 'umiarkowany'),
(3, 'Grecja', 'demokracja', 'Europa', 'srodziemnomorski'),
(4, 'Korea_Polnocna', 'totalitaryzm', 'Azja', 'umiarkowany'),
(5, 'Egipt', 'monarchia', 'Afryka', 'rownikowy');

insert into klimat values
(1,'umiarkowany', '6-12'),
(2, 'rownikowy', '16-24'),
(3, 'srodziemnomorski', '12-16'),
(4, 'polnocny', '0-6'),
(5, 'poludniowy', '-10-0');

insert into ustroje values
(1, 'autorytaryzm', 50),
(2, 'demokracja', 260),
(3, 'totalitaryzm', 24),
(4, 'monarchia', 12),
(5, 'socjalizm', 6);