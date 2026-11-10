SHOW DATABASES; -- command that is use to show wt all the databases are present in that server 
 
CREATE  database WMS; -- command us to create the database 
 
select database(); -- command that show the current database that is in use 
 
use WMS; -- command use to change the database that need to be used 
USE `Abhi-DB`;
/* Multi-line comment
 *  we should not use any symbols in the 
 *  databas name because while we use that database using the "USE database name "
 * it will throw the error .
 */
 
 # we can us this for the single line comment 
 
# create the table for the database 

CREATE TABLE wms.items (
id CHAR(36) NOT NULL,
part_name int unique,
master_serial_num varchar(50) not null,
status varchar(50) default 'ACTIVE',
created_by TIMESTAMP null
);

DESCRIBE ITEMS;  -- elobrate the Table information .

SHOW TABLES; -- show the total number tables exists in the selected databases.

# Inserting data into the table
INSERT INTO wms.items VALUE
('11111',12345,'OPW-01','IN-ACTIVE','2026-11-10'); 
/*
 * default method without the tables attributes to mention, so we need 
 * add all the data points , if we leave any colum data we will get the error,
 * so this is not colum specified insert so we need to pass data for all the colum.
 */

INSERT INTO wms.items(id,part_name,master_serial_num,created_by)
VALUE
('123',567,'Opw-90','2016-10-01'),
('124',565,'Opw-60','2016-10-01');
 # in this snippet we have specified the colum that we are inseting data for so,
-- so the default colum status will get the value , this is colum specified insert 

SELECT * FROM wms.items; -- to retrive the data from the table without specfying the colum

DROP DATABASE `Abhi-Db`; -- this is used to delete the database in the server.
DROP TABLE WMS.items ; -- this is used to delete the table in the database.
