CREATE DATABASE sfg_dev;
CREATE DATABASE sfg_prod;

create user 'sfg_dev_user'@'localhost' identified by 'sesame';
create user 'sfg_prod_user'@'localhost' identified by 'sesame';


grant select on sfg_dev.* to 'sfg_dev_user'@'localhost';
grant insert on sfg_dev.* to 'sfg_dev_user'@'localhost';
grant delete on sfg_dev.* to 'sfg_dev_user'@'localhost';
grant update on sfg_dev.* to 'sfg_dev_user'@'localhost';
grant select on sfg_prod.* to 'sfg_prod_user'@'localhost';
grant insert on sfg_prod.* to 'sfg_prod_user'@'localhost';
grant delete on sfg_prod.* to 'sfg_prod_user'@'localhost';
grant update on sfg_prod.* to 'sfg_prod_user'@'localhost';

-- for running from docker
create user 'sfg_dev_user'@'%' identified by 'sesame';
create user 'sfg_prod_user'@'%' identified by 'sesame';

grant select on sfg_dev.* to 'sfg_dev_user'@'%';
grant insert on sfg_dev.* to 'sfg_dev_user'@'%';
grant delete on sfg_dev.* to 'sfg_dev_user'@'%';
grant update on sfg_dev.* to 'sfg_dev_user'@'%';
grant select on sfg_prod.* to 'sfg_prod_user'@'%';
grant insert on sfg_prod.* to 'sfg_prod_user'@'%';
grant delete on sfg_prod.* to 'sfg_prod_user'@'%';
grant update on sfg_prod.* to 'sfg_prod_user'@'%';
