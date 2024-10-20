create user developer with password 'developer' superuser;
create database task_canvas owner developer encoding 'UTF8';
grant all privileges on database task_canvas to developer;