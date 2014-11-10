insert into rcc.roles(name) values('administrator');
insert into rcc.roles(name) values('user');


insert into rcc.users(name, email, password, full_name, job_title, is_enabled) values('admin', 'jach@outlook.com', 'Administrador', 'Administrador', 'El Administrador', TRUE);
insert into rcc.users(name, email, password, full_name, job_title, is_enabled) values('jach', 'angeljach@gmail.com', 'Angel', 'Angel', 'Auditor Interno', TRUE);
insert into rcc.users(name, email, password, full_name, job_title, is_enabled) values('rhernandez', 'rhernandez@riskcoco.com', 'A12345678', 'Rocío Hernández García', 'DBA', TRUE);
insert into rcc.users(name, email, password, full_name, job_title, is_enabled) values('vcruz', 'vcruz@riskcoco.com', 'A12345678', 'Víctor Cruz Hernández', 'Usuario', TRUE);
insert into rcc.users(name, email, password, full_name, job_title, is_enabled) values('ysolis', 'ysolis@riskcoco.com', 'A12345678', 'Yael Solís Cruz', 'Usuario', TRUE);
insert into rcc.users(name, email, password, full_name, job_title, is_enabled) values('eperez', 'eperez@riskcoco.com', 'A12345678', 'Edgar Omar Pérez Ávila', 'Usuario', TRUE);
insert into rcc.users(name, email, password, full_name, job_title, is_enabled) values('kdiaz', 'kdiaz@riskcoco.com', 'A12345678', 'Karla Díaz Ríos', 'Usuario', TRUE);

insert into rcc.user_roles(id_user, id_role) values(1,1);
insert into rcc.user_roles(id_user, id_role) values(2,2);
insert into rcc.user_roles(id_user, id_role) values(3,2);
insert into rcc.user_roles(id_user, id_role) values(4,2);
insert into rcc.user_roles(id_user, id_role) values(5,2);
insert into rcc.user_roles(id_user, id_role) values(6,2);
insert into rcc.user_roles(id_user, id_role) values(7,2);

insert into rcc.minutes(id_user, title, location, from_date, to_date, agenda, detail) values(
  2, 'Minuta de Prueba', 'Sala de Juntas del piso 8',
  '2014-09-09 12:00:00', '2014-09-09 13:00:00', 'La agenda de la reunión...', 'El detalle de la reunión...');

insert into rcc.minute_members(id_user, id_minute) values(2, 1);
insert into rcc.minute_members(id_user, id_minute) values(3, 1);
insert into rcc.minute_members(id_user, id_minute) values(4, 1);
insert into rcc.minute_members(id_user, id_minute) values(5, 1);
insert into rcc.minute_members(id_user, id_minute) values(6, 1);
