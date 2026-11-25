-- 1. Roles
CREATE ROLE 'app_rw', 'modeler_role', 'dbe_role';

-- 2. Permissions go on roles, not on people
GRANT SELECT, INSERT, UPDATE, DELETE
    ON wms_practice.* TO 'app_rw';

GRANT SELECT, CREATE, ALTER, INDEX, REFERENCES, CREATE VIEW, SHOW VIEW
    ON wms_practice.* TO 'modeler_role';

GRANT ALL PRIVILEGES
    ON wms_practice.* TO 'dbe_role';

-- 3. Users (use real strong passwords, never commit them)
CREATE USER 'appuser'@'10.0.1.%' IDENTIFIED BY 'ChangeMe#App1';
CREATE USER 'modeler'@'10.0.1.%' IDENTIFIED BY 'ChangeMe#Mod1';
CREATE USER 'db_01'@'10.0.1.%'   IDENTIFIED BY 'ChangeMe#Db01';
CREATE USER 'db_02'@'10.0.1.%'   IDENTIFIED BY 'ChangeMe#Db02';

-- 4. Give roles to users
GRANT 'app_rw'       TO 'appuser'@'10.0.1.%';
GRANT 'modeler_role' TO 'modeler'@'10.0.1.%';
GRANT 'dbe_role'     TO 'db_01'@'10.0.1.%', 'db_02'@'10.0.1.%';

-- 5. Switch the roles on at login (easy to forget)
SET DEFAULT ROLE 'app_rw'       TO 'appuser'@'10.0.1.%';
SET DEFAULT ROLE 'modeler_role' TO 'modeler'@'10.0.1.%';
SET DEFAULT ROLE 'dbe_role'     TO 'db_01'@'10.0.1.%', 'db_02'@'10.0.1.%';

-- 6. Verify
SHOW GRANTS FOR 'db_01'@'10.0.1.%' USING 'dbe_role';

-- Take a privilege away from everyone holding the role
REVOKE INSERT ON wms_practice.* FROM 'modeler_role';

-- Take the whole role away from one person
REVOKE 'modeler_role' FROM 'modeler'@'10.0.1.%';