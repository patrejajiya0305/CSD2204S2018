MariaDB [(none)]> USE CSD2204S18;
Database changed
MariaDB [CSD2204S18]> 
MariaDB [CSD2204S18]> SHOW TABlES;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| customer             |
+----------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | BOB Marley      | BM       | TORONTO    | 100100     |   43 |
| C03    | CHERLIES THERON | CHER     | NEW YORK   | 120134     |   35 |
| C04    | DENIAL JACK     | DJ       | BRAZIL     | 341020     |   54 |
| C05    | DONNA NEWMAN    | NEW      | TORONTO    | 130120     |   50 |
| C06    | ESTON M.        | M.       | TORONTO    | 201023     |   65 |
| C07    | BOBBY CHACKO    | CHAC     | NEW YORK   | 320300     |   70 |
| C08    | ASHKO CHARLE    | AK       | USA        | 421044     |   72 |
| C09    | TONNY SPECIAL   | SPECIE   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | SPARROW  | NEW JERSEY | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.05 sec)

MariaDB [CSD2204S18]> Update Customers SET age=43 where custID='C02';
ERROR 1146 (42S02): Table 'csd2204s18.customers' doesn't exist
MariaDB [CSD2204S18]> Update Customer SET age=23 where custID='C02';
Query OK, 1 row affected (0.11 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> Update Customer SET age=20 where custID='C03';
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> Update Customer SET age=25 where custID='C04';
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | BOB Marley      | BM       | TORONTO    | 100100     |   23 |
| C03    | CHERLIES THERON | CHER     | NEW YORK   | 120134     |   20 |
| C04    | DENIAL JACK     | DJ       | BRAZIL     | 341020     |   25 |
| C05    | DONNA NEWMAN    | NEW      | TORONTO    | 130120     |   50 |
| C06    | ESTON M.        | M.       | TORONTO    | 201023     |   65 |
| C07    | BOBBY CHACKO    | CHAC     | NEW YORK   | 320300     |   70 |
| C08    | ASHKO CHARLE    | AK       | USA        | 421044     |   72 |
| C09    | TONNY SPECIAL   | SPECIE   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | SPARROW  | NEW JERSEY | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> Create TABLE Persons (
    -> ID integer(3),
    -> LastName varchar(255) NOT NULL,
    -> FirstName varchar(255) NOT NULL,
    -> Age integer(3),
    -> CONSTRAINT PK_Person PRIMARY KEY (ID,LastName)
    -> );
Query OK, 0 rows affected (0.34 sec)

MariaDB [CSD2204S18]> desc persons;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| ID        | int(3)       | NO   | PRI | NULL    |       |
| LastName  | varchar(255) | NO   | PRI | NULL    |       |
| FirstName | varchar(255) | NO   |     | NULL    |       |
| Age       | int(3)       | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.05 sec)

MariaDB [CSD2204S18]> SHOW INDEX FROM Persons;
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table   | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| persons |          0 | PRIMARY  |            1 | ID          | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
| persons |          0 | PRIMARY  |            2 | LastName    | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
2 rows in set (0.01 sec)

MariaDB [CSD2204S18]> CREATE TABLE Orders (
    -> ORDErID integer(3) NOT NULL;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 2
MariaDB [CSD2204S18]> OrderID integer(3) NOT NULL,
    -> OrderNumber integer(3) NOT NULL,
    -> PersonID integer(3),
    -> PRIMARY KEY (OrderID),
    -> CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID)
    -> REFERENCES PERSONS(ID));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'OrderID integer(3) NOT NULL,
OrderNumber integer(3) NOT NULL,
PersonID integer(3' at line 1
MariaDB [CSD2204S18]> CREATE TABLE Orders (
    -> ORDERID INTEGER(3) NOT NULL,
    -> ORDERNUMBER INTEGER(3),
    -> PERSONID INTEGER(3),
    -> PRIMARY KEY(ORDERID,
    -> CONSTRAINT FK_PERSONORDER FOREIGN KEY (PERSONID)
    -> REFERENCES PERSONS(ID));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'CONSTRAINT FK_PERSONORDER FOREIGN KEY (PERSONID)
REFERENCES PERSONS(ID))' at line 6
MariaDB [CSD2204S18]> CREATE TABLE Orders (
    -> OrderID integer(3) NOT NULL,
    -> OrderNumber integer(3) NOT NULL,
    -> PersonID integer(3),
    -> PRIMARY KEY (OrderID),
    -> CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID)
    -> REFERENCES PERSONS(ID));
Query OK, 0 rows affected (0.27 sec)

MariaDB [CSD2204S18]> SHOW INDEX FROM ORDERS;
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table  | Non_unique | Key_name       | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| orders |          0 | PRIMARY        |            1 | OrderID     | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
| orders |          1 | FK_PersonOrder |            1 | PersonID    | A         |           0 |     NULL | NULL   | YES  | BTREE      |         |               |
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SHOW CREATE TABLES Orders;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'TABLES Orders' at line 1
MariaDB [CSD2204S18]> SHOW CREATE TABLE Orders;
+--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table  | Create Table                                                                                                                                                                                                                                                                                                      |
+--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Orders | CREATE TABLE `orders` (
  `OrderID` int(3) NOT NULL,
  `OrderNumber` int(3) NOT NULL,
  `PersonID` int(3) DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `FK_PersonOrder` (`PersonID`),
  CONSTRAINT `FK_PersonOrder` FOREIGN KEY (`PersonID`) REFERENCES `persons` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 |
+--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> DESC CUSTOMER;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.02 sec)

MariaDB [CSD2204S18]> CREATE TABLE c1 AS SELECT * FROM CUSTOMER;
Query OK, 10 rows affected (0.23 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> CREATE TABLE c2 AS SELECT name,postalCode FROM CUSTOMER where city ='TORONTO';
Query OK, 3 rows affected (0.22 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> DESC c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * from c1;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | BOB Marley      | BM       | TORONTO    | 100100     |   23 |
| C03    | CHERLIES THERON | CHER     | NEW YORK   | 120134     |   20 |
| C04    | DENIAL JACK     | DJ       | BRAZIL     | 341020     |   25 |
| C05    | DONNA NEWMAN    | NEW      | TORONTO    | 130120     |   50 |
| C06    | ESTON M.        | M.       | TORONTO    | 201023     |   65 |
| C07    | BOBBY CHACKO    | CHAC     | NEW YORK   | 320300     |   70 |
| C08    | ASHKO CHARLE    | AK       | USA        | 421044     |   72 |
| C09    | TONNY SPECIAL   | SPECIE   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | SPARROW  | NEW JERSEY | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * from c2;
+--------------+------------+
| name         | postalCode |
+--------------+------------+
| BOB Marley   | 100100     |
| DONNA NEWMAN | 130120     |
| ESTON M.     | 201023     |
+--------------+------------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SHOW CREATE TABLE c2;
+-------+---------------------------------------------------------------------------------------------------------------------------------------+
| Table | Create Table                                                                                                                          |
+-------+---------------------------------------------------------------------------------------------------------------------------------------+
| c2    | CREATE TABLE `c2` (
  `name` varchar(50) DEFAULT NULL,
  `postalCode` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 |
+-------+---------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| c1                   |
| c2                   |
| customer             |
| orders               |
| persons              |
+----------------------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> CREATE TABLE c3 LIke Customer;
Query OK, 0 rows affected (0.44 sec)

MariaDB [CSD2204S18]> DESC C3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM c3;
Empty set (0.00 sec)

MariaDB [CSD2204S18]> INSERT into c3 select * FROM CUSTOMER where custID>5;
Query OK, 0 rows affected, 10 warnings (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 10

MariaDB [CSD2204S18]> SELECT * FROM C3;
Empty set (0.00 sec)

MariaDB [CSD2204S18]> INSERT into c3 select * FROM CUSTOMER ;
Query OK, 10 rows affected (0.03 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> SELECT * FROM C3;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | BOB Marley      | BM       | TORONTO    | 100100     |   23 |
| C03    | CHERLIES THERON | CHER     | NEW YORK   | 120134     |   20 |
| C04    | DENIAL JACK     | DJ       | BRAZIL     | 341020     |   25 |
| C05    | DONNA NEWMAN    | NEW      | TORONTO    | 130120     |   50 |
| C06    | ESTON M.        | M.       | TORONTO    | 201023     |   65 |
| C07    | BOBBY CHACKO    | CHAC     | NEW YORK   | 320300     |   70 |
| C08    | ASHKO CHARLE    | AK       | USA        | 421044     |   72 |
| C09    | TONNY SPECIAL   | SPECIE   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | SPARROW  | NEW JERSEY | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE c3 ADD COLUMN Country VARCHAR(100);
Query OK, 0 rows affected (0.34 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC c3;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| custID     | varchar(5)   | NO   | PRI | NULL    |       |
| name       | varchar(50)  | YES  |     | NULL    |       |
| nickname   | varchar(10)  | YES  |     | NULL    |       |
| city       | varchar(20)  | YES  |     | NULL    |       |
| postalCode | varchar(10)  | YES  |     | NULL    |       |
| age        | int(3)       | YES  |     | NULL    |       |
| Country    | varchar(100) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

MariaDB [CSD2204S18]> ALTER TABLE c3 MODIFY COLUMN Country VARCHAR(40);
Query OK, 10 rows affected (0.44 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| Country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE c3 MODIFY COLUMN country VARCHAR(40);
Query OK, 0 rows affected (0.00 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE c3 CHANGE COLUMN postalCode zipcode varchar(6);
Query OK, 10 rows affected (2.11 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c3;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| custID   | varchar(5)  | NO   | PRI | NULL    |       |
| name     | varchar(50) | YES  |     | NULL    |       |
| nickname | varchar(10) | YES  |     | NULL    |       |
| city     | varchar(20) | YES  |     | NULL    |       |
| zipcode  | varchar(6)  | YES  |     | NULL    |       |
| age      | int(3)      | YES  |     | NULL    |       |
| country  | varchar(40) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE c3 CHANGE COLUMN zipcode postalCode Varchar(6);
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(6)  | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE c3 CHANGE COLUMN custID customerID varchar(5);
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(6)  | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE c3 DROP COLUMN nickname varchar(10);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'varchar(10)' at line 1
MariaDB [CSD2204S18]> ALTER TABLE c3 DROP COLUMN nickname;
Query OK, 0 rows affected (0.27 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(6)  | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE c3 MODIFY name VARCHAR(50) NOT NULL;
Query OK, 10 rows affected (0.41 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | NO   |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(6)  | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE c1 ADD PRIMARY KEY(custID);
Query OK, 0 rows affected (0.28 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE c1 DROP INDEX custID;
ERROR 1091 (42000): Can't DROP 'custID'; check that column/key exists
MariaDB [CSD2204S18]> ALTER TABLE c1 DROP Primary Key(custId);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(custId)' at line 1
MariaDB [CSD2204S18]> ALTER TABLE c1 DROP Primary Key(custID);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(custID)' at line 1
MariaDB [CSD2204S18]> SHOW VARIABLES Like 'VERSION';
+---------------+-----------------+
| Variable_name | Value           |
+---------------+-----------------+
| version       | 10.1.21-MariaDB |
+---------------+-----------------+
1 row in set (0.01 sec)

MariaDB [CSD2204S18]> desc c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE c1 DROP Primary Key;
Query OK, 10 rows affected (0.56 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE c2 MODIFY COLUMN name varchar(50);
Query OK, 0 rows affected (0.00 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE c2 ADD COLUMN PRIMARY KEY(name);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'PRIMARY KEY(name)' at line 1
MariaDB [CSD2204S18]> ALTER TABLE c2 ADD  PRIMARY KEY(name);
Query OK, 3 rows affected (0.66 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | NO   | PRI | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

MariaDB [CSD2204S18]> ALTER TABLE c2 DROP PRIMARY KEY;
Query OK, 3 rows affected (0.41 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | NO   |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

MariaDB [CSD2204S18]> desc persons;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| ID        | int(3)       | NO   | PRI | NULL    |       |
| LastName  | varchar(255) | NO   | PRI | NULL    |       |
| FirstName | varchar(255) | NO   |     | NULL    |       |
| Age       | int(3)       | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> show index from persons;
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table   | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| persons |          0 | PRIMARY  |            1 | ID          | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
| persons |          0 | PRIMARY  |            2 | LastName    | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
2 rows in set (0.00 sec)

MariaDB [(none)]> USE CSD2204S18;
Database changed
MariaDB [CSD2204S18]> SELECT * FROM C3;
+------------+-----------------+------------+------------+------+---------+
| customerID | name            | city       | postalCode | age  | country |
+------------+-----------------+------------+------------+------+---------+
| C01        | Ashley          | WDC        | 321200     |   34 | NULL    |
| C02        | BOB Marley      | TORONTO    | 100100     |   23 | NULL    |
| C03        | CHERLIES THERON | NEW YORK   | 120134     |   20 | NULL    |
| C04        | DENIAL JACK     | BRAZIL     | 341020     |   25 | NULL    |
| C05        | DONNA NEWMAN    | TORONTO    | 130120     |   50 | NULL    |
| C06        | ESTON M.        | TORONTO    | 201023     |   65 | NULL    |
| C07        | BOBBY CHACKO    | NEW YORK   | 320300     |   70 | NULL    |
| C08        | ASHKO CHARLE    | USA        | 421044     |   72 | NULL    |
| C09        | TONNY SPECIAL   | GTA        | 418921     |   62 | NULL    |
| C10        | Jack Sp         | NEW JERSEY | 102301     |   35 | NULL    |
+------------+-----------------+------------+------------+------+---------+
10 rows in set (0.01 sec)

MariaDB [CSD2204S18]> update c3 set country ='USA';
Query OK, 10 rows affected (0.03 sec)
Rows matched: 10  Changed: 10  Warnings: 0

MariaDB [CSD2204S18]> SELECT * FROM C3;
+------------+-----------------+------------+------------+------+---------+
| customerID | name            | city       | postalCode | age  | country |
+------------+-----------------+------------+------------+------+---------+
| C01        | Ashley          | WDC        | 321200     |   34 | USA     |
| C02        | BOB Marley      | TORONTO    | 100100     |   23 | USA     |
| C03        | CHERLIES THERON | NEW YORK   | 120134     |   20 | USA     |
| C04        | DENIAL JACK     | BRAZIL     | 341020     |   25 | USA     |
| C05        | DONNA NEWMAN    | TORONTO    | 130120     |   50 | USA     |
| C06        | ESTON M.        | TORONTO    | 201023     |   65 | USA     |
| C07        | BOBBY CHACKO    | NEW YORK   | 320300     |   70 | USA     |
| C08        | ASHKO CHARLE    | USA        | 421044     |   72 | USA     |
| C09        | TONNY SPECIAL   | GTA        | 418921     |   62 | USA     |
| C10        | Jack Sp         | NEW JERSEY | 102301     |   35 | USA     |
+------------+-----------------+------------+------------+------+---------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> update c3 set country='CANADA' where city='TORONTO' ||  city='GTA';
Query OK, 4 rows affected (0.03 sec)
Rows matched: 4  Changed: 4  Warnings: 0

MariaDB [CSD2204S18]> SELECT * FROM C3;
+------------+-----------------+------------+------------+------+---------+
| customerID | name            | city       | postalCode | age  | country |
+------------+-----------------+------------+------------+------+---------+
| C01        | Ashley          | WDC        | 321200     |   34 | USA     |
| C02        | BOB Marley      | TORONTO    | 100100     |   23 | CANADA  |
| C03        | CHERLIES THERON | NEW YORK   | 120134     |   20 | USA     |
| C04        | DENIAL JACK     | BRAZIL     | 341020     |   25 | USA     |
| C05        | DONNA NEWMAN    | TORONTO    | 130120     |   50 | CANADA  |
| C06        | ESTON M.        | TORONTO    | 201023     |   65 | CANADA  |
| C07        | BOBBY CHACKO    | NEW YORK   | 320300     |   70 | USA     |
| C08        | ASHKO CHARLE    | USA        | 421044     |   72 | USA     |
| C09        | TONNY SPECIAL   | GTA        | 418921     |   62 | CANADA  |
| C10        | Jack Sp         | NEW JERSEY | 102301     |   35 | USA     |
+------------+-----------------+------------+------------+------+---------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> update c3 set country='SOUTH AMERICA' where city='Brazil';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> SELECT * FROM C3;
+------------+-----------------+------------+------------+------+---------------+
| customerID | name            | city       | postalCode | age  | country       |
+------------+-----------------+------------+------------+------+---------------+
| C01        | Ashley          | WDC        | 321200     |   34 | USA           |
| C02        | BOB Marley      | TORONTO    | 100100     |   23 | CANADA        |
| C03        | CHERLIES THERON | NEW YORK   | 120134     |   20 | USA           |
| C04        | DENIAL JACK     | BRAZIL     | 341020     |   25 | SOUTH AMERICA |
| C05        | DONNA NEWMAN    | TORONTO    | 130120     |   50 | CANADA        |
| C06        | ESTON M.        | TORONTO    | 201023     |   65 | CANADA        |
| C07        | BOBBY CHACKO    | NEW YORK   | 320300     |   70 | USA           |
| C08        | ASHKO CHARLE    | USA        | 421044     |   72 | USA           |
| C09        | TONNY SPECIAL   | GTA        | 418921     |   62 | CANADA        |
| C10        | Jack Sp         | NEW JERSEY | 102301     |   35 | USA           |
+------------+-----------------+------------+------------+------+---------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM C2;
+--------------+------------+
| name         | postalCode |
+--------------+------------+
| BOB Marley   | 100100     |
| DONNA NEWMAN | 130120     |
| ESTON M.     | 201023     |
+--------------+------------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> DROP FROM wherename LIKE 'Bob';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM wherename LIKE 'Bob'' at line 1
MariaDB [CSD2204S18]> DELETE FROM c2 where name LIKE 'Bob%';
Query OK, 1 row affected (0.05 sec)

MariaDB [CSD2204S18]> desc c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | NO   |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SElect * FROM C2;
+--------------+------------+
| name         | postalCode |
+--------------+------------+
| DONNA NEWMAN | 130120     |
| ESTON M.     | 201023     |
+--------------+------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> DELETE FROM C2;
Query OK, 2 rows affected (0.03 sec)

MariaDB [CSD2204S18]> SElect * FROM C2;
Empty set (0.00 sec)

MariaDB [CSD2204S18]> DROP TABLe c2;
Query OK, 0 rows affected (0.09 sec)

MariaDB [CSD2204S18]> SHOW TABLES;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| c1                   |
| c3                   |
| customer             |
| orders               |
| persons              |
+----------------------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SElect * FROM C1;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | BOB Marley      | BM       | TORONTO    | 100100     |   23 |
| C03    | CHERLIES THERON | CHER     | NEW YORK   | 120134     |   20 |
| C04    | DENIAL JACK     | DJ       | BRAZIL     | 341020     |   25 |
| C05    | DONNA NEWMAN    | NEW      | TORONTO    | 130120     |   50 |
| C06    | ESTON M.        | M.       | TORONTO    | 201023     |   65 |
| C07    | BOBBY CHACKO    | CHAC     | NEW YORK   | 320300     |   70 |
| C08    | ASHKO CHARLE    | AK       | USA        | 421044     |   72 |
| C09    | TONNY SPECIAL   | SPECIE   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | SPARROW  | NEW JERSEY | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.02 sec)

MariaDB [CSD2204S18]> DESC c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> UPDATE C1 set custID = 1 where age>50;
Query OK, 4 rows affected (0.01 sec)
Rows matched: 4  Changed: 4  Warnings: 0

MariaDB [CSD2204S18]> SElect * FROM C1;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | BOB Marley      | BM       | TORONTO    | 100100     |   23 |
| C03    | CHERLIES THERON | CHER     | NEW YORK   | 120134     |   20 |
| C04    | DENIAL JACK     | DJ       | BRAZIL     | 341020     |   25 |
| C05    | DONNA NEWMAN    | NEW      | TORONTO    | 130120     |   50 |
| 1      | ESTON M.        | M.       | TORONTO    | 201023     |   65 |
| 1      | BOBBY CHACKO    | CHAC     | NEW YORK   | 320300     |   70 |
| 1      | ASHKO CHARLE    | AK       | USA        | 421044     |   72 |
| 1      | TONNY SPECIAL   | SPECIE   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | SPARROW  | NEW JERSEY | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> UPDATE C1 set custID = 1 where age>=50;
Query OK, 1 row affected (0.02 sec)
Rows matched: 5  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> SElect * FROM C1;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | BOB Marley      | BM       | TORONTO    | 100100     |   23 |
| C03    | CHERLIES THERON | CHER     | NEW YORK   | 120134     |   20 |
| C04    | DENIAL JACK     | DJ       | BRAZIL     | 341020     |   25 |
| 1      | DONNA NEWMAN    | NEW      | TORONTO    | 130120     |   50 |
| 1      | ESTON M.        | M.       | TORONTO    | 201023     |   65 |
| 1      | BOBBY CHACKO    | CHAC     | NEW YORK   | 320300     |   70 |
| 1      | ASHKO CHARLE    | AK       | USA        | 421044     |   72 |
| 1      | TONNY SPECIAL   | SPECIE   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | SPARROW  | NEW JERSEY | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> Exit;
