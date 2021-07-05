create table lab1(
    id serial,
    firstname varchar(50),
    lastname varchar(50)
);
alter table users add isadmin int;
alter table users alter column isadmin type boolean using isadmin::boolean;
alter table users alter column isadmin set default false;
alter table users add constraint id primary key (id);
create table tasks(
    id serial,
    name varchar(50),
    user_id int
);
drop table tasks;
drop database lab1;