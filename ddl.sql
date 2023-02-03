
-- Create Stores table
CREATE TABLE IF NOT EXISTS stores (
  store_id INT(5) NOT NULL AUTO_INCREMENT,
  store_name VARCHAR(50) NOT NULL UNIQUE KEY,
  city VARCHAR(50) NOT NULL,
  PRIMARY KEY (store_id)
);

-- Create Bikes table
CREATE TABLE IF NOT EXISTS bikes (
  bike_id INT(20) NOT NULL AUTO_INCREMENT,
  bike_name VARCHAR(50) NOT NULL,
  store_id INT(5) NOT NULL,
  `usage` ENUM('urban', 'mountain', 'racing') NOT NULL,
  brand VARCHAR(30) NOT NULL,
  PRIMARY KEY (bike_id),
  FOREIGN KEY (store_id) REFERENCES stores(store_id)
);


-- Create Orders table
CREATE TABLE IF NOT EXISTS orders (
  order_id INT(10) NOT NULL AUTO_INCREMENT,
  bike_id INT(20) NOT NULL,
  order_date DATE NOT NULL,
  PRIMARY KEY (order_id),
  FOREIGN KEY (bike_id) REFERENCES bikes(bike_id)
);

-- Create Shipments table
CREATE TABLE IF NOT EXISTS shipments (
  shipment_id INT(10) NOT NULL AUTO_INCREMENT,
  order_id INT(10) NOT NULL,
  shipment_date DATE NOT NULL,
  PRIMARY KEY (shipment_id),
  FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

   -- IF NOT EXISTS was used to avoid creating the table if it already exists.
   -- CHECK was used in the "usage" column of the "bikes" table to ensure that only allowed values ('urban', 'mountain', 'racing') are inserted.
   -- UNIQUE KEY was used in the "store_name" column of the "stores" table to ensure that the same shop name is not repeated.
   -- AUTO_INCREMENT was used in the primary key columns so that the value of the primary key is automatically incremented when a new row is inserted.
   
   
