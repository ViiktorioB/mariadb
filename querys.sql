select * from bookings;

select nombre,surname from bookings;

select distinct bookings.bike_id,nombre from bikes,bookings;

select distinct bookings.bike_id,nombre from bikes,bookings where bookings.age<25;

select extra_id,adds,bike_model from extra,bikes;

select adds,bike_model from extra,bikes where extra.adds='Padlock';

SELECT concat(nombre,' ',surname,'--> ',village) NAME_SURNAME_VILLAGE from bookings where age<24;

SELECT concat(nombre,' ',surname,'--> ',village) NAME_SURNAME_VILLAGE from bookings where age<24 and village='Inca';
