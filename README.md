# SQL-Scripts

For this assignment, we had to create different SQL scripts from a relational diagram that we created in a previous assignment: 

![relational diagram](img/Diagram.PNG)

### ddl.sql

The first file is `ddl.sql`. In this file we had to create the tables that we can see in the diagram.   

We had to use the keywords:

- `IF NOT EXISTS`
- `PRIMARY KEY`
- `FOREIGN KEY`
- `NOT NULL`
- `CHECK`
- `UNIQUE KEY`
- `AUTO_INCREMENT`

The keyword `CHECK` gave us problems, as MySQL and MariaDB use `ENUM`.

### dml.sql

In the next file we had to put data into the database. The only problem we had here was that the `usage` column in the `bikes` table was a reserved word and we had to put it between "``".

### queries.sql

As the name suggests, we simply had to make a series of queries on our database.


### delete.sql

In this file we must include the scripts to delete the data inside the tables.


### drop.sql

In this file we have the scripts to delete the tables. Something very interesting about this script is that we found a way to delete tables with foreign keys without having to touch anything in the table. `SET FOREIGN_KEY_CHECKS = 0;` it is important that after deleting the tables we want, we activate the check again. `SET FOREIGN_KEY_CHECKS = 1;`

#### 1. We create the database script_database.
![create database](img/create_database.png)

#### 2. Now we create the table stores.
![create stores table](img/create_tabke_stores.png)

#### 3. Next step is to insert data on the table stores.
![insert data into stores](img/insert_data_stores.png)

#### 4. Now we create the table bikes.
![create bikes table](img/create_bikes.png)

#### 5. Next step is to insert data on the table bikes.
![insert data into bikes](img/insert_data_bikes.png)

#### 6. Here we are gonna combain the creation of the table orders and to insert data on it.
![Create and insert data into orders](img/create_insert_orders.png)

#### 7. Here we are gonna combain the creation of the table shipments and to insert data on it.
![Create and insert data into shipments](img/create_insert_shipmentts.png)

#### 8. We are gonna delete all the data from the tables, and then we are going to check if it works
![delete all the data](img/delete_data.png)

#### 9. We are gonna delete all the tables. For it, first we have to get rid of the FOREIGN-KEYS
![delete all the tables](img/delete_tables.png)

#### Queries:

These are the results of the queries:
![query 1](img/queries1.png)
![query 2](img/queries2.png)
![query 3](img/queries3.png)


