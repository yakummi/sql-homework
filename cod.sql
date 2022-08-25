create table if not exists MusicCategory(
id SERIAL primary key,
name VARCHAR(100) not null,
DESCRIPTION VARCHAR(100) not null
);

create table if not exists Singer(
id SERIAL primary key,
album VARCHAR(100) not null,
name VARCHAR(100) not null
);

create table if not exists MusicCategorySinger(
MusicCategory_id INTEGER references MusicCategory(id),
Singer_id INTEGER references Singer(id),
constraint MS primary key (MusicCategory_id, Singer_id)
);

create table if not exists Album(
id SERIAL primary key,
name VARCHAR(100) not null,
track VARCHAR(100) not null,
year_when_app VARCHAR(100) not null
);

create table if not exists AlbumSinger (
Album_id INTEGER references Album(id),
Singer_id INTEGER references Singer(id),
constraint SA primary key (Album_id, Singer_id)
);

create table if not exists Track (
id SERIAL primary key references Album(id),
name VARCHAR(80) not null,
play_time VARCHAR(50) not null
);

create table if not exists Sbornik (
id SERIAL primary key,
name VARCHAR(100) not null,
year VARCHAR(100) not null
);

create table if not exists SbornikAlbumTrack (
Album_id INTEGER references Album(id),
Track_id INTEGER references Track(id),
constraint SAT primary key (Album_id, Track_id)
);