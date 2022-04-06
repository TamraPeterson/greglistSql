CREATE TABLE IF NOT EXISTS accounts(
  id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name varchar(255) COMMENT 'User Name',
  email varchar(255) COMMENT 'User Email',
  picture varchar(255) COMMENT 'User Picture'
) default charset utf8 COMMENT '';
/*SECTION table definition*/
CREATE TABLE IF NOT EXISTS cars(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  make TEXT NOT NULL,
  model TEXT,
  year INT
) default charset utf8;
/*POST*/
INSERT INTO
  cars (make, model, year)
VALUES
  ("Honda", "Odyssey", 2006);
  /*GET ALL*/
SELECT
  *
FROM
  cars;
  /* GET BY ___ */
SELECT
  *
FROM
  cars
WHERE
  id = 2;
  /* PUT */
UPDATE
  cars
SET
  make = "Ford",
  model = "Maverick",
  year = 2022
WHERE
  id = 2;
  /* DELETE */
DELETE FROM
  cars
WHERE
  id = 4
LIMIT
  1;