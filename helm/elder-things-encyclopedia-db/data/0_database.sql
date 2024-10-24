create user developer with password 'developer' superuser;
create database elder_things_encyclopedia owner developer encoding 'UTF8';
grant all privileges on database elder_things_encyclopedia to developer;