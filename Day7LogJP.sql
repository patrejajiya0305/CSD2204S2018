MariaDB [(none)]> USE CSD2204s18;
Database changed
MariaDB [CSD2204s18]> SHOW TABLES;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| c1                   |
| c3                   |
| customer             |
| films                |
| manu                 |
| mock_data            |
| movies               |
| orders               |
| persons              |
| products             |
+----------------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204s18]> select * from manu;
+------+-------------------+
| Code | Name              |
+------+-------------------+
|    1 | Sony              |
|    2 | Creative Labs     |
|    3 | Hewlett-Packard   |
|    4 | Iomega            |
|    5 | Fujitsu           |
|    6 | Winchester        |
|    7 | moxDroid Labs Inc |
|    8 | Dell              |
|    9 | Bell Labs         |
+------+-------------------+
9 rows in set (0.00 sec)

MariaDB [CSD2204s18]> select * from products;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
+------+-----------------+-------+--------------+
13 rows in set (0.00 sec)

MariaDB [CSD2204s18]> desc manu;
+-------+-------------+------+-----+---------+----------------+
| Field | Type        | Null | Key | Default | Extra          |
+-------+-------------+------+-----+---------+----------------+
| Code  | int(3)      | NO   | PRI | NULL    | auto_increment |
| Name  | varchar(50) | NO   |     | NULL    |                |
+-------+-------------+------+-----+---------+----------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204s18]> desc products;
+--------------+---------------+------+-----+---------+----------------+
| Field        | Type          | Null | Key | Default | Extra          |
+--------------+---------------+------+-----+---------+----------------+
| Code         | int(3)        | NO   | PRI | NULL    | auto_increment |
| Name         | varchar(255)  | NO   |     | NULL    |                |
| Price        | decimal(10,0) | NO   |     | NULL    |                |
| Manufacturer | int(3)        | YES  | MUL | NULL    |                |
+--------------+---------------+------+-----+---------+----------------+
4 rows in set (0.00 sec)

MariaDB [CSD2204s18]> SELECT PRODUCTS.CODE, PRODUCTS.NAME, MANU.NAME
    -> FROM MANU
    -> IINER JOIN PRODUCTS
    -> ON PRODUCTS.CODE = MANU.CODE;
ERROR 1054 (42S22): Unknown column 'MANU.NAME' in 'field list'
MariaDB [CSD2204s18]> MariaDB [(none)]> USE CSD2204S18;
Database changed
MariaDB [CSD2204S18]> SHOW TABLES;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| c1                   |
| c3                   |
| customer             |
| films                |
| manu                 |
| mock_data            |
| movies               |
| orders               |
| persons              |
| products             |
+----------------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM PRODUCTS;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
+------+-----------------+-------+--------------+
13 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM MANU;
+------+-------------------+
| Code | Name              |
+------+-------------------+
|    1 | Sony              |
|    2 | Creative Labs     |
|    3 | Hewlett-Packard   |
|    4 | Iomega            |
|    5 | Fujitsu           |
|    6 | Winchester        |
|    7 | moxDroid Labs Inc |
|    8 | Dell              |
|    9 | Bell Labs         |
+------+-------------------+
9 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT PRODUCTS.CODE, PRODUCTS.NAME, MANU.NAME
    -> FROM MANU
    -> INNER JOIN PRODUCTS
    -> ON PRODUCTS.CODE = MANU.CODE;
+------+-----------------+-------------------+
| CODE | NAME            | NAME              |
+------+-----------------+-------------------+
|    1 | Hard drive      | Sony              |
|    2 | Memory          | Creative Labs     |
|    3 | ZIP drive       | Hewlett-Packard   |
|    4 | Floppy disk     | Iomega            |
|    5 | Monitor         | Fujitsu           |
|    6 | DVD drive       | Winchester        |
|    7 | CD drive        | moxDroid Labs Inc |
|    8 | Printer         | Dell              |
|    9 | Toner cartridge | Bell Labs         |
+------+-----------------+-------------------+
9 rows in set (0.00 sec)

MariaDB [CSD2204S18]> commit;
Query OK, 0 rows affected (0.00 sec)

MariaDB [CSD2204S18]> SELECT COUNT(*),manufacturer
    -> from products as p
    -> INNER JOIN MANU M
    -> ON m.code =p.manufacturer
    -> GROUP BY MANUFACTURER;
+----------+--------------+
| COUNT(*) | manufacturer |
+----------+--------------+
|        1 |            1 |
|        3 |            2 |
|        2 |            3 |
|        1 |            4 |
|        1 |            5 |
|        2 |            6 |
|        3 |            7 |
+----------+--------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT manufacturer,m.name,COUNT(*) "No. Of Items produced" FROM products as P INNER JOIN m.code=p.manufacturer GROUP BY MANUFACTURER;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '.manufacturer GROUP BY MANUFACTURER' at line 1
MariaDB [CSD2204S18]> SELECT manufacturer,m.name,COUNT(*) "No. Of Items produced" FROM products as m INNER JOIN m.code=p.manufacturer GROUP BY MANUFACTURER;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '.manufacturer GROUP BY MANUFACTURER' at line 1
MariaDB [CSD2204S18]> SELECT manufacturer,m.name,COUNT(*) "No. Of Items produced" FROM products as P INNER JOIN manu m on  m.code=p.manufacturer GROUP BY MANUFACTURER;
+--------------+-------------------+-----------------------+
| manufacturer | name              | No. Of Items produced |
+--------------+-------------------+-----------------------+
|            1 | Sony              |                     1 |
|            2 | Creative Labs     |                     3 |
|            3 | Hewlett-Packard   |                     2 |
|            4 | Iomega            |                     1 |
|            5 | Fujitsu           |                     1 |
|            6 | Winchester        |                     2 |
|            7 | moxDroid Labs Inc |                     3 |
+--------------+-------------------+-----------------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT manufacturer,m.name,COUNT(*) "No. Of Items produced" FROM products as P INNER JOIN manu m on  m.code<4 GROUP BY MANUFACTURER;
+--------------+------+-----------------------+
| manufacturer | name | No. Of Items produced |
+--------------+------+-----------------------+
|            1 | Sony |                     3 |
|            2 | Sony |                     9 |
|            3 | Sony |                     6 |
|            4 | Sony |                     3 |
|            5 | Sony |                     3 |
|            6 | Sony |                     6 |
|            7 | Sony |                     9 |
+--------------+------+-----------------------+
7 rows in set (0.01 sec)

MariaDB [CSD2204S18]> SELECT manufacturer,m.name,COUNT(*) "No. Of Items produced" FROM products as m INNER JOIN m.code=p.manufacturer GROUP BY MANUFACTURER HAVING COUNt(*)>2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '.manufacturer GROUP BY MANUFACTURER HAVING COUNt(*)>2' at line 1
MariaDB [CSD2204S18]> SELECT COUNT (*),manufacturer
    -> from products as p
    -> INNER JOIN manu m
    -> ON m.code=p.manufacturer where m.code IN(2,3)
    -> GROUP BY MANUFACTURER;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '*),manufacturer
from products as p
INNER JOIN manu m
ON m.code=p.manufacturer wh' at line 1
MariaDB [CSD2204S18]> SELECT COUNT (*),manufacturer
    -> from products as p
    -> INNER JOIN manu m
    -> ON m.code =p.manufacturer
    -> GROUP BY MANUFACTURER HAVING COUNT(*)>2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '*),manufacturer
from products as p
INNER JOIN manu m
ON m.code =p.manufacturer
G' at line 1
MariaDB [CSD2204S18]> SELECT COUNT(*),manufacturer
    -> from products as p
    -> INNER JOIN MANU M
    -> ON m.code =p.manufacturer
    -> GROUP BY MANUFACTURER HAVING COUNT(*)>2;
+----------+--------------+
| COUNT(*) | manufacturer |
+----------+--------------+
|        3 |            2 |
|        3 |            7 |
+----------+--------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT COUNT(*),manufacturer
    -> from products as p
    -> INNER JOIN MANU M
    -> ON m.code =p.manufacturer
    -> where m.code IN (2,3)
    -> GROUP BY MANUFACTURER;
+----------+--------------+
| COUNT(*) | manufacturer |
+----------+--------------+
|        3 |            2 |
|        2 |            3 |
+----------+--------------+
2 rows in set (0.01 sec)

MariaDB [CSD2204S18]> SELECT PRODUCTS.CODE, PRODUCTS.NAME, MANU.NAME FROM MANU LEFT JOIN PRODUCTS ON PRODUCT.CODE = MANU.CODE;
ERROR 1054 (42S22): Unknown column 'PRODUCT.CODE' in 'on clause'
MariaDB [CSD2204S18]> SELECT PRODUCTS.CODE, PRODUCTS.NAME, MANU.NAME FROM MANU LEFT JOIN PRODUCTS ON PRODUCTS.CODE = MANU.CODE;
+------+-----------------+-------------------+
| CODE | NAME            | NAME              |
+------+-----------------+-------------------+
|    1 | Hard drive      | Sony              |
|    2 | Memory          | Creative Labs     |
|    3 | ZIP drive       | Hewlett-Packard   |
|    4 | Floppy disk     | Iomega            |
|    5 | Monitor         | Fujitsu           |
|    6 | DVD drive       | Winchester        |
|    7 | CD drive        | moxDroid Labs Inc |
|    8 | Printer         | Dell              |
|    9 | Toner cartridge | Bell Labs         |
+------+-----------------+-------------------+
9 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT PRODUCTS.CODE, PRODUCTS.NAME, MANU.NAME FROM PRODUCTS LEFT JOIN MANU ON PRODUCTS.CODE = MANU.CODE;
+------+-----------------+-------------------+
| CODE | NAME            | NAME              |
+------+-----------------+-------------------+
|    1 | Hard drive      | Sony              |
|    2 | Memory          | Creative Labs     |
|    3 | ZIP drive       | Hewlett-Packard   |
|    4 | Floppy disk     | Iomega            |
|    5 | Monitor         | Fujitsu           |
|    6 | DVD drive       | Winchester        |
|    7 | CD drive        | moxDroid Labs Inc |
|    8 | Printer         | Dell              |
|    9 | Toner cartridge | Bell Labs         |
|   10 | DVD burner      | NULL              |
|   11 | Printer         | NULL              |
|   12 | Toner cartridge | NULL              |
|   13 | DVD burner      | NULL              |
+------+-----------------+-------------------+
13 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT PRODUCTS.CODE, PRODUCTS.NAME, MANU.NAME FROM PRODUCTS LEFT JOIN MANU ON PRODUCTS.MANUFACTURER = MANU.CODE;
+------+-----------------+-------------------+
| CODE | NAME            | NAME              |
+------+-----------------+-------------------+
|    1 | Hard drive      | Fujitsu           |
|    2 | Memory          | Winchester        |
|    3 | ZIP drive       | Iomega            |
|    4 | Floppy disk     | Winchester        |
|    5 | Monitor         | Sony              |
|    6 | DVD drive       | Creative Labs     |
|    7 | CD drive        | Creative Labs     |
|    8 | Printer         | Hewlett-Packard   |
|    9 | Toner cartridge | Hewlett-Packard   |
|   10 | DVD burner      | Creative Labs     |
|   11 | Printer         | moxDroid Labs Inc |
|   12 | Toner cartridge | moxDroid Labs Inc |
|   13 | DVD burner      | moxDroid Labs Inc |
+------+-----------------+-------------------+
13 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from products;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
+------+-----------------+-------+--------------+
13 rows in set (0.02 sec)

MariaDB [CSD2204S18]> SELECT PRODUCTS.CODE, PRODUCTS.NAME, MANU.NAME FROM PRODUCTS RIGHT JOIN MANU ON PRODUCTS.CODE = MANU.CODE;
+------+-----------------+-------------------+
| CODE | NAME            | NAME              |
+------+-----------------+-------------------+
|    1 | Hard drive      | Sony              |
|    2 | Memory          | Creative Labs     |
|    3 | ZIP drive       | Hewlett-Packard   |
|    4 | Floppy disk     | Iomega            |
|    5 | Monitor         | Fujitsu           |
|    6 | DVD drive       | Winchester        |
|    7 | CD drive        | moxDroid Labs Inc |
|    8 | Printer         | Dell              |
|    9 | Toner cartridge | Bell Labs         |
+------+-----------------+-------------------+
9 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT PRODUCTS.CODE, PRODUCTS.NAME, MANU.NAME "Manufacturer name" FROM MANU RIGHT JOIN products ON PRODUCTS.CODE = MANU.CODE;
+------+-----------------+-------------------+
| CODE | NAME            | Manufacturer name |
+------+-----------------+-------------------+
|    1 | Hard drive      | Sony              |
|    2 | Memory          | Creative Labs     |
|    3 | ZIP drive       | Hewlett-Packard   |
|    4 | Floppy disk     | Iomega            |
|    5 | Monitor         | Fujitsu           |
|    6 | DVD drive       | Winchester        |
|    7 | CD drive        | moxDroid Labs Inc |
|    8 | Printer         | Dell              |
|    9 | Toner cartridge | Bell Labs         |
|   10 | DVD burner      | NULL              |
|   11 | Printer         | NULL              |
|   12 | Toner cartridge | NULL              |
|   13 | DVD burner      | NULL              |
+------+-----------------+-------------------+
13 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT PRODUCTS.CODE, PRODUCTS.NAME, MANU.NAME  FROM PRODUCTS LEFT JOIN MANU ON PRODUCTS.CODE = MANU.CODE UNION SELECT PRODUCTS.CODE,PRODUCT.NAME,MANU.NAME FROM PRODUCTS RIGHT JOIN MANU ON PRODUCTS.CODE=MANU.CODE;
ERROR 1054 (42S22): Unknown column 'PRODUCT.NAME' in 'field list'
MariaDB [CSD2204S18]> SELECT PRODUCTS.CODE, PRODUCTS.NAME, MANU.NAME  FROM PRODUCTS LEFT JOIN MANU ON PRODUCTS.CODE = MANU.CODE UNION SELECT PRODUCTS.CODE,PRODUCTS.NAME,MANU.NAME FROM PRODUCTS RIGHT JOIN MANU ON PRODUCTS.CODE=MANU.CODE;
+------+-----------------+-------------------+
| CODE | NAME            | NAME              |
+------+-----------------+-------------------+
|    1 | Hard drive      | Sony              |
|    2 | Memory          | Creative Labs     |
|    3 | ZIP drive       | Hewlett-Packard   |
|    4 | Floppy disk     | Iomega            |
|    5 | Monitor         | Fujitsu           |
|    6 | DVD drive       | Winchester        |
|    7 | CD drive        | moxDroid Labs Inc |
|    8 | Printer         | Dell              |
|    9 | Toner cartridge | Bell Labs         |
|   10 | DVD burner      | NULL              |
|   11 | Printer         | NULL              |
|   12 | Toner cartridge | NULL              |
|   13 | DVD burner      | NULL              |
+------+-----------------+-------------------+
13 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT P1.CODE,P2.NAME FROM Products P1 , Products P2 WHERE P1.Code <> P2.code;
+------+-----------------+
| CODE | NAME            |
+------+-----------------+
|    5 | Hard drive      |
|    6 | Hard drive      |
|    7 | Hard drive      |
|   10 | Hard drive      |
|    8 | Hard drive      |
|    9 | Hard drive      |
|    3 | Hard drive      |
|    2 | Hard drive      |
|    4 | Hard drive      |
|   11 | Hard drive      |
|   12 | Hard drive      |
|   13 | Hard drive      |
|    5 | Memory          |
|    6 | Memory          |
|    7 | Memory          |
|   10 | Memory          |
|    8 | Memory          |
|    9 | Memory          |
|    3 | Memory          |
|    1 | Memory          |
|    4 | Memory          |
|   11 | Memory          |
|   12 | Memory          |
|   13 | Memory          |
|    5 | ZIP drive       |
|    6 | ZIP drive       |
|    7 | ZIP drive       |
|   10 | ZIP drive       |
|    8 | ZIP drive       |
|    9 | ZIP drive       |
|    1 | ZIP drive       |
|    2 | ZIP drive       |
|    4 | ZIP drive       |
|   11 | ZIP drive       |
|   12 | ZIP drive       |
|   13 | ZIP drive       |
|    5 | Floppy disk     |
|    6 | Floppy disk     |
|    7 | Floppy disk     |
|   10 | Floppy disk     |
|    8 | Floppy disk     |
|    9 | Floppy disk     |
|    3 | Floppy disk     |
|    1 | Floppy disk     |
|    2 | Floppy disk     |
|   11 | Floppy disk     |
|   12 | Floppy disk     |
|   13 | Floppy disk     |
|    6 | Monitor         |
|    7 | Monitor         |
|   10 | Monitor         |
|    8 | Monitor         |
|    9 | Monitor         |
|    3 | Monitor         |
|    1 | Monitor         |
|    2 | Monitor         |
|    4 | Monitor         |
|   11 | Monitor         |
|   12 | Monitor         |
|   13 | Monitor         |
|    5 | DVD drive       |
|    7 | DVD drive       |
|   10 | DVD drive       |
|    8 | DVD drive       |
|    9 | DVD drive       |
|    3 | DVD drive       |
|    1 | DVD drive       |
|    2 | DVD drive       |
|    4 | DVD drive       |
|   11 | DVD drive       |
|   12 | DVD drive       |
|   13 | DVD drive       |
|    5 | CD drive        |
|    6 | CD drive        |
|   10 | CD drive        |
|    8 | CD drive        |
|    9 | CD drive        |
|    3 | CD drive        |
|    1 | CD drive        |
|    2 | CD drive        |
|    4 | CD drive        |
|   11 | CD drive        |
|   12 | CD drive        |
|   13 | CD drive        |
|    5 | Printer         |
|    6 | Printer         |
|    7 | Printer         |
|   10 | Printer         |
|    9 | Printer         |
|    3 | Printer         |
|    1 | Printer         |
|    2 | Printer         |
|    4 | Printer         |
|   11 | Printer         |
|   12 | Printer         |
|   13 | Printer         |
|    5 | Toner cartridge |
|    6 | Toner cartridge |
|    7 | Toner cartridge |
|   10 | Toner cartridge |
|    8 | Toner cartridge |
|    3 | Toner cartridge |
|    1 | Toner cartridge |
|    2 | Toner cartridge |
|    4 | Toner cartridge |
|   11 | Toner cartridge |
|   12 | Toner cartridge |
|   13 | Toner cartridge |
|    5 | DVD burner      |
|    6 | DVD burner      |
|    7 | DVD burner      |
|    8 | DVD burner      |
|    9 | DVD burner      |
|    3 | DVD burner      |
|    1 | DVD burner      |
|    2 | DVD burner      |
|    4 | DVD burner      |
|   11 | DVD burner      |
|   12 | DVD burner      |
|   13 | DVD burner      |
|    5 | Printer         |
|    6 | Printer         |
|    7 | Printer         |
|   10 | Printer         |
|    8 | Printer         |
|    9 | Printer         |
|    3 | Printer         |
|    1 | Printer         |
|    2 | Printer         |
|    4 | Printer         |
|   12 | Printer         |
|   13 | Printer         |
|    5 | Toner cartridge |
|    6 | Toner cartridge |
|    7 | Toner cartridge |
|   10 | Toner cartridge |
|    8 | Toner cartridge |
|    9 | Toner cartridge |
|    3 | Toner cartridge |
|    1 | Toner cartridge |
|    2 | Toner cartridge |
|    4 | Toner cartridge |
|   11 | Toner cartridge |
|   13 | Toner cartridge |
|    5 | DVD burner      |
|    6 | DVD burner      |
|    7 | DVD burner      |
|   10 | DVD burner      |
|    8 | DVD burner      |
|    9 | DVD burner      |
|    3 | DVD burner      |
|    1 | DVD burner      |
|    2 | DVD burner      |
|    4 | DVD burner      |
|   11 | DVD burner      |
|   12 | DVD burner      |
+------+-----------------+
156 rows in set (0.00 sec)

MariaDB [CSD2204S18]> exit;
