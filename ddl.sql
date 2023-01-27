CREATE TABLE places(
    place_id integer(10) NOT NULL,
    village VARCHAR(30),
    cp integer(5),
    location VARCHAR(30),
    primary key(place_id)
);
CREATE TABLE bikes(
    bike_id  integer(10) NOT NULL,
    bike_model VARCHAR(30),
    place_id integer(10),
    assigned_id integer(10),
    primary key (bike_id),
    foreign key (place_id) references places (place_id)
);
CREATE TABLE bookings(
    bookings_id numeric(10),
    nombre VARCHAR(30),
    surname VARCHAR(30),
    age numeric check(age>0),
    email VARCHAR(30),
    village VARCHAR(30),
    bike_id  integer(10),
    primary key (bookings_id),
    foreign key(bike_id) references bikes (bike_id)
);
CREATE TABLE extra(
    extra_id integer(10),
    adds VARCHAR(30),
    primary key(extra_id)
);
CREATE TABLE bikes_extra(
    bike_id  integer(10),
    extra_id integer(10),
    primary key (bike_id,extra_id),
    foreign key (bike_id) references bikes (bike_id),
    foreign key (extra_id) references extra(extra_id)
);