
def process_order(*args)
  self.send("process_#{self.name.tableize}_order", *args)
end


create table payment_types(
  id integer not null
    default nextval('payment_types_id_seq'),
  type varchar(128) not null unique
    check (length(type) > 0),
  primary key (id)
);

insert into payment_type (id, type)
  values(nextval('payment_types_id_seq'), 'Visa');
insert into payment_type (id, type)
  values(nextval('payment_types_id_seq'), 'MasterCard')
insert into payment_type (id, type)
  values(nextval('payment_types_id_seq'), 'AmericanExpress');




