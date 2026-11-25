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


-- set the start value: 
ALTER TABLE product AUTO_INCREMENT = 1000;

-- see the last generated id with 
SELECT LAST_INSERT_ID();

-- INSERT IGNORE: skip the duplicate silently
INSERT IGNORE INTO product (product_id, product_name) VALUES (1, 'Test');

-- ON DUPLICATE KEY UPDATE: insert or update (upsert)
INSERT INTO product (product_id, product_name, unit_price, stock_qty)
VALUES (1, 'Hex Bolt M8', 5.00, 600)
ON DUPLICATE KEY UPDATE
    unit_price = VALUES(unit_price),
    stock_qty  = VALUES(stock_qty);

-- Newer methods 
INSERT INTO product (product_id, product_name, unit_price, stock_qty)
VALUES (1, 'Hex Bolt M8', 5.00, 600) AS new
ON DUPLICATE KEY UPDATE
    unit_price = new.unit_price,
    stock_qty  = new.stock_qty;

-- With UUID function in the MYSQL
CREATE TABLE product (
    product_id   CHAR(36) PRIMARY KEY DEFAULT (UUID()),
    product_name VARCHAR(100) NOT NULL
);

INSERT INTO product (product_name) VALUES ('Bolt');
SELECT * FROM product;   -- product_id like 'a3f1c2d4-8b7e-11ef-9c2a-0242ac110002'

-- Gerenete it during the insert Maunal Insert also 
INSERT INTO product (product_id, product_name) VALUES (UUID(), 'Bolt');
