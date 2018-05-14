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
| c1                   |
| c3                   |
| customer             |
| mock_data            |
| orders               |
| persons              |
+----------------------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMERS;
ERROR 1146 (42S02): Table 'csd2204s18.customers' doesn't exist
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
10 rows in set (0.06 sec)

MariaDB [CSD2204S18]> SELECT * FROM  Customer ORDER BY name,city ASC;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C08    | ASHKO CHARLE    | AK       | USA        | 421044     |   72 |
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | BOB Marley      | BM       | TORONTO    | 100100     |   23 |
| C07    | BOBBY CHACKO    | CHAC     | NEW YORK   | 320300     |   70 |
| C03    | CHERLIES THERON | CHER     | NEW YORK   | 120134     |   20 |
| C04    | DENIAL JACK     | DJ       | BRAZIL     | 341020     |   25 |
| C05    | DONNA NEWMAN    | NEW      | TORONTO    | 130120     |   50 |
| C06    | ESTON M.        | M.       | TORONTO    | 201023     |   65 |
| C10    | Jack Sp         | SPARROW  | NEW JERSEY | 102301     |   35 |
| C09    | TONNY SPECIAL   | SPECIE   | GTA        | 418921     |   62 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER ORDER BY name Desc, city ASC;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C09    | TONNY SPECIAL   | SPECIE   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | SPARROW  | NEW JERSEY | 102301     |   35 |
| C06    | ESTON M.        | M.       | TORONTO    | 201023     |   65 |
| C05    | DONNA NEWMAN    | NEW      | TORONTO    | 130120     |   50 |
| C04    | DENIAL JACK     | DJ       | BRAZIL     | 341020     |   25 |
| C03    | CHERLIES THERON | CHER     | NEW YORK   | 120134     |   20 |
| C07    | BOBBY CHACKO    | CHAC     | NEW YORK   | 320300     |   70 |
| C02    | BOB Marley      | BM       | TORONTO    | 100100     |   23 |
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C08    | ASHKO CHARLE    | AK       | USA        | 421044     |   72 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER ORDER BY custID DESc LIMIT 3;
+--------+---------------+----------+------------+------------+------+
| custID | name          | nickname | city       | postalCode | age  |
+--------+---------------+----------+------------+------------+------+
| C10    | Jack Sp       | SPARROW  | NEW JERSEY | 102301     |   35 |
| C09    | TONNY SPECIAL | SPECIE   | GTA        | 418921     |   62 |
| C08    | ASHKO CHARLE  | AK       | USA        | 421044     |   72 |
+--------+---------------+----------+------------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM (SELECT * from customer order by custid desc LIMIT 3) b order by custId asc;
+--------+---------------+----------+------------+------------+------+
| custID | name          | nickname | city       | postalCode | age  |
+--------+---------------+----------+------------+------------+------+
| C08    | ASHKO CHARLE  | AK       | USA        | 421044     |   72 |
| C09    | TONNY SPECIAL | SPECIE   | GTA        | 418921     |   62 |
| C10    | Jack Sp       | SPARROW  | NEW JERSEY | 102301     |   35 |
+--------+---------------+----------+------------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER GROUP BY City;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C04    | DENIAL JACK     | DJ       | BRAZIL     | 341020     |   25 |
| C09    | TONNY SPECIAL   | SPECIE   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | SPARROW  | NEW JERSEY | 102301     |   35 |
| C03    | CHERLIES THERON | CHER     | NEW YORK   | 120134     |   20 |
| C02    | BOB Marley      | BM       | TORONTO    | 100100     |   23 |
| C08    | ASHKO CHARLE    | AK       | USA        | 421044     |   72 |
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
+--------+-----------------+----------+------------+------------+------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT city FROM CUSTOMER GROUP BY City;
+------------+
| city       |
+------------+
| BRAZIL     |
| GTA        |
| NEW JERSEY |
| NEW YORK   |
| TORONTO    |
| USA        |
| WDC        |
+------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT COUNT(city) "Unique Cities" FROM CUSTOMER GROUP BY City;
+---------------+
| Unique Cities |
+---------------+
|             1 |
|             1 |
|             1 |
|             2 |
|             3 |
|             1 |
|             1 |
+---------------+
7 rows in set (0.02 sec)

MariaDB [CSD2204S18]> SELECT COUNT(city) "No. Of Customers" FROM CUSTOMER GROUP BY City;
+------------------+
| No. Of Customers |
+------------------+
|                1 |
|                1 |
|                1 |
|                2 |
|                3 |
|                1 |
|                1 |
+------------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT city, COUNT(city) "No. Of Customers" FROM CUSTOMER GROUP BY City;
+------------+------------------+
| city       | No. Of Customers |
+------------+------------------+
| BRAZIL     |                1 |
| GTA        |                1 |
| NEW JERSEY |                1 |
| NEW YORK   |                2 |
| TORONTO    |                3 |
| USA        |                1 |
| WDC        |                1 |
+------------+------------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT city, COUNT(city)  FROM CUSTOMER;
+------+-------------+
| city | COUNT(city) |
+------+-------------+
| WDC  |          10 |
+------+-------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT city, COUNT(city)  FROM CUSTOMER GROUP BY custid;
+------------+-------------+
| city       | COUNT(city) |
+------------+-------------+
| WDC        |           1 |
| TORONTO    |           1 |
| NEW YORK   |           1 |
| BRAZIL     |           1 |
| TORONTO    |           1 |
| TORONTO    |           1 |
| NEW YORK   |           1 |
| USA        |           1 |
| GTA        |           1 |
| NEW JERSEY |           1 |
+------------+-------------+
10 rows in set (0.02 sec)

MariaDB [CSD2204S18]> SELECT DISTINCT(city) FROM CUSTOMER;
+------------+
| city       |
+------------+
| WDC        |
| TORONTO    |
| NEW YORK   |
| BRAZIL     |
| USA        |
| GTA        |
| NEW JERSEY |
+------------+
7 rows in set (0.02 sec)

MariaDB [CSD2204S18]> SELECT COUNT(DISTINCT(city)) FROM CUSTOMER;
+-----------------------+
| COUNT(DISTINCT(city)) |
+-----------------------+
|                     7 |
+-----------------------+
1 row in set (0.02 sec)

MariaDB [CSD2204S18]> SELECT city, COUNT(city) "No. Of Customers" FROM Customer GROUP By City Having city LIKE 'NEW%';
+------------+------------------+
| city       | No. Of Customers |
+------------+------------------+
| NEW JERSEY |                1 |
| NEW YORK   |                2 |
+------------+------------------+
2 rows in set (0.01 sec)

MariaDB [CSD2204S18]> SELECT city, COUNT(city) "No. Of Customers" FROM Customer GROUP By City Having city LIKE 'NEW%' OR City= 'TORONTO';
+------------+------------------+
| city       | No. Of Customers |
+------------+------------------+
| NEW JERSEY |                1 |
| NEW YORK   |                2 |
| TORONTO    |                3 |
+------------+------------------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT city, COUNT(city) "No. Of Customers" FROM Customer GROUP By City Having COUNT(city)>2;
+---------+------------------+
| city    | No. Of Customers |
+---------+------------------+
| TORONTO |                3 |
+---------+------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE name REGEXP '^D';
+--------+--------------+----------+---------+------------+------+
| custID | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| C04    | DENIAL JACK  | DJ       | BRAZIL  | 341020     |   25 |
| C05    | DONNA NEWMAN | NEW      | TORONTO | 130120     |   50 |
+--------+--------------+----------+---------+------------+------+
2 rows in set (0.06 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE name REGEXP 'n$';
+--------+-----------------+----------+----------+------------+------+
| custID | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | CHERLIES THERON | CHER     | NEW YORK | 120134     |   20 |
| C05    | DONNA NEWMAN    | NEW      | TORONTO  | 130120     |   50 |
+--------+-----------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE name REGEXP '^..a';
Empty set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE name REGEXP '^..e';
+--------+-----------------+----------+----------+------------+------+
| custID | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | CHERLIES THERON | CHER     | NEW YORK | 120134     |   20 |
+--------+-----------------+----------+----------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE postalCODe REGEXP '^[0-9]';
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

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE postalCODe REGEXP '^[A-Z]';
Empty set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE nickname REGEXP '^A*;
    '> ';
Empty set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE nickname REGEXP '^A*';
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

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE nickname REGEXP '^A+';
+--------+--------------+----------+------+------------+------+
| custID | name         | nickname | city | postalCode | age  |
+--------+--------------+----------+------+------------+------+
| C01    | Ashley       | Ash      | WDC  | 321200     |   34 |
| C08    | ASHKO CHARLE | AK       | USA  | 421044     |   72 |
+--------+--------------+----------+------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE nickname REGEXP '^A?';
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

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE nickname REGEXP '^.{4}';
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C03    | CHERLIES THERON | CHER     | NEW YORK   | 120134     |   20 |
| C07    | BOBBY CHACKO    | CHAC     | NEW YORK   | 320300     |   70 |
| C09    | TONNY SPECIAL   | SPECIE   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | SPARROW  | NEW JERSEY | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
4 rows in set (0.01 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE city REGEXP '^.{4}';
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C02    | BOB Marley      | BM       | TORONTO    | 100100     |   23 |
| C03    | CHERLIES THERON | CHER     | NEW YORK   | 120134     |   20 |
| C04    | DENIAL JACK     | DJ       | BRAZIL     | 341020     |   25 |
| C05    | DONNA NEWMAN    | NEW      | TORONTO    | 130120     |   50 |
| C06    | ESTON M.        | M.       | TORONTO    | 201023     |   65 |
| C07    | BOBBY CHACKO    | CHAC     | NEW YORK   | 320300     |   70 |
| C10    | Jack Sp         | SPARROW  | NEW JERSEY | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE city REGEXP '^o{4}';
Empty set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE city REGEXP '^o{3}';
Empty set (0.01 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE nickname rlike '^[A];
    '> ;
    '> ';
Empty set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE nickname rlike '^[A]';
+--------+--------------+----------+------+------------+------+
| custID | name         | nickname | city | postalCode | age  |
+--------+--------------+----------+------+------------+------+
| C01    | Ashley       | Ash      | WDC  | 321200     |   34 |
| C08    | ASHKO CHARLE | AK       | USA  | 421044     |   72 |
+--------+--------------+----------+------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT curdate();
+------------+
| curdate()  |
+------------+
| 2018-05-14 |
+------------+
1 row in set (0.01 sec)

MariaDB [CSD2204S18]> SELECT now();
+---------------------+
| now()               |
+---------------------+
| 2018-05-14 09:16:34 |
+---------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> ALTEr TABLE CUSTOMER ADD COLOMN DOB DATE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'DOB DATE' at line 1
MariaDB [CSD2204S18]> ALTEr TABLE CUSTOMER ADD COLUMN DOB DATE;
Query OK, 0 rows affected (0.39 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc customer;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| DOB        | date        | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * CUSTOMER;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'CUSTOMER' at line 1
MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER;
+--------+-----------------+----------+------------+------------+------+------+
| custID | name            | nickname | city       | postalCode | age  | DOB  |
+--------+-----------------+----------+------------+------------+------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 | NULL |
| C02    | BOB Marley      | BM       | TORONTO    | 100100     |   23 | NULL |
| C03    | CHERLIES THERON | CHER     | NEW YORK   | 120134     |   20 | NULL |
| C04    | DENIAL JACK     | DJ       | BRAZIL     | 341020     |   25 | NULL |
| C05    | DONNA NEWMAN    | NEW      | TORONTO    | 130120     |   50 | NULL |
| C06    | ESTON M.        | M.       | TORONTO    | 201023     |   65 | NULL |
| C07    | BOBBY CHACKO    | CHAC     | NEW YORK   | 320300     |   70 | NULL |
| C08    | ASHKO CHARLE    | AK       | USA        | 421044     |   72 | NULL |
| C09    | TONNY SPECIAL   | SPECIE   | GTA        | 418921     |   62 | NULL |
| C10    | Jack Sp         | SPARROW  | NEW JERSEY | 102301     |   35 | NULL |
+--------+-----------------+----------+------------+------------+------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> UPDATE Customer SET dob = '1996-04-15' WHERE custID = 'C03';
Query OK, 1 row affected (0.09 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> UPDATE Customer SET dob = '1996-11-03' WHERE custID = 'C04';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> UPDATE Customer SET dob = '1996-01-16 WHERE custID = 'C05';
    '> ';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'C05';
'' at line 1
MariaDB [CSD2204S18]> UPDATE Customer SET dob = '1996-04-16' WHERE custID = 'C05';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> UPDATE Customer SET dob = '1996-04-16' WHERE custID = 'C05';
Query OK, 0 rows affected (0.05 sec)
Rows matched: 1  Changed: 0  Warnings: 0

MariaDB [CSD2204S18]> UPDATE Customer SET dob = '1996-08-22' WHERE custID = 'C06';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> UPDATE Customer SET dob = '1996-05-22' WHERE custID = 'C07';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> UPDATE Customer SET dob = '1995-07-12' WHERE custID = 'C08';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> UPDATE Customer SET dob = '1992-12-07' WHERE custID = 'C09';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> UPDATE Customer SET dob = '1985-08-28' WHERE custID = 'C10';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> UPDATE Customer SET dob = '1990-06-20' WHERE custID = 'C01';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> UPDATE Customer SET dob = '1995-11-29' WHERE custID = 'C02';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER;
+--------+-----------------+----------+------------+------------+------+------------+
| custID | name            | nickname | city       | postalCode | age  | DOB        |
+--------+-----------------+----------+------------+------------+------+------------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 | 1990-06-20 |
| C02    | BOB Marley      | BM       | TORONTO    | 100100     |   23 | 1995-11-29 |
| C03    | CHERLIES THERON | CHER     | NEW YORK   | 120134     |   20 | 1996-04-15 |
| C04    | DENIAL JACK     | DJ       | BRAZIL     | 341020     |   25 | 1996-11-03 |
| C05    | DONNA NEWMAN    | NEW      | TORONTO    | 130120     |   50 | 1996-04-16 |
| C06    | ESTON M.        | M.       | TORONTO    | 201023     |   65 | 1996-08-22 |
| C07    | BOBBY CHACKO    | CHAC     | NEW YORK   | 320300     |   70 | 1996-05-22 |
| C08    | ASHKO CHARLE    | AK       | USA        | 421044     |   72 | 1995-07-12 |
| C09    | TONNY SPECIAL   | SPECIE   | GTA        | 418921     |   62 | 1992-12-07 |
| C10    | Jack Sp         | SPARROW  | NEW JERSEY | 102301     |   35 | 1985-08-28 |
+--------+-----------------+----------+------------+------------+------+------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> UPDATE DOB AS '10-01-1991' where custid='C02';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''10-01-1991' where custid='C02'' at line 1
MariaDB [CSD2204S18]> UPDATE CUSTOMER SET DOB = '1991-01-10' where custID='C01';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> SELECT name,dob TIMESSTAMPDIFF(YEAR,ob,CURDATE()) "age" FROM CUSTOMER;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(YEAR,ob,CURDATE()) "age" FROM CUSTOMER' at line 1
MariaDB [CSD2204S18]> SELECT name,dob TIMESSTAMPDIFF(YEAR,dob,CURDATE()) "age" FROM CUSTOMER;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(YEAR,dob,CURDATE()) "age" FROM CUSTOMER' at line 1
MariaDB [CSD2204S18]> SELECT name,dob TIMESTAMPDIFF(YEAR,dob,CURDATE()) "age" FROM CUSTOMER;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(YEAR,dob,CURDATE()) "age" FROM CUSTOMER' at line 1
MariaDB [CSD2204S18]> SELECT name,dob TIMESTAMPDIFF(YEAR,dob,CURDATE()) "age" FROM CUSTOMER;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(YEAR,dob,CURDATE()) "age" FROM CUSTOMER' at line 1
MariaDB [CSD2204S18]> SELECT name,dob, TIMESTAMPDIFF(YEAR,dob,CURDATE()) "age" FROM CUSTOMER;
+-----------------+------------+------+
| name            | dob        | age  |
+-----------------+------------+------+
| Ashley          | 1991-01-10 |   27 |
| BOB Marley      | 1995-11-29 |   22 |
| CHERLIES THERON | 1996-04-15 |   22 |
| DENIAL JACK     | 1996-11-03 |   21 |
| DONNA NEWMAN    | 1996-04-16 |   22 |
| ESTON M.        | 1996-08-22 |   21 |
| BOBBY CHACKO    | 1996-05-22 |   21 |
| ASHKO CHARLE    | 1995-07-12 |   22 |
| TONNY SPECIAL   | 1992-12-07 |   25 |
| Jack Sp         | 1985-08-28 |   32 |
+-----------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,dob, TIMESTAMPDIFF(YEAR,dob,CURDATE()) "age" FROM CUSTOMER HAVING age =22;
+-----------------+------------+------+
| name            | dob        | age  |
+-----------------+------------+------+
| BOB Marley      | 1995-11-29 |   22 |
| CHERLIES THERON | 1996-04-15 |   22 |
| DONNA NEWMAN    | 1996-04-16 |   22 |
| ASHKO CHARLE    | 1995-07-12 |   22 |
+-----------------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,dob, TIMESTAMPDIFF(YEAR,dob,CURDATE()) "age" FROM CUSTOMER WHERE TIMESTAMPDIF(YEAR,dob,CURDATE())=22;
ERROR 1305 (42000): FUNCTION csd2204s18.TIMESTAMPDIF does not exist
MariaDB [CSD2204S18]> SELECT name,dob, TIMESTAMPDIFF(YEAR,dob,CURDATE()) "age" FROM CUSTOMER WHERE TIMESTAMPDIFF(YEAR,dob,CURDATE())=22;
+-----------------+------------+------+
| name            | dob        | age  |
+-----------------+------------+------+
| BOB Marley      | 1995-11-29 |   22 |
| CHERLIES THERON | 1996-04-15 |   22 |
| DONNA NEWMAN    | 1996-04-16 |   22 |
| ASHKO CHARLE    | 1995-07-12 |   22 |
+-----------------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> Exit;
