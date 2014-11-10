CREATE SCHEMA rcc
AUTHORIZATION rsk;

/* POSTGRESQL - HELP
   http://www.postgresql.org/docs/9.1/static/sql-altertable.html

*/

/* **********************************************************************
 * Users and Roles
 * **********************************************************************/

CREATE TABLE rcc.users (
   id SERIAL NOT NULL
  ,name VARCHAR(30) NOT NULL
  ,full_name VARCHAR(100) NOT NULL
  ,email VARCHAR(100) NOT NULL
  ,password VARCHAR(128)
  ,job_title VARCHAR(100) NULL
  ,is_enabled BOOLEAN NOT NULL
  ,creation_date TIMESTAMP NOT NULL DEFAULT NOW()
  ,modification_date TIMESTAMP NOT NULL DEFAULT NOW()
  ,PRIMARY KEY(id)
);
ALTER TABLE rcc.users OWNER TO rsk;

CREATE TABLE rcc.roles (
   id SERIAL NOT NULL
  ,name VARCHAR(30) NOT NULL
  ,PRIMARY KEY(id)
);
ALTER TABLE rcc.roles OWNER TO rsk;

CREATE TABLE rcc.user_roles (
   id SERIAL NOT NULL
  ,id_user INT NOT NULL
  ,id_role INT NOT NULL
  ,creation_date TIMESTAMP NOT NULL DEFAULT NOW()
  ,modification_date TIMESTAMP NOT NULL DEFAULT NOW()
  ,PRIMARY KEY(id)
  ,FOREIGN KEY (id_user) REFERENCES rcc.users(id) ON DELETE CASCADE
  ,FOREIGN KEY (id_role) REFERENCES rcc.roles(id) ON DELETE CASCADE
  ,CONSTRAINT unq_user_roles UNIQUE(id_user, id_role)
);
ALTER TABLE rcc.user_roles OWNER TO rsk;



/* **********************************************************************
 * Configuration and Documents
 * **********************************************************************/

CREATE TABLE rcc.movements (
   id SERIAL NOT NULL
  ,id_user INT NOT NULL
  ,detail VARCHAR(300) NOT NULL
  ,creation_date TIMESTAMP NOT NULL DEFAULT NOW()
  ,PRIMARY KEY(id)
  ,FOREIGN KEY (id_user) REFERENCES rcc.users(id) ON DELETE CASCADE
);
ALTER TABLE rcc.movements OWNER TO rsk;

CREATE TABLE rcc.app_properties(
   id SERIAL NOT NULL
  ,environment int NOT NULL
  ,prop_key VARCHAR(32) NOT NULL
  ,prop_value VARCHAR(64) NOT NULL
  ,PRIMARY KEY(id)
  ,CONSTRAINT unq_appprop_envkey UNIQUE (environment, prop_key, prop_value)
);
ALTER TABLE rcc.app_properties OWNER TO rsk;

CREATE TABLE rcc.documents (
   id SERIAL NOT NULL
  ,name VARCHAR(200) NOT NULL
  ,bit_size INT NOT NULL
  ,creation_date TIMESTAMP NOT NULL DEFAULT NOW()
  ,modification_date TIMESTAMP NOT NULL DEFAULT NOW()
  ,PRIMARY KEY(id)
);
ALTER TABLE rcc.documents OWNER TO rsk;



/* **********************************************************************
 * KRI - Key Risk Indicator
 * **********************************************************************/
CREATE TABLE rcc.kris(
   id SERIAL NOT NULL
  ,name VARCHAR(64) NOT NULL
  ,description VARCHAR(2000) NULL
  ,id_user INT NOT NULL
  ........
  ........
  ........
);
ALTER TABLE rcc.item_values OWNER TO rsk;






/********************************* ITEM *********************************/
/*
CREATE TABLE rcc.item_values(
   id SERIAL NOT NULL
  ,name VARCHAR(30) NOT NULL
  ,weight INT NOT NULL
  ,CONSTRAINT unq_itemvalue_name UNIQUE (name)
);
ALTER TABLE rcc.item_values OWNER TO rsk;

CREATE TABLE rcc.item_types(
   id SERIAL NOT NULL
  ,name VARCHAR(30) NOT NULL
  ,ico VARCHAR(50) NULL
  ,description VARCHAR(1000) NULL
  ,CONSTRAINT unq_itemtype_name UNIQUE (name)
);
ALTER TABLE rcc.item_types OWNER TO rsk;
INSERT INTO rcc.item_types(name, ico, description) VALUES('activity', '', '');
INSERT INTO rcc.item_types(name, ico, description) VALUES('process', '', '');
INSERT INTO rcc.item_types(name, ico, description) VALUES('project', '', '');
INSERT INTO rcc.item_types(name, ico, description) VALUES('product', '', '');
INSERT INTO rcc.item_types(name, ico, description) VALUES('service', '', '');
INSERT INTO rcc.item_types(name, ico, description) VALUES('asset', '', '');
INSERT INTO rcc.item_types(name, ico, description) VALUES('operation', '', '');
INSERT INTO rcc.item_types(name, ico, description) VALUES('information data', '', '');
INSERT INTO rcc.item_types(name, ico, description) VALUES('people', '', '');
INSERT INTO rcc.item_types(name, ico, description) VALUES('facility', '', '');
INSERT INTO rcc.item_types(name, ico, description) VALUES('functions', '', '');
INSERT INTO rcc.item_types(name, ico, description) VALUES('application/SW', '', 'Application or Software');
INSERT INTO rcc.item_types(name, ico, description) VALUES('HW', '', 'Hardware');
INSERT INTO rcc.item_types(name, ico, description) VALUES('decision', '', '');

CREATE TABLE rcc.items(
   id SERIAL NOT NULL
  ,id_item_type INT NOT NULL
  ,id_item_value INT NOT NULL
  ,name VARCHAR(100) NOT NULL
  ,description VARCHAR(1000) NULL
  ,CONSTRAINT unq_item_itemtype-name UNIQUE (id_item_type, name)
);
ALTER TABLE rcc.items OWNER TO rsk;

FALTA TABLA THREATS
FALTA TABLA ITEM_THREATS
*/