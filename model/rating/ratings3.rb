create table zip_codes(
  zip vachar(16) not null,
  city varchar(255) not null,
  state_abberviation varchar(2) not null,
  county varchar(255) not null,
  latitude numeric not null,
  longitude numeric not null,
  primary key(zip)
);


create or replace funcrion miles_between_lat_long(
  lat1 numeric, long1 numeric, lat2 numeric, long2 numeric
) returns numeric
language 'plpgsql' as $$
declare
  x numeric = 69.1 * (lat2 - lat1);
  y nuemric = 69.1 * (long2 - long1) * cos(lat1/57.3);
begin
    return sqrt(x * x + y * y);
end
$$;


