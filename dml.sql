-- Crear tabla Bikes
CREATE TABLE IF NOT EXISTS bikes (
  bike_id INT(20) NOT NULL AUTO_INCREMENT,
  bike_name VARCHAR(50) NOT NULL,
  store_id INT(5) NOT NULL,
  usage VARCHAR(30) NOT NULL CHECK (usage IN ('urban', 'mountain', 'racing')),
  brand VARCHAR(30) NOT NULL,
  PRIMARY KEY (bike_id),
  FOREIGN KEY (store_id) REFERENCES stores(store_id)
);

-- Crear tabla Stores
CREATE TABLE IF NOT EXISTS stores (
  store_id INT(5) NOT NULL AUTO_INCREMENT,
  store_name VARCHAR(50) NOT NULL UNIQUE KEY,
  city VARCHAR(50) NOT NULL,
  PRIMARY KEY (store_id)
);

-- Crear tabla Orders
CREATE TABLE IF NOT EXISTS orders (
  order_id INT(10) NOT NULL AUTO_INCREMENT,
  bike_id INT(20) NOT NULL,
  order_date DATE NOT NULL,
  PRIMARY KEY (order_id),
  FOREIGN KEY (bike_id) REFERENCES bikes(bike_id)
);

-- Crear tabla Shipments
CREATE TABLE IF NOT EXISTS shipments (
  shipment_id INT(10) NOT NULL AUTO_INCREMENT,
  order_id INT(10) NOT NULL,
  shipment_date DATE NOT NULL,
  PRIMARY KEY (shipment_id),
  FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

    Se utilizó IF NOT EXISTS para evitar crear la tabla si ya existe.
    La columna "usage" de la tabla "bikes" se utilizó CHECK para asegurar que solo se inserten valores permitidos ('urban', 'mountain', 'racing')
    Se utilizó UNIQUE KEY en la columna "store_name" de la tabla "stores" para asegurar que no se repita el mismo nombre de tienda.
    Se utilizó AUTO_INCREMENT en las columnas de las clave primarias para que el valor de las mismas sea incrementado automáticamente al insertar una nueva fila.

-- Insertar datos en tabla Stores
INSERT INTO stores (store_name, city) VALUES
('Bike Shop 1', 'New York'),
('Bike Shop 2', 'Los Angeles'),
('Bike Shop 3', 'Chicago');

-- Insertar datos en tabla Bikes
INSERT INTO bikes (bike_name, store_id, usage, brand) VALUES
('Mountain Bike 1', 1, 'mountain', 'Brand A'),
('Mountain Bike 2', 1, 'mountain', 'Brand B'),
('Racing Bike 1', 2, 'racing', 'Brand C'),
('Urban Bike 1', 3, 'urban', 'Brand D'),
('Urban Bike 2', 3, 'urban', 'Brand E');

-- Insertar datos en tabla Orders
INSERT INTO orders (bike_id, order_date) VALUES
(1, '2022-01-01'),
(2, '2022-02-01'),
(3, '2022-03-01'),
(4, '2022-04-01'),
(5, '2022-05-01');

-- Insertar datos en tabla Shipments
INSERT INTO shipments (order_id, shipment_date) VALUES
(1, '2022-01-15'),
(2, '2022-02-15'),
(3, '2022-03-15'),
(4, '2022-04-15'),
(5, '2022-05-15');
