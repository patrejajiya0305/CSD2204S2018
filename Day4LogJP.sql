MariaDB [(none)]> SHOW DATABASE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'DATABASE' at line 1
MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| csd2204s18         |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
6 rows in set (0.00 sec)

MariaDB [(none)]> USE CSD2204S18;
Database changed
MariaDB [CSD2204S18]> SHOW TABLES;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| customer             |
+----------------------+
1 row in set (0.03 sec)

MariaDB [CSD2204S18]> SELECT * FROM customer;
Empty set (0.00 sec)

MariaDB [CSD2204S18]> DESC customer;
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

MariaDB [CSD2204S18]> INSERT INTO CUSTOMER VALUES('C01','Ashley','Ash','WDC','321200',34);
Query OK, 1 row affected (0.05 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER;
+--------+--------+----------+------+------------+------+
| custID | name   | nickname | city | postalCode | age  |
+--------+--------+----------+------+------------+------+
| C01    | Ashley | Ash      | WDC  | 321200     |   34 |
+--------+--------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> INSERT INTO CUSTOMER VALUES('C02','BOB Marley','BM','TORONTO','100100',43);
Query OK, 1 row affected (0.06 sec)

MariaDB [CSD2204S18]> INSERT INTO CUSTOMER VALUES('C03','CHERLIES THERON','CHER','NEW YORK','120134',35);
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204S18]> INSERT INTO CUSTOMER VALUES('C04','DENIAL JACK','DJ','BRAZIL','341020',54);
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204S18]> INSERT INTO CUSTOMER VALUES('C05','DONNA NEWMAN;,'NEW','TORONTO','130120',50);
    '> ;
    '> ;
    '>   ';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'NEW','TORONTO','130120',50);
;
;
  '' at line 1
MariaDB [CSD2204S18]> INSERT INTO CUSTOMER VALUES('C05','DONNA NEWMAN','NEW','TORONTO','130120',50);
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204S18]> INSERT INTO CUSTOMER VALUES('C06',ESTON M.','M.''TORONTO','201023',65);
    '> ';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'M.','M.''TORONTO','201023',65);
'' at line 1
MariaDB [CSD2204S18]> INSERT INTO CUSTOMER VALUES('C06',ESTON M.','M.''TORONTO','201023',65);
    '> ';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'M.','M.''TORONTO','201023',65);
'' at line 1
MariaDB [CSD2204S18]> INSERT INTO CUSTOMER VALUES('C06','ESTON M.','M.''TORONTO','201023',65);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
MariaDB [CSD2204S18]> INSERT INTO CUSTOMER VALUES('C07','BOBBY CHACKO','CHAC','NEW YORK','320300',70);
Query OK, 1 row affected (0.01 sec)

MariaDB [CSD2204S18]> INSERT INTO CUSTOMER VALUES('C08','ASHKO CHARLE','AK','USA','421044',72);
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204S18]> INSERT INTO CUSTOMER VALUES('C09','TONNY SPECIAL','SPECIE','GTA','418921',62);
Query OK, 1 row affected (0.02 sec)

MariaDB [CSD2204S18]> INSERT INTO CUSTOMER VALUES('C10','Jack Sp','SPARROW','NEW JERSEY','102301',35);
Query OK, 1 row affected (0.02 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | BOB Marley      | BM       | TORONTO    | 100100     |   43 |
| C03    | CHERLIES THERON | CHER     | NEW YORK   | 120134     |   35 |
| C04    | DENIAL JACK     | DJ       | BRAZIL     | 341020     |   54 |
| C05    | DONNA NEWMAN    | NEW      | TORONTO    | 130120     |   50 |
| C07    | BOBBY CHACKO    | CHAC     | NEW YORK   | 320300     |   70 |
| C08    | ASHKO CHARLE    | AK       | USA        | 421044     |   72 |
| C09    | TONNY SPECIAL   | SPECIE   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | SPARROW  | NEW JERSEY | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
9 rows in set (0.00 sec)

MariaDB [CSD2204S18]> INSERT INTO CUSTOMER VALUES('C06','ESTON M.','M.','TORONTO','201023',65);
Query OK, 1 row affected (0.05 sec)

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
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,nickname FROM CUSTOMER;
+-----------------+----------+
| name            | nickname |
+-----------------+----------+
| Ashley          | Ash      |
| BOB Marley      | BM       |
| CHERLIES THERON | CHER     |
| DENIAL JACK     | DJ       |
| DONNA NEWMAN    | NEW      |
| ESTON M.        | M.       |
| BOBBY CHACKO    | CHAC     |
| ASHKO CHARLE    | AK       |
| TONNY SPECIAL   | SPECIE   |
| Jack Sp         | SPARROW  |
+-----------------+----------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT city,postalCOde FROM CUSTOMER;
+------------+------------+
| city       | postalCOde |
+------------+------------+
| WDC        | 321200     |
| TORONTO    | 100100     |
| NEW YORK   | 120134     |
| BRAZIL     | 341020     |
| TORONTO    | 130120     |
| TORONTO    | 201023     |
| NEW YORK   | 320300     |
| USA        | 421044     |
| GTA        | 418921     |
| NEW JERSEY | 102301     |
+------------+------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE name='Ashley';
+--------+--------+----------+------+------------+------+
| custID | name   | nickname | city | postalCode | age  |
+--------+--------+----------+------+------------+------+
| C01    | Ashley | Ash      | WDC  | 321200     |   34 |
+--------+--------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE nickname='AK';
+--------+--------------+----------+------+------------+------+
| custID | name         | nickname | city | postalCode | age  |
+--------+--------------+----------+------+------------+------+
| C08    | ASHKO CHARLE | AK       | USA  | 421044     |   72 |
+--------+--------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,city FROM CUSTOMER WHERE name='ESTON M.';
+----------+---------+
| name     | city    |
+----------+---------+
| ESTON M. | TORONTO |
+----------+---------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,city FROM CUSTOMER WHERE city='Toronto';
+--------------+---------+
| name         | city    |
+--------------+---------+
| BOB Marley   | TORONTO |
| DONNA NEWMAN | TORONTO |
| ESTON M.     | TORONTO |
+--------------+---------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,city FROM CUSTOMER WHERE city!='Toronto';
+-----------------+------------+
| name            | city       |
+-----------------+------------+
| Ashley          | WDC        |
| CHERLIES THERON | NEW YORK   |
| DENIAL JACK     | BRAZIL     |
| BOBBY CHACKO    | NEW YORK   |
| ASHKO CHARLE    | USA        |
| TONNY SPECIAL   | GTA        |
| Jack Sp         | NEW JERSEY |
+-----------------+------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE age>50;
+--------+---------------+----------+----------+------------+------+
| custID | name          | nickname | city     | postalCode | age  |
+--------+---------------+----------+----------+------------+------+
| C04    | DENIAL JACK   | DJ       | BRAZIL   | 341020     |   54 |
| C06    | ESTON M.      | M.       | TORONTO  | 201023     |   65 |
| C07    | BOBBY CHACKO  | CHAC     | NEW YORK | 320300     |   70 |
| C08    | ASHKO CHARLE  | AK       | USA      | 421044     |   72 |
| C09    | TONNY SPECIAL | SPECIE   | GTA      | 418921     |   62 |
+--------+---------------+----------+----------+------------+------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE name>'Ashley';
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C02    | BOB Marley      | BM       | TORONTO    | 100100     |   43 |
| C03    | CHERLIES THERON | CHER     | NEW YORK   | 120134     |   35 |
| C04    | DENIAL JACK     | DJ       | BRAZIL     | 341020     |   54 |
| C05    | DONNA NEWMAN    | NEW      | TORONTO    | 130120     |   50 |
| C06    | ESTON M.        | M.       | TORONTO    | 201023     |   65 |
| C07    | BOBBY CHACKO    | CHAC     | NEW YORK   | 320300     |   70 |
| C09    | TONNY SPECIAL   | SPECIE   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | SPARROW  | NEW JERSEY | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
8 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE name<'Donna';
+--------+-----------------+----------+----------+------------+------+
| custID | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C01    | Ashley          | Ash      | WDC      | 321200     |   34 |
| C02    | BOB Marley      | BM       | TORONTO  | 100100     |   43 |
| C03    | CHERLIES THERON | CHER     | NEW YORK | 120134     |   35 |
| C04    | DENIAL JACK     | DJ       | BRAZIL   | 341020     |   54 |
| C07    | BOBBY CHACKO    | CHAC     | NEW YORK | 320300     |   70 |
| C08    | ASHKO CHARLE    | AK       | USA      | 421044     |   72 |
+--------+-----------------+----------+----------+------------+------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE name>'Donna';
+--------+---------------+----------+------------+------------+------+
| custID | name          | nickname | city       | postalCode | age  |
+--------+---------------+----------+------------+------------+------+
| C05    | DONNA NEWMAN  | NEW      | TORONTO    | 130120     |   50 |
| C06    | ESTON M.      | M.       | TORONTO    | 201023     |   65 |
| C09    | TONNY SPECIAL | SPECIE   | GTA        | 418921     |   62 |
| C10    | Jack Sp       | SPARROW  | NEW JERSEY | 102301     |   35 |
+--------+---------------+----------+------------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> Select name,city FROM CUSTOMER WHERE Name='Ashley' OR City='TORONTO'; 
+--------------+---------+
| name         | city    |
+--------------+---------+
| Ashley       | WDC     |
| BOB Marley   | TORONTO |
| DONNA NEWMAN | TORONTO |
| ESTON M.     | TORONTO |
+--------------+---------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,city FROM CUSTOMER WHERE  CITY='NEW YORK' || CITY='TORONTO';
+-----------------+----------+
| name            | city     |
+-----------------+----------+
| BOB Marley      | TORONTO  |
| CHERLIES THERON | NEW YORK |
| DONNA NEWMAN    | TORONTO  |
| ESTON M.        | TORONTO  |
| BOBBY CHACKO    | NEW YORK |
+-----------------+----------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,age FROM CUSTOMER WHERE CITY='TORONTO' & Age>50;
Empty set, 20 warnings (0.02 sec)

MariaDB [CSD2204S18]> SELECT name,age FROM CUSTOMER WHERE CITY='TORONTO' && Age>50;
+----------+------+
| name     | age  |
+----------+------+
| ESTON M. |   65 |
+----------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT COUNT(*) FROM CUSTOMER WHERE city= 
    -> ';
    '> =;
    '> 
    '> ;
    '> '';
    '> SELECT COUNT(*) FROM CUSTOMER WHERE city= 'Toronto';
    '> 
    '> 
    '> ;
    '> ';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'Toronto';


;
'' at line 2
MariaDB [CSD2204S18]> SELECT COUNT(*) FROM CUSTOMER WHERE city= 'TORONTO';
+----------+
| COUNT(*) |
+----------+
|        3 |
+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT COUNT(*) 'No Of customers in Toronto' FROM Customer WHERE City='TORONT';
+----------------------------+
| No Of customers in Toronto |
+----------------------------+
|                          0 |
+----------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT COUNT(*) 'No Of customers in Toronto' FROM Customer WHERE City='TORONTO';
+----------------------------+
| No Of customers in Toronto |
+----------------------------+
|                          3 |
+----------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT COUNT(*) 'No. Of Customers With age more than 50' FROM CUSTOMER WHERE age>50;
+----------------------------------------+
| No. Of Customers With age more than 50 |
+----------------------------------------+
|                                      5 |
+----------------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * 'No. Of Customers With age between 30 and 70' FROM CUSTOMER WHERE age>30 && age<70;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''No. Of Customers With age between 30 and 70' FROM CUSTOMER WHERE age>30 && age<' at line 1
MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE age>30 && age<70;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | BOB Marley      | BM       | TORONTO    | 100100     |   43 |
| C03    | CHERLIES THERON | CHER     | NEW YORK   | 120134     |   35 |
| C04    | DENIAL JACK     | DJ       | BRAZIL     | 341020     |   54 |
| C05    | DONNA NEWMAN    | NEW      | TORONTO    | 130120     |   50 |
| C06    | ESTON M.        | M.       | TORONTO    | 201023     |   65 |
| C09    | TONNY SPECIAL   | SPECIE   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | SPARROW  | NEW JERSEY | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
8 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE age BETWEEN 30 AND 70;
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
| C09    | TONNY SPECIAL   | SPECIE   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | SPARROW  | NEW JERSEY | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
9 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE age NOT BETWEEN 30 AND 70;
+--------+--------------+----------+------+------------+------+
| custID | name         | nickname | city | postalCode | age  |
+--------+--------------+----------+------+------------+------+
| C08    | ASHKO CHARLE | AK       | USA  | 421044     |   72 |
+--------+--------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE NOT age BETWEEN 30 AND 70;
+--------+--------------+----------+------+------------+------+
| custID | name         | nickname | city | postalCode | age  |
+--------+--------------+----------+------+------------+------+
| C08    | ASHKO CHARLE | AK       | USA  | 421044     |   72 |
+--------+--------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT 'oldest customer';
+-----------------+
| oldest customer |
+-----------------+
| oldest customer |
+-----------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT  name,max(age) FROM CUSTOMER;
+--------+----------+
| name   | max(age) |
+--------+----------+
| Ashley |       72 |
+--------+----------+
1 row in set (0.03 sec)

MariaDB [CSD2204S18]> SELECT max(age) FROM CUSTOMER;
+----------+
| max(age) |
+----------+
|       72 |
+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT min(age) FROM CUSTOMER;
+----------+
| min(age) |
+----------+
|       34 |
+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT avg(age) FROM CUSTOMER;
+----------+
| avg(age) |
+----------+
|  52.0000 |
+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE name LIKE 'B%';
+--------+--------------+----------+----------+------------+------+
| custID | name         | nickname | city     | postalCode | age  |
+--------+--------------+----------+----------+------------+------+
| C02    | BOB Marley   | BM       | TORONTO  | 100100     |   43 |
| C07    | BOBBY CHACKO | CHAC     | NEW YORK | 320300     |   70 |
+--------+--------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE name = 'B%';
Empty set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE name NOT LIKE 'B%';
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C03    | CHERLIES THERON | CHER     | NEW YORK   | 120134     |   35 |
| C04    | DENIAL JACK     | DJ       | BRAZIL     | 341020     |   54 |
| C05    | DONNA NEWMAN    | NEW      | TORONTO    | 130120     |   50 |
| C06    | ESTON M.        | M.       | TORONTO    | 201023     |   65 |
| C08    | ASHKO CHARLE    | AK       | USA        | 421044     |   72 |
| C09    | TONNY SPECIAL   | SPECIE   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | SPARROW  | NEW JERSEY | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
8 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE name LIKE '%N';
+--------+-----------------+----------+----------+------------+------+
| custID | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | CHERLIES THERON | CHER     | NEW YORK | 120134     |   35 |
| C05    | DONNA NEWMAN    | NEW      | TORONTO  | 130120     |   50 |
+--------+-----------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE city LIKE 'n%'; 
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C03    | CHERLIES THERON | CHER     | NEW YORK   | 120134     |   35 |
| C07    | BOBBY CHACKO    | CHAC     | NEW YORK   | 320300     |   70 |
| C10    | Jack Sp         | SPARROW  | NEW JERSEY | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE city LIKE 'NEW%'; 
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C03    | CHERLIES THERON | CHER     | NEW YORK   | 120134     |   35 |
| C07    | BOBBY CHACKO    | CHAC     | NEW YORK   | 320300     |   70 |
| C10    | Jack Sp         | SPARROW  | NEW JERSEY | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE name LIKE '__n%';
+--------+---------------+----------+---------+------------+------+
| custID | name          | nickname | city    | postalCode | age  |
+--------+---------------+----------+---------+------------+------+
| C04    | DENIAL JACK   | DJ       | BRAZIL  | 341020     |   54 |
| C05    | DONNA NEWMAN  | NEW      | TORONTO | 130120     |   50 |
| C09    | TONNY SPECIAL | SPECIE   | GTA     | 418921     |   62 |
+--------+---------------+----------+---------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE name LIKE '__n_a%';
+--------+--------------+----------+---------+------------+------+
| custID | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| C04    | DENIAL JACK  | DJ       | BRAZIL  | 341020     |   54 |
| C05    | DONNA NEWMAN | NEW      | TORONTO | 130120     |   50 |
+--------+--------------+----------+---------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER LIMIT 4;
+--------+-----------------+----------+----------+------------+------+
| custID | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C01    | Ashley          | Ash      | WDC      | 321200     |   34 |
| C02    | BOB Marley      | BM       | TORONTO  | 100100     |   43 |
| C03    | CHERLIES THERON | CHER     | NEW YORK | 120134     |   35 |
| C04    | DENIAL JACK     | DJ       | BRAZIL   | 341020     |   54 |
+--------+-----------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER where age=20||age=45;
Empty set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER where age=20||age=43;
+--------+------------+----------+---------+------------+------+
| custID | name       | nickname | city    | postalCode | age  |
+--------+------------+----------+---------+------------+------+
| C02    | BOB Marley | BM       | TORONTO | 100100     |   43 |
+--------+------------+----------+---------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER where age IN(20,43,53);
+--------+------------+----------+---------+------------+------+
| custID | name       | nickname | city    | postalCode | age  |
+--------+------------+----------+---------+------------+------+
| C02    | BOB Marley | BM       | TORONTO | 100100     |   43 |
+--------+------------+----------+---------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER where age NOT IN(20,43,53);
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C03    | CHERLIES THERON | CHER     | NEW YORK   | 120134     |   35 |
| C04    | DENIAL JACK     | DJ       | BRAZIL     | 341020     |   54 |
| C05    | DONNA NEWMAN    | NEW      | TORONTO    | 130120     |   50 |
| C06    | ESTON M.        | M.       | TORONTO    | 201023     |   65 |
| C07    | BOBBY CHACKO    | CHAC     | NEW YORK   | 320300     |   70 |
| C08    | ASHKO CHARLE    | AK       | USA        | 421044     |   72 |
| C09    | TONNY SPECIAL   | SPECIE   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | SPARROW  | NEW JERSEY | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
9 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER where city IN('TORONTO','GTA','USA','WDC');
+--------+---------------+----------+---------+------------+------+
| custID | name          | nickname | city    | postalCode | age  |
+--------+---------------+----------+---------+------------+------+
| C01    | Ashley        | Ash      | WDC     | 321200     |   34 |
| C02    | BOB Marley    | BM       | TORONTO | 100100     |   43 |
| C05    | DONNA NEWMAN  | NEW      | TORONTO | 130120     |   50 |
| C06    | ESTON M.      | M.       | TORONTO | 201023     |   65 |
| C08    | ASHKO CHARLE  | AK       | USA     | 421044     |   72 |
| C09    | TONNY SPECIAL | SPECIE   | GTA     | 418921     |   62 |
+--------+---------------+----------+---------+------------+------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT DISTINCT(city) 'Unique Cities' FROM CUSTOMER;
+---------------+
| Unique Cities |
+---------------+
| WDC           |
| TORONTO       |
| NEW YORK      |
| BRAZIL        |
| USA           |
| GTA           |
| NEW JERSEY    |
+---------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT DISTINCT(city) AS 'Unique Cities' FROM CUSTOMER;
+---------------+
| Unique Cities |
+---------------+
| WDC           |
| TORONTO       |
| NEW YORK      |
| BRAZIL        |
| USA           |
| GTA           |
| NEW JERSEY    |
+---------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT COUNt(DISTINCT(city)) AS 'Unique Cities' FROM CUSTOMER;
+---------------+
| Unique Cities |
+---------------+
|             7 |
+---------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER ORDER BY name;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C08    | ASHKO CHARLE    | AK       | USA        | 421044     |   72 |
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | BOB Marley      | BM       | TORONTO    | 100100     |   43 |
| C07    | BOBBY CHACKO    | CHAC     | NEW YORK   | 320300     |   70 |
| C03    | CHERLIES THERON | CHER     | NEW YORK   | 120134     |   35 |
| C04    | DENIAL JACK     | DJ       | BRAZIL     | 341020     |   54 |
| C05    | DONNA NEWMAN    | NEW      | TORONTO    | 130120     |   50 |
| C06    | ESTON M.        | M.       | TORONTO    | 201023     |   65 |
| C10    | Jack Sp         | SPARROW  | NEW JERSEY | 102301     |   35 |
| C09    | TONNY SPECIAL   | SPECIE   | GTA        | 418921     |   62 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER ORDER BY ASC;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'ASC' at line 1
MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER ORDER BY name ASC;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C08    | ASHKO CHARLE    | AK       | USA        | 421044     |   72 |
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | BOB Marley      | BM       | TORONTO    | 100100     |   43 |
| C07    | BOBBY CHACKO    | CHAC     | NEW YORK   | 320300     |   70 |
| C03    | CHERLIES THERON | CHER     | NEW YORK   | 120134     |   35 |
| C04    | DENIAL JACK     | DJ       | BRAZIL     | 341020     |   54 |
| C05    | DONNA NEWMAN    | NEW      | TORONTO    | 130120     |   50 |
| C06    | ESTON M.        | M.       | TORONTO    | 201023     |   65 |
| C10    | Jack Sp         | SPARROW  | NEW JERSEY | 102301     |   35 |
| C09    | TONNY SPECIAL   | SPECIE   | GTA        | 418921     |   62 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER ORDER BY name DESC;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C09    | TONNY SPECIAL   | SPECIE   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | SPARROW  | NEW JERSEY | 102301     |   35 |
| C06    | ESTON M.        | M.       | TORONTO    | 201023     |   65 |
| C05    | DONNA NEWMAN    | NEW      | TORONTO    | 130120     |   50 |
| C04    | DENIAL JACK     | DJ       | BRAZIL     | 341020     |   54 |
| C03    | CHERLIES THERON | CHER     | NEW YORK   | 120134     |   35 |
| C07    | BOBBY CHACKO    | CHAC     | NEW YORK   | 320300     |   70 |
| C02    | BOB Marley      | BM       | TORONTO    | 100100     |   43 |
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C08    | ASHKO CHARLE    | AK       | USA        | 421044     |   72 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER ORDER BY Age DESC;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C08    | ASHKO CHARLE    | AK       | USA        | 421044     |   72 |
| C07    | BOBBY CHACKO    | CHAC     | NEW YORK   | 320300     |   70 |
| C06    | ESTON M.        | M.       | TORONTO    | 201023     |   65 |
| C09    | TONNY SPECIAL   | SPECIE   | GTA        | 418921     |   62 |
| C04    | DENIAL JACK     | DJ       | BRAZIL     | 341020     |   54 |
| C05    | DONNA NEWMAN    | NEW      | TORONTO    | 130120     |   50 |
| C02    | BOB Marley      | BM       | TORONTO    | 100100     |   43 |
| C10    | Jack Sp         | SPARROW  | NEW JERSEY | 102301     |   35 |
| C03    | CHERLIES THERON | CHER     | NEW YORK   | 120134     |   35 |
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER ORDER BY name DESC LIMIT 1;
+--------+---------------+----------+------+------------+------+
| custID | name          | nickname | city | postalCode | age  |
+--------+---------------+----------+------+------------+------+
| C09    | TONNY SPECIAL | SPECIE   | GTA  | 418921     |   62 |
+--------+---------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER ORDER BY age DESC LIMIT 1;
+--------+--------------+----------+------+------------+------+
| custID | name         | nickname | city | postalCode | age  |
+--------+--------------+----------+------+------------+------+
| C08    | ASHKO CHARLE | AK       | USA  | 421044     |   72 |
+--------+--------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER ORDER BY age DESC LIMIT 2;
+--------+--------------+----------+----------+------------+------+
| custID | name         | nickname | city     | postalCode | age  |
+--------+--------------+----------+----------+------------+------+
| C08    | ASHKO CHARLE | AK       | USA      | 421044     |   72 |
| C07    | BOBBY CHACKO | CHAC     | NEW YORK | 320300     |   70 |
+--------+--------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER ORDER BY age < max(age);
+--------+--------+----------+------+------------+------+
| custID | name   | nickname | city | postalCode | age  |
+--------+--------+----------+------+------------+------+
| C01    | Ashley | Ash      | WDC  | 321200     |   34 |
+--------+--------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE age < max(age);
ERROR 1111 (HY000): Invalid use of group function
MariaDB [CSD2204S18]> SELECT * FROM (SELECT * FROM Customer ORDER BY age DESC LIMIT 2)AS t ORDER BY age ASC LIMIT 1;
+--------+--------------+----------+----------+------------+------+
| custID | name         | nickname | city     | postalCode | age  |
+--------+--------------+----------+----------+------------+------+
| C07    | BOBBY CHACKO | CHAC     | NEW YORK | 320300     |   70 |
+--------+--------------+----------+----------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM (SELECT * FROM CUSTOMER ORDER BY AGE ASC LIMIT 2) AS t ORDER BY age DESC LIMIT 1;
+--------+---------+----------+------------+------------+------+
| custID | name    | nickname | city       | postalCode | age  |
+--------+---------+----------+------------+------------+------+
| C10    | Jack Sp | SPARROW  | NEW JERSEY | 102301     |   35 |
+--------+---------+----------+------------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT max(age)+10/2 FROM CUSTOMER;
+---------------+
| max(age)+10/2 |
+---------------+
|       77.0000 |
+---------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT 10*6 AS b;
+----+
| b  |
+----+
| 60 |
+----+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> EXIT;
